/*


*/


#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include "splash.h"

#define OLED_RESET -1
Adafruit_SSD1306 display(OLED_RESET);

float version = 0.2;

int triggerSwitch = 8;
int revSwitch = 2;
int pusherSwitch = 4;
int buttonPin = A0;
int SELECT_pin = A2;

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

long lastPusherTime = 0;
long curPusherTime = 0;
bool lastPusherState = false;


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
  pinMode(buttonPin, INPUT_PULLUP);

  pinMode(clipU3pin, INPUT);          // Hall sensors have internal pullups
  pinMode(clipU4pin, INPUT);
  pinMode(clipU6pin, INPUT);

  pinMode(flywheelPWM, OUTPUT);
  pinMode(pusherIn1, OUTPUT);
  pinMode(pusherIn2, OUTPUT);

  pciSetup(revSwitch);
  pciSetup(triggerSwitch);
  pciSetup(pusherSwitch);
  
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3D (for the 128x64)
  digitalWrite(flywheelPWM, LOW);             // not sure why needed, otherwise flywheels rev
  analogWrite(pusherIn1, 0);   
  analogWrite(pusherIn2, 0);  
  //display.clearDisplay();
  display.display();  
  delay(1000);  // splash screen
  
  //analogWrite(flywheelPWM,100);
  //delay(1000);
  //analogWrite(flywheelPWM, 0);

  digitalWrite(pusherIn1, HIGH);
  delay(1000);
  digitalWrite(pusherIn1, LOW);

}


void showDisplay(){
  int x=0;
  int y=0;
  display.clearDisplay();
  display.setTextSize(1);
  display.setTextColor(WHITE);
  display.setCursor(0, 0);

  display.print("trig: ");
  display.println(digitalRead(triggerSwitch));
  display.print(" rev: ");
  display.println(digitalRead(revSwitch));
  display.print("push: ");  
  display.println(digitalRead(pusherSwitch));
  display.print("volt: ");
  display.println(voltage, 2);
  display.print("IRC:");
  display.println(irc);
  display.display();
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


ISR (PCINT2_vect){// handle pin change interrupt for D0 to D7
  
  if (!digitalRead(revSwitch)) { // LOW if rev switch pressed
    revFlag = true;
  }
  else{
    revFlag = false;
  }
  
  bool pusherState = digitalRead(pusherSwitch);
  if (pusherState != lastPusherState) { // pusher cycle about 160 ms on 2S  
    irc += 1;
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

  if (millis() > nextDisplayTime){ // update display every quarter second
    nextDisplayTime = millis() + 250; 
    showDisplay();
    Serial.print(curPusherTime - lastPusherTime);
    Serial.print(" ms,  ");  
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
}
