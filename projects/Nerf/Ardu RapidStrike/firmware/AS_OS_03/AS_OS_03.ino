/*

Memory optimization:
https://cdn-learn.adafruit.com/downloads/pdf/memories-of-an-arduino.pdf


TODO:
check sleep current
idle chirp in leue of sleep?
current shot count to EEPROM?

*/

#include <avr/sleep.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <EEPROM.h>

#define OLED_RESET -1
Adafruit_SSD1306 display(OLED_RESET);

float version = 0.3;

uint8_t triggerSwitch = 8;
uint8_t revSwitch = 3;
uint8_t DART_IR = A1;
uint8_t pusherSwitch = 2;
uint8_t buttonPin = A0;
uint8_t SELECT_pin = A2;
uint8_t SPKR = 4;
uint8_t CLIP = 7;
uint8_t ledPin = 13;
uint8_t DSP_PWR = A2;

uint8_t clipU3pin = 10;
uint8_t clipU4pin = 11;
uint8_t clipU6pin = 12;

uint8_t voltagePin = A3;
float vcc = 5.0;
float vd_factor = 10.7;
float voltage = 0;

uint8_t flywheelPWM = 9;
uint8_t pusherIn1 = 5; 
uint8_t pusherIn2 = 6;

long nextDisplayTime = 0;   // updates display

bool revFlag = false;       // true if rev switch pulled
bool triggerFlag = false;   // true if trigger pulled
int irc = 0;                // debug interrrupt counter

volatile long lastPusherTime = 0;
volatile long curPusherTime = 0;
volatile bool lastPusherState = false;
volatile long last_rev_ms = 0;

volatile int shot_count = 0;
volatile long dart_time1_us = 0;
volatile long dart_time2_us = 0;
volatile bool dart_flag = false;
float dart_speed_fps = 0;
float dartLength_mm = 72;
long dart_interval_us = 0;
bool sleep_flag = false;
long idle_time_ms = 10000;
uint8_t clip_capacity = 0;
uint8_t clip_id = 0;

volatile bool pushing_flag = false;  // set by trigger pull, true while cycling
volatile uint8_t cycle_count = 0;        // number of pusher cycles
volatile uint8_t cycle_limit = 1;        // number of pusher cycles to stop at
uint8_t pusher_full_pwm = 255;
uint8_t pusher_coast_pwm = 100;
long stroke_time_ms = 100;
volatile long push_till_ms = 0;      // time to apply breaking until

int fire_delay_ms = 250;            // delay time from trigger pull till pushing
long delay_till_ms = 0;
int flywheel_full_pwm = 255;
int flywheel_coast_pwm = 125;

bool debug_flag = false;
volatile word total_count = 0;


void pciSetup(byte pin){
    // https://playground.arduino.cc/Main/PinChangeInterrupt/
    *digitalPinToPCMSK(pin) |= bit (digitalPinToPCMSKbit(pin));  // enable pin
    PCIFR  |= bit (digitalPinToPCICRbit(pin)); // clear any outstanding interrupt
    PCICR  |= bit (digitalPinToPCICRbit(pin)); // enable interrupt for the group
}


