/*

TODO:
Debug mode
add fps to screen?
firing algorythms
pusher algorythms
check sleep current

*/

#include <avr/sleep.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include "splash.h"

#define OLED_RESET -1
Adafruit_SSD1306 display(OLED_RESET);

float version = 0.2;

int triggerSwitch = 8;
int revSwitch = 3;
int DART_IR = A1;
int pusherSwitch = 2;
int buttonPin = A0;
int SELECT_pin = A2;
int SPKR = 4;
int CLIP = 7;
int ledPin = 13;

int clipU3pin = 10;
int clipU4pin = 11;
int clipU6pin = 12;

int voltagePin = A3;
float vcc = 5.0;
float vd_factor = 10.7;
float voltage = 0;

int flywheelPWM = 9;
int pusherIn1 = 5; 
int pusherIn2 = 6;

long nextDisplayTime = 0;   // updates display

bool revFlag = false;       // true if rev switch pulled
bool triggerFlag = false;   // true if trigger pulled
int irc = 0;                // debug interrrupt counter

volatile long lastPusherTime = 0;
volatile long curPusherTime = 0;
volatile bool lastPusherState = false;
volatile long last_rev_ms = 0;

volatile int shot_count = 0;
volatile int cycle_limit = 2;
volatile long dart_time1_us = 0;
volatile long dart_time2_us = 0;
volatile bool dart_flag = false;
float dart_speed_fps = 0;
float dartLength_mm = 72;
long dart_interval_us = 0;
bool sleep_flag = false;
long idle_time_ms = 300000;
int clip_capacity = 0;
int clip_id = 0;


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

  pinMode(clipU3pin, INPUT_PULLUP);          // Hall sensors have internal pullups
  pinMode(clipU4pin, INPUT_PULLUP);
  pinMode(clipU6pin, INPUT_PULLUP);

  pinMode(flywheelPWM, OUTPUT);
  pinMode(pusherIn1, OUTPUT);
  pinMode(pusherIn2, OUTPUT);
  pinMode(SPKR, OUTPUT);
  pinMode(ledPin, OUTPUT);

  // Interrupt routines
  //pciSetup(revSwitch);
  pciSetup(triggerSwitch);
  pciSetup(pusherSwitch);
  pciSetup(DART_IR);
  attachInterrupt(digitalPinToInterrupt(revSwitch), rev_interrupt, CHANGE);
  
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3D (for the 128x64)
  digitalWrite(flywheelPWM, LOW);             // not sure why needed, otherwise flywheels rev
  analogWrite(pusherIn1, 0);   
  analogWrite(pusherIn2, 0);  
  //display.clearDisplay();
  display.display();  
  tone(SPKR, 400, 100);
  delay(100);
  tone(SPKR, 800, 100);
  
  //delay(500);  // splash screen
  
  //analogWrite(flywheelPWM,100);
  //delay(1000);
  //analogWrite(flywheelPWM, 0);

  //digitalWrite(pusherIn1, HIGH);
  //delay(1000);
  digitalWrite(pusherIn1, LOW);
  digitalWrite(ledPin, HIGH); // turn LED on to indicate awake

}


void sleepNow(void){
  display.clearDisplay();
  display.display();  
  delay(100);

  //
  // Choose our preferred sleep mode:
  set_sleep_mode(SLEEP_MODE_PWR_DOWN);
  //
  // Set sleep enable (SE) bit:
  sleep_enable();
  //
  // Put the device to sleep:
  digitalWrite(ledPin, LOW); // turn LED off to indicate sleep
  sleep_mode();
  //
  // Upon waking up, sketch continues from this point.
  sleep_disable();
  digitalWrite(ledPin, HIGH); // turn LED on to indicate awake
  sleep_flag = false;
}


void showDisplay(){
  int x=0;
  int y=0;

  display.clearDisplay();
  display.setTextSize(2);
  display.setTextColor(WHITE);
  pews();

  graph(6.5, 8.4, voltage); // min, max, value
  display.setCursor(0, 16);
  display.print("BAT");
    
  display.setCursor(54,18);
  display.setTextSize(6);

  if(shot_count<10){
    display.print(" ");
  }
  display.print(shot_count);
  display.display();
}


