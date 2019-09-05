/*
TODO:


*/


#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <EEPROM.h>

#define OLED_RESET -1
Adafruit_SSD1306 display(OLED_RESET);
byte OLED = true;   // will be false if OLED not connected

float version = 0.1;

int voltagePin = A3;
float voltage = 0;
float vcc = 5.0;
float vd_factor = 11;
float voltage_low = 6.5;
float voltage_high = 8.4;

int SPKR = 4;
int DART_IR = A1;
int buttonPin = A0;
int revSwitch = 3;
int CLIP = 7;
int flywheelPWM = 9;

uint8_t clipU3pin = 10;
uint8_t clipU4pin = 11;
uint8_t clipU6pin = 12;

volatile int shot_count = 0;
volatile long dart_time1_us = 0;
volatile long dart_time2_us = 0;
volatile bool dart_flag = false;
float dart_speed_fps = 0;
float dartLength_mm = 72;
long dart_interval_us = 0;

long beep_time_ms = 300000;   // time next warning beep
int beep_length = 200;        // beep duration (gets longer if low voltage)
long beep_delay = 3000000;
bool voltage_flag = false;     // true if voltage < voltage_low

uint8_t clip_capacity = 0;
uint8_t clip_id = 0;
bool cur_clip = false;
bool last_clip = false;

long nextDisplayTime = 2000;   // updates display, 2 second splash then 250 ms.
bool debug_flag = false;
volatile word total_count = 0;


