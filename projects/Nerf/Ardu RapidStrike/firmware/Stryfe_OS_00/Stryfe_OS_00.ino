


#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <EEPROM.h>

#define OLED_RESET -1
Adafruit_SSD1306 display(OLED_RESET);

float version = 0.1;

int voltagePin = A3;
float voltage = 0;
float vcc = 5.0;
float vd_factor = 11;
int SPKR = 4;
int DART_IR = A1;
int DSP_PWR = A2;
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
long beep_time_ms = 0;
uint8_t clip_capacity = 0;
uint8_t clip_id = 0;
bool cur_clip = false;
bool last_clip = false;

long nextDisplayTime = 2000;   // updates display, 2 second splash then 250 ms.
bool debug_flag = true;
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
  pinMode(voltagePin, INPUT);
  pinMode(revSwitch, INPUT); 
  pinMode(buttonPin, INPUT);   
  pinMode(CLIP, INPUT_PULLUP);
  pinMode(DART_IR, INPUT);

  pinMode(clipU3pin, INPUT);          // Hall sensors have internal pullups
  pinMode(clipU4pin, INPUT);
  pinMode(clipU6pin, INPUT);

  pinMode(flywheelPWM, OUTPUT);
  pinMode(SPKR, OUTPUT); 
  pinMode(DSP_PWR, OUTPUT); 
  digitalWrite(DSP_PWR, HIGH);
  delay(50);

  pciSetup(DART_IR);

  // get counter from EEPROM
  total_count = readEEPROM();
  Serial.println(total_count);
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
  tone(SPKR, 400, 100);
  delay(100);
  tone(SPKR, 800, 100);

  //analogWrite(flywheelPWM, 100);
  //delay(500);  // splash screen
  //digitalWrite(flywheelPWM, LOW);
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
  display.clearDisplay();

  display.drawLine(0, 0, 127, 0, WHITE);
  display.drawLine(0, 0, 0, 63, WHITE);
  display.drawLine(0, 63, 127, 63, WHITE);
  display.drawLine(127, 0, 127, 63, WHITE);
  
  display.setTextSize(1);
  display.setTextColor(WHITE);
  display.setCursor(7, 3);
  display.print(voltage, 2);
  display.print(" v   ");
  display.print(dart_speed_fps, 1);
  display.println(" fps");
  display.println("");
  
  display.print("   rev:");
  display.print(digitalRead(revSwitch));
  display.print(F("    MAG:"));

  display.print(!digitalRead(clipU3pin));
  display.print(!digitalRead(clipU4pin));    
  display.println(!digitalRead(clipU6pin));
    
  display.print("  butn:");  
  display.print(digitalRead(buttonPin));
  display.print("    TOT: ");  
  display.println(total_count);
  
  display.print("   CLP:");
  display.print(cur_clip);
  display.print("    CAP:");
  display.println(clip_capacity);

  display.print("  DART:");
  display.print(analogRead(DART_IR));
  display.print(" CLP_ID:");
  display.println(clip_id);
  
  display.display();
}


void pews(){ // graphic display of firing mode
  uint8_t y = 30;
  for (uint8_t pew=0; pew<3; pew++){
    if(cur_clip){
      display.fillRoundRect(pew * 12, 36, 10, y, 4, WHITE);
    }
    else {
      display.drawRoundRect(pew * 12, 36, 10, y, 4, WHITE);
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
  
  if (!digitalRead(revSwitch)){
    analogWrite(flywheelPWM, 255);
    beep_time_ms = millis() + 60000;
  }
  else{
    digitalWrite(flywheelPWM, LOW);
  }

  if (dart_flag){ // dart has exited gate
    if (clip_capacity > 0){
      shot_count -= 1;
      if(shot_count <= 0){
        tone(SPKR, 800, 1000);
        shot_count = 0;
        clip_capacity = 0;  // lets start counting up
      }
    }
    else{
      shot_count += 1;
    }
    total_count += 1;
    writeEEPROM(total_count); 
    Serial.println(total_count);
    delay(10);   
    dart_interval_us = dart_time2_us - dart_time1_us;
    dart_speed_fps = dartLength_mm / dart_interval_us / 25.4 / 12 * 1E+6;      // feet per second
    dart_flag = false;
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
    for(uint8_t x=0; x< 10; x++){
      voltValue = voltValue + analogRead(voltagePin); 
    }
    voltage = voltValue / 1023.0 * vcc * vd_factor / 10; 
    if (debug_flag){
      showDisplayDebug();
    }
    else{
      showDisplay();
    }
  }

  if (millis() > beep_time_ms){  // nag beep when idle (don't kill your battery)
    beep_time_ms = beep_time_ms + 300000;
    tone(SPKR, 800, 200);
  }
   
}