void setup() {                  
  Serial.begin(9600);
  pinMode(triggerSwitch, INPUT);       // Most inputs have external pull-ups or use INPUT_PULLUP
  pinMode(revSwitch, INPUT);
  pinMode(pusherSwitch, INPUT);
  pinMode(voltagePin, INPUT);
  pinMode(buttonPin, INPUT);
  pinMode(DART_IR, INPUT);
  pinMode(CLIP, INPUT_PULLUP);

  pinMode(clipU3pin, INPUT);          // Hall sensors have internal pullups
  pinMode(clipU4pin, INPUT);
  pinMode(clipU6pin, INPUT);

  pinMode(flywheelPWM, OUTPUT);
  pinMode(pusherIn1, OUTPUT);
  pinMode(pusherIn2, OUTPUT);
  pinMode(SPKR, OUTPUT);
  pinMode(ledPin, OUTPUT);
  pinMode(DSP_PWR, OUTPUT); 
  digitalWrite(DSP_PWR, HIGH);
  delay(50);
  
  // Interrupt routines
  pciSetup(triggerSwitch);
  pciSetup(DART_IR);
  attachInterrupt(digitalPinToInterrupt(revSwitch), rev_interrupt, CHANGE);
  attachInterrupt(digitalPinToInterrupt(pusherSwitch), pusher_interrupt, FALLING);
  
  // startup tone
  digitalWrite(ledPin, HIGH);
  tone(SPKR, 400, 100);
  delay(100);
  tone(SPKR, 800, 100);
  delay(100);
  digitalWrite(ledPin, LOW);

  // check if button pressed to enter debug mode
  if (!digitalRead(buttonPin)){
    tone(SPKR, 400, 100);
    while(!digitalRead(buttonPin)){delay(10);}
    debug_flag = true;
  }
  
  // get counter from EEPROM
  total_count = readEEPROM();
  if (total_count == 65535){
    total_count = 0;
    writeEEPROM(total_count);
  }

  // splash screen
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3D (for the 128x64)
  display.setTextSize(1);
  display.setTextColor(WHITE);
  display.setCursor(0, 48);
  display.println(F("Shots"));
  if(total_count < 10000){display.print(F("0"));}
  if(total_count < 1000){display.print(F("0"));}
  if(total_count < 100){display.print(F("0"));}
  if(total_count < 10){display.print(F("0"));}
  display.print(total_count);
  display.setCursor(68, 56);
  display.print(F("Rev "));
  display.print(version, 1);
  display.display();  
  delay(2000);  // splash screen

  // retract pusher if out of position
  if(digitalRead(pusherSwitch)){
    while(digitalRead(pusherSwitch)){
      analogWrite(pusherIn2, 100);
    }
    analogWrite(pusherIn2, 0);
  }
}


word readEEPROM(){
  //http://arduino.cc/en/Reference/WordCast
  uint8_t msb = EEPROM.read(0);
  uint8_t lsb = EEPROM.read(1);
  return(word(msb, lsb));
}


void writeEEPROM(word val){
  EEPROM.write(0, highByte(val));
  EEPROM.write(1, lowByte(val));
}


void sleepNow(void){
  display.clearDisplay();
  display.display();  
  delay(100);

  set_sleep_mode(SLEEP_MODE_PWR_DOWN);   // Choose our preferred sleep mode:
  sleep_enable();                        // Set sleep enable (SE) bit:

  // Put the device to sleep:
  digitalWrite(ledPin, LOW); 
  digitalWrite(DSP_PWR, LOW);
  delay(100);
  sleep_mode();

  // Upon waking up, sketch continues from this point.
  sleep_disable();
  digitalWrite(ledPin, HIGH); // turn LED on to indicate awake
  digitalWrite(DSP_PWR, HIGH);
  delay(100);
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3D (for the 128x64)  
  sleep_flag = false;
  last_rev_ms = millis();
}


void showDisplay(){
  uint8_t x=0;
  uint8_t y=0;

  display.clearDisplay();
  display.setTextSize(2);
  display.setTextColor(WHITE);
  pews();  // draws bullet shapes

  graph(6.5, 8.4, voltage); // min, max, value
  display.setCursor(5, 18);
  if(dart_speed_fps < 10){
    display.print(F(" "));
  }
  if(dart_speed_fps < 100){
    display.print(dart_speed_fps, 1);
  }
  else {
    display.setCursor(0, 18);
    display.print(dart_speed_fps, 1);
  }
  display.setCursor(31, 33);
  display.setTextSize(1);
  display.println(F(" fps"));
    
  display.setCursor(56,18);
  display.setTextSize(6);

  if(shot_count<10){
    display.print(F(" "));
  }
  display.print(shot_count);
  display.display();
}


void showDisplayDebug(){
  uint8_t x=0;
  uint8_t y=0;
  display.clearDisplay();
  display.setTextSize(1);
  display.setTextColor(WHITE);
  display.setCursor(0, 0);

  display.print(voltage, 2);
  display.print(F(" v "));
  display.setCursor(56, 0);
  display.print(dart_speed_fps, 1);
  display.println(F(" fps"));
  
  display.println("");
  
  display.print(F("trig:"));
  display.print(digitalRead(triggerSwitch));

  display.print(F("     IR:"));
  display.println(analogRead(DART_IR));
  
  display.print(F(" rev:"));
  display.print(digitalRead(revSwitch));

  display.print(F("    MAG:"));
  display.print(digitalRead(clipU6pin));
  display.print(digitalRead(clipU4pin));  
  display.println(digitalRead(clipU3pin));
    
  display.print(F("push:"));  
  display.print(digitalRead(pusherSwitch));

  display.print(F(" clipID:"));
  display.println(clip_id);
  
  display.print(F("butn:"));  
  display.print(digitalRead(buttonPin));

  display.print(F("    cap:"));
  display.println(clip_capacity);

  display.print(F(" CLP:"));
  display.print(digitalRead(CLIP));
  
  display.print(F("  SHOTS:"));
  display.println(shot_count);

  display.print(F(" IRC:"));
  display.print(irc);
      
  display.print(F("  total:"));
  display.println(total_count);

  display.display();
}