void pciSetup(byte pin){
  // https://playground.arduino.cc/Main/PinChangeInterrupt/
  *digitalPinToPCMSK(pin) |= bit (digitalPinToPCMSKbit(pin));  // enable pin
  PCIFR  |= bit (digitalPinToPCICRbit(pin)); // clear any outstanding interrupt
  PCICR  |= bit (digitalPinToPCICRbit(pin)); // enable interrupt for the group
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


void setup() {                  
  Serial.begin(9500);

  // probe for display
  Wire.begin();
  Wire.beginTransmission(0x3C);
  byte error = Wire.endTransmission();
  if (error) { OLED = false;}
  
  pinMode(voltagePin, INPUT);         // external pullup w/ harware debounce
  pinMode(revSwitch, INPUT); 
  pinMode(buttonPin, INPUT);   
  pinMode(CLIP, INPUT_PULLUP);        // No pullup on this one
  pinMode(DART_IR, INPUT);            // external pullup

  pinMode(clipU3pin, INPUT);          // Hall sensors have internal pullups
  pinMode(clipU4pin, INPUT);
  pinMode(clipU6pin, INPUT);

  pinMode(flywheelPWM, OUTPUT);
  pinMode(SPKR, OUTPUT); 

  pciSetup(DART_IR);

  // get counter from EEPROM
  total_count = readEEPROM();
  if (total_count == 65535){
    total_count = 0;
    writeEEPROM(total_count);
  }

  // splash screen
  if (OLED){
    display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3D (for the 128x64)
    display.setTextSize(1);
    display.setTextColor(WHITE);
  
    display.setCursor(0, 24);
    display.println(F("Rev "));
    display.print(version, 1);  
    
    display.setCursor(0, 46);
    display.println(F("Shots"));
    if(total_count < 10000){display.print(F("0"));}
    if(total_count < 1000){display.print(F("0"));}
    if(total_count < 100){display.print(F("0"));}
    if(total_count < 10){display.print(F("0"));}
    display.print(total_count);
    display.display();  
    tone(SPKR, 400, 100);
    delay(100);
    tone(SPKR, 800, 75);
    delay(75);
    tone(SPKR, 1200, 50);
    delay(50);
  }
  else{
    debug_flag = true;
    tone(SPKR, 400, 500);
  }

  if (debug_flag){
    Serial.print("ArduStryfe Ver. ");
    Serial.print(version, 1);
    if (OLED){
      Serial.println(", OLED detected at I2C 0x3C");
    }
    else{
      Serial.println(", no I2C display found");   
    }
  }
}


void graph(float minimum, float maximum, float value){
  float cur = value - minimum;
  float gage = cur / (maximum - minimum) * 8;
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


void showDisplay(){
  uint8_t x=0;
  uint8_t y=0;
  if (OLED){
    display.clearDisplay();
    display.setTextSize(2);
    display.setTextColor(WHITE);
    pews();  // draws bullet shapes
  
    graph(voltage_low, voltage_high, voltage); // min, max, value
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
    display.setCursor(33, 34);
    display.setTextSize(1);
    display.println(F("fps"));
      
    display.setCursor(56,20);
    display.setTextSize(6);
  
    if(shot_count<10){
      display.print(F("0"));
    }
    display.print(shot_count);
    display.display();
  }
}


void showDisplayDebug(){ 
  if (OLED){
    display.clearDisplay();
  
    display.drawLine(0, 0, 127, 0, WHITE);
    display.drawLine(0, 0, 0, 63, WHITE);
    display.drawLine(0, 63, 127, 63, WHITE);
    display.drawLine(127, 0, 127, 63, WHITE);
    
    display.setTextSize(1);
    display.setTextColor(WHITE);
    display.setCursor(7, 3);
    display.print(voltage, 2);
    display.print(" v      ");
    display.print("IR:");
    display.println(analogRead(DART_IR));
     
    display.setCursor(0, 16); 
    display.print(" rev_sw:");
    display.print(!digitalRead(revSwitch));
    display.print(F("   MAG:"));
  
    display.print(!digitalRead(clipU3pin));
    display.print(!digitalRead(clipU4pin));    
    display.println(!digitalRead(clipU6pin));
      
    display.print("   butn:");  
    display.print(!digitalRead(buttonPin));
    display.print("    ID:");
    display.println(clip_id);
  
    display.print(" CLP_sw:");
    display.print(cur_clip);
    display.print("   CAP:");
    display.println(clip_capacity);
  
    display.print("  SHOTS:");  
    display.print(shot_count);
    display.print("   fps:");
    display.println(dart_speed_fps, 1);
    
    display.print("  Total:");  
    display.println(total_count);
    
    display.display();
  }
  else{
    Serial.print(voltage, 2);
    Serial.print(" v, IR=");
    Serial.print(analogRead(DART_IR));
    Serial.print(" rev_sw=");
    Serial.print(!digitalRead(revSwitch));
    Serial.print(" CLP_sw=");
    Serial.print(cur_clip);
    Serial.print(" butn=");
    Serial.print(!digitalRead(buttonPin));
    Serial.print(" MAG=");
    Serial.print(!digitalRead(clipU3pin));
    Serial.print(!digitalRead(clipU4pin));    
    Serial.print(!digitalRead(clipU6pin));          
    Serial.print(" shots=");  
    Serial.print(shot_count);
    Serial.print(" fps=");
    Serial.println(dart_speed_fps, 1);
  }
}


void pews(){ // graphic display of firing mode
  uint8_t x = 0;
  uint8_t y = 36;
  uint8_t r = 4;
  int width = 10;
  for (uint8_t pew=0; pew<6; pew++){
    if(clip_capacity > 0 && pew < shot_count){
      display.fillRoundRect(x, y, width, 64 - y, r, WHITE);
    }
    else {
      display.drawRoundRect(x, y, width, 64 - y, r, WHITE);
    }
    x = x + width + 1;
    y = y + 3;
    width = width - 1;
    if (width < 8){
      r = 3;
    }
  }
}


void loop() {
  // check clip
  cur_clip = !digitalRead(CLIP);
  if (cur_clip != last_clip){
    last_clip = cur_clip;
    delay(100);                                // AH9246 / AH9250 has 100 ms sleep time
    clip_id = !digitalRead(clipU6pin) + !digitalRead(clipU4pin) * 2 + !digitalRead(clipU3pin) * 4;
    if (clip_id == 0) { clip_capacity = 0; }   // 0 0 0 
    if (clip_id == 1) { clip_capacity = 6; }   // 0 0 1
    if (clip_id == 2) { clip_capacity = 10; }  // 0 1 0
    if (clip_id == 4) { clip_capacity = 12; }  // 1 0 0
    if (clip_id == 3) { clip_capacity = 18; }  // 0 1 1
    if (clip_id == 5) { clip_capacity = 22; }  // 1 0 1
    if (clip_id == 6) { clip_capacity = 25; }  // 1 1 0   
    if (clip_id == 7) { clip_capacity = 35; }  // 1 1 1     
    shot_count = clip_capacity;
  }
  
  if (!digitalRead(revSwitch) && (voltage > voltage_low)){
    analogWrite(flywheelPWM, 255);
    beep_time_ms = millis() + beep_delay;  // 5 min delay
  }
  else{
    digitalWrite(flywheelPWM, LOW);
  }

  if (dart_flag){ // dart has exited gate

    if (clip_capacity > 0){
      shot_count -= 1;
      if(shot_count <= 0){
        tone(SPKR, 400, 1000);
        shot_count = 0;
        clip_capacity = 0;  // lets start counting up
      }
      else{
        tone(SPKR, 1200, 250);
      }
    }
    else{
      shot_count += 1;
      tone(SPKR, 1200, 250);
    }
    total_count += 1;
    writeEEPROM(total_count); 
    delay(10);   
    dart_interval_us = dart_time2_us - dart_time1_us;
    dart_speed_fps = dartLength_mm / dart_interval_us / 25.4 / 12 * 1E+6;      // feet per second
    dart_flag = false;
    if ((!OLED && !debug_flag) || (OLED && debug_flag)){
      Serial.print("Shot #");
      Serial.print(shot_count);
      Serial.print(" @ ");
      Serial.print(millis()/1000.0, 1);
      Serial.print(" sec,  ");
      Serial.print(dart_speed_fps, 1);      
      Serial.println(" fps");
    }
  }

  if (!digitalRead(buttonPin)){
    tone(SPKR, 400, 100);
    long start_time = millis();
    while(!digitalRead(buttonPin)){
      delay(10);
    }
    debug_flag = !debug_flag;
  }

  if (millis() > nextDisplayTime){ // update display every quarter second
    nextDisplayTime = millis() + 250; 
    int voltValue = 0;
    for(uint8_t x=0; x< 25; x++){
      voltValue = voltValue + analogRead(voltagePin); 
    }
    voltage = voltValue / 1023.0 * vcc * vd_factor / 25; 

    if (voltage < voltage_low){
      if (!voltage_flag){
        beep_time_ms = millis();
        beep_length = 500;
        beep_delay = 5000;
        voltage_flag = true;
      }
    }
    else{
      if (voltage_flag){
      beep_length = 200;
      beep_delay = 300000;
      voltage_flag = false; 
      }       
    }
        
    if (debug_flag){
      showDisplayDebug();
    }
    else{
      showDisplay();
    }
  }

  if (millis() > beep_time_ms){  // nag beep every 5 min when idle or ever 5 seconds when battery low
    beep_time_ms = beep_time_ms + beep_delay;
    tone(SPKR, 800, beep_length);
  }
   
}