void showDisplayDebug(){
  int x=0;
  int y=0;
  display.clearDisplay();
  display.setTextSize(1);
  display.setTextColor(WHITE);
  display.setCursor(0, 0);

  display.print("trig:");
  display.print(digitalRead(triggerSwitch));

  display.print(" DART:");
  display.println(analogRead(DART_IR));
  
  display.print(" rev:");
  display.print(digitalRead(revSwitch));

  display.print("  MAG:");
  display.print(digitalRead(clipU6pin));
  display.print(digitalRead(clipU4pin));  
  display.println(digitalRead(clipU3pin));
    
  display.print("push:");  
  display.print(digitalRead(pusherSwitch));

  display.print("  DIR:");
  display.println(digitalRead(DART_IR));
  
  display.print("butn:");  
  display.print(digitalRead(buttonPin));

  display.print("  CLP:");
  display.println(digitalRead(CLIP));
  
  display.print(" IRC:");
  display.print(irc);

  display.print(" FPS:");
  display.println(dart_speed_fps);

  display.print("SHOTS:");
  display.println(shot_count);

  display.print(" cap:");
  display.println(clip_capacity);
    
  //display.print("volt: ");
 // display.println(voltage, 2);

  display.display();
}


void graph(float minimum, float maximum, float value){
  //float fullV = 8.4;
  //float empV = 6.5;
  float cur = value - minimum;
  float gage = cur / (maximum - minimum) * 8;
  //Serial.println(gage);
  for (int xx=0; xx<8; xx++){
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
  int y = 30;
  if(cycle_limit <4){
    for (int pew=0; pew<3; pew++){
      if(pew < cycle_limit){
        display.fillRoundRect(pew * 12, 36, 10, y, 4, WHITE);
      }
      else {
        display.drawRoundRect(pew * 12, 36, 10, y, 4, WHITE);
      }
    }
  }
  else{ // flash for auto
    for (int pew=0; pew<3; pew++){
      if(!((millis()/1000) % 2)){
        display.fillRoundRect(pew * 12, 36, 10, y, 4, WHITE);
      }
      else {
        display.drawRoundRect(pew * 12, 36, 10, y, 4, WHITE);
      }
    }    
  }
}


ISR (PCINT0_vect){// handle pin change interrupt for D8 to D13
  //irc += 1;
  if (!digitalRead(triggerSwitch)) { // LOW if rev switch pressed
    triggerFlag = true;
  }
  else{
    triggerFlag = false;
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
  irc += 1;
  last_rev_ms = millis();
  if (!digitalRead(revSwitch)) { // LOW if rev switch pressed
    revFlag = true;
  }
  else{
    revFlag = false;
  }
  
  bool pusherState = digitalRead(pusherSwitch);
  if (pusherState != lastPusherState) { // pusher cycle about 160 ms on 2S  
    //irc += 1;
    //if(pusherState == LOW){
      lastPusherState = pusherState;
      lastPusherTime = curPusherTime;
      curPusherTime = millis();
    //}
  }
} 


ISR (PCINT2_vect){// handle pin change interrupt for D0 to D7
  
  if (!digitalRead(revSwitch)) { // LOW if rev switch pressed
    revFlag = true;
  }
  else{
    revFlag = false;
  }
  
  bool pusherState = digitalRead(pusherSwitch);
  if (pusherState != lastPusherState) { // pusher cycle about 160 ms on 2S  
    //irc += 1;
    //if(pusherState == LOW){
      lastPusherState = pusherState;
      lastPusherTime = curPusherTime;
      curPusherTime = millis();
    //}
  }
} 



void loop() {

  int voltValue = analogRead(voltagePin); 
  voltage = voltValue / 1023.0 * vcc * vd_factor; 


  // check
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
    dart_interval_us = dart_time2_us - dart_time1_us;
    dart_speed_fps = dartLength_mm / dart_interval_us / 25.4 / 12 * 1E+6;               // feet per second
    dart_flag = false;
    //tone(SPKR, 200, 500);
  }

  if (millis() > nextDisplayTime){ // update display every quarter second
    nextDisplayTime = millis() + 250; 
    showDisplay();
    Serial.print(clip_id);
    Serial.print(" ");
    Serial.print(clip_capacity);
    Serial.print(" ");  

    Serial.print(dart_interval_us);
    Serial.print(" us,  ");  
    Serial.print(voltage, 2);
    Serial.print(" v,  trig=");
    Serial.print(digitalRead(triggerSwitch));
    Serial.print(",  rev=");
    Serial.print(digitalRead(revSwitch));
    Serial.print(",  psh=");
    Serial.println(digitalRead(pusherSwitch));
  }
  
  if(revFlag){
    if(triggerFlag){  
      analogWrite(flywheelPWM, 125); 
    }
    else{
      analogWrite(flywheelPWM, 80); 
    }
  }
  else{
    analogWrite(flywheelPWM, 0);
  }

  if(triggerFlag){
    analogWrite(pusherIn1, 255);   
    analogWrite(pusherIn2, 0); 
  }
  else{
    analogWrite(pusherIn1, 0);   
    analogWrite(pusherIn2, 0);     
  }
  
  if((last_rev_ms + idle_time_ms) < millis()){
    sleep_flag = true;
    sleepNow();
  }
  
}