void showDisplayDebug2(){
  uint8_t x=0;
  uint8_t y=0;
  display.clearDisplay();
  display.setTextSize(1);
  display.setTextColor(WHITE);
  display.setCursor(0, 0);

  display.print(voltage, 2);
  display.print(F(" v "));
  display.setCursor(56, 0);
  display.print(dart_speed_fps, 1);
  display.println(F(" fps"));
  
  display.println("");
  
  display.print(F("trig:"));
  display.print(digitalRead(triggerSwitch));
  display.print(F("   IRC:"));
  display.println(irc);    

  display.print(F(" rev:"));
  display.println(digitalRead(revSwitch));
  
  display.print(F("push:"));  
  display.println(digitalRead(pusherSwitch));

  display.print(F("pushing_flag:"));  
  display.println(pushing_flag);

  display.display();
}


void graph(float minimum, float maximum, float value){
  float cur = value - minimum;
  float gage = cur / (maximum - minimum) * 8;
  //Serial.println(gage);
  for (uint8_t xx=0; xx<8; xx++){
    if(xx < gage){
      display.fillRect(xx * 16, 0, 15, 15, WHITE);
    }
    else {
      display.drawRect(xx * 16, 0, 15, 15, WHITE);
    }
  }
  if(value < minimum && !((millis()/1000) % 2)){
    display.fillRect(0, 0, 15, 15, WHITE);
  }
}


void pews(){ // graphic display of firing mode
  uint8_t y = 30;
  if(cycle_limit <4){
    for (uint8_t pew=0; pew<3; pew++){
      if(pew < cycle_limit){
        display.fillRoundRect(pew * 12, 36, 10, y, 4, WHITE);
      }
      else {
        display.drawRoundRect(pew * 12, 36, 10, y, 4, WHITE);
      }
    }
  }
  else{ // something different for auto
    for (uint8_t pew=0; pew<6; pew++){
        display.fillRoundRect(pew * 12 - pew, 36 + pew * 2, 10 - pew, y - pew * 2, 4, WHITE);
    }    
  }
}


ISR (PCINT0_vect){// handle pin change interrupt for D8 to D13
  if (!digitalRead(triggerSwitch) && !pushing_flag) { // LOW if switch pressed
    pushing_flag = true;
    cycle_count = 0;
    //analogWrite(pusherIn1, pusher_full_pwm);
    delay_till_ms = millis() + fire_delay_ms;
    push_till_ms = millis() + stroke_time_ms + fire_delay_ms;;
  }
  if (digitalRead(triggerSwitch) && cycle_limit == 4){
    pushing_flag = false;
  }
}


ISR (PCINT1_vect) {  // handle pin change interrupt for A0 to A5 here
  if (digitalRead(DART_IR)) { // HIGH if dart present
    dart_time1_us = micros(); 
  }
  else {                        // LOW when dart exits
    dart_time2_us = micros();
    dart_flag = true;     
  }
}


void rev_interrupt(){
  //irc += 1;
  last_rev_ms = millis();
  if (!digitalRead(revSwitch)) { // LOW if rev switch pressed
    revFlag = true;
  }
  else{
    revFlag = false;
  }
} 


void pusher_interrupt(){
  // about 5 strokes per second, or once every 200 ms.
  irc += 1;
  cycle_count += 1;
  if(pushing_flag){
    if (cycle_count >= cycle_limit && cycle_limit != 4){
      pushing_flag = false;
      digitalWrite(pusherIn1, LOW);
      digitalWrite(pusherIn2, LOW);
    }
    else{
      push_till_ms = millis() + stroke_time_ms;
      digitalWrite(ledPin, HIGH);
      analogWrite(pusherIn1, pusher_full_pwm);
    }
  }
  else{
    digitalWrite(pusherIn1, LOW);
    digitalWrite(pusherIn2, LOW);    
  }
}


// Memory debug stuff
#ifdef __arm__
// should use uinstd.h to define sbrk but Due causes a conflict
extern "C" char* sbrk(int incr);
#else // __ARM__
extern char *__brkval;
#endif // __arm__
int freeMemory() {
  char top;
  #ifdef __arm__
  return &top - reinterpret_cast<char*>(sbrk(0));
  #elif defined(CORE_TEENSY) || (ARDUINO > 103 && ARDUINO != 151)
  return &top - __brkval;
  #else // __arm__
  return __brkval ? &top - __brkval : &top - __malloc_heap_start;
  #endif // __arm__
}


void loop() {
  // check clip
  if (digitalRead(CLIP)){
    if (clip_capacity == 0){
      clip_id = !digitalRead(clipU6pin) + !digitalRead(clipU4pin) * 2 + !digitalRead(clipU3pin) * 4;
      if (clip_id == 1) { clip_capacity = 6; }   // 0 0 1
      if (clip_id == 2) { clip_capacity = 10; }  // 0 1 0
      if (clip_id == 4) { clip_capacity = 12; }  // 1 0 1
      if (clip_id == 3) { clip_capacity = 18; }  // 0 1 1
      if (clip_id == 5) { clip_capacity = 25; }  // 1 0 1
      if (clip_id == 6) { clip_capacity = 35; }  // 1 1 0   
      if (clip_id == 7) { clip_capacity = 50; }  // 1 1 1    we can always dream   
      shot_count = clip_capacity;
    }
  }
  else{
    clip_capacity = 0;
  }

  if (dart_flag){ // dart has exited gate
    if (clip_capacity > 0){
      shot_count -= 1;
      if(shot_count <= 0){
        tone(SPKR, 800, 1000);
        shot_count = 0;
        clip_capacity = -1;  // lets start counting up
      }
    }
    else{
      shot_count += 1;
    }
    total_count += 1;
    writeEEPROM(total_count);    
    dart_interval_us = dart_time2_us - dart_time1_us;
    dart_speed_fps = dartLength_mm / dart_interval_us / 25.4 / 12 * 1E+6;      // feet per second
    dart_flag = false;
  }

  if (!digitalRead(buttonPin)){
    tone(SPKR, 400, 100);
    long start_time = millis();
    while(!digitalRead(buttonPin)){
      delay(10);
      if(millis() - start_time > 1000){
        tone(SPKR, 400, 10);
        }
      }
    if (millis() - start_time > 1000){
      debug_flag = !debug_flag;
    }
    else{
      cycle_limit = cycle_limit + 1;
      if (cycle_limit > 4){
        cycle_limit = 1;
      }
    }
  }

  if (millis() > nextDisplayTime){ // update display every quarter second
    nextDisplayTime = millis() + 250; 
    int voltValue = 0;
    for(uint8_t x=0; x< 10; x++){
      voltValue = voltValue + analogRead(voltagePin); 
    }
    voltage = voltValue / 1023.0 * vcc * vd_factor / 10; 
    
    if (debug_flag){
      showDisplayDebug();

      if(revFlag){
        Serial.print(millis());  
        Serial.print(F(" cc:"));
        Serial.print(cycle_count);
        Serial.print(F(" pf:"));        
        Serial.print(pushing_flag);
        Serial.print(F(" ps:"));
        Serial.print(digitalRead(pusherSwitch));
        Serial.print(F(" MEM:"));
        Serial.println(freeMemory());
      }    
    }
    else{
      showDisplay();
    }
  }
  
  if(revFlag){
    if(pushing_flag){  
      analogWrite(flywheelPWM, flywheel_full_pwm);      
    }
    else{
      analogWrite(flywheelPWM, flywheel_coast_pwm); 
    }
  }
  else{
    analogWrite(flywheelPWM, 0);
  }

  if(pushing_flag){
    if (cycle_count == 0){
      if (millis() > delay_till_ms){
        analogWrite(pusherIn1, pusher_full_pwm);
        digitalWrite(ledPin, HIGH);
      }
    }
    if (millis() > push_till_ms){
      if(cycle_count == (cycle_limit - 1) && cycle_limit != 4){
        analogWrite(pusherIn1, pusher_coast_pwm);
        digitalWrite(ledPin, LOW);
      }
    }
  }

  if((last_rev_ms + idle_time_ms) < millis()){
    sleep_flag = true;
    sleepNow();
  }
}
