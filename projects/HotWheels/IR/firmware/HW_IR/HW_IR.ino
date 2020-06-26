/*
  Blink

  Turns an LED on for one second, then off for one second, repeatedly.

  Most Arduinos have an on-board LED you can control. On the UNO, MEGA and ZERO
  it is attached to digital pin 13, on MKR1000 on pin 6. LED_BUILTIN is set to
  the correct LED pin independent of which board is used.
  If you want to know what pin the on-board LED is connected to on your Arduino
  model, check the Technical Specs of your board at:
  https://www.arduino.cc/en/Main/Products

  modified 8 May 2014
  by Scott Fitzgerald
  modified 2 Sep 2016
  by Arturo Guadalupi
  modified 8 Sep 2016
  by Colby Newman

  This example code is in the public domain.

  http://www.arduino.cc/en/Tutorial/Blink

  flipped trick from
  https://forums.adafruit.com/viewtopic.php?f=47&t=142339&p=703866&hilit=7+segment+decimal+point#p703866
*/


#include <Wire.h> // Enable this line if using Arduino Uno, Mega, etc.
#include <Adafruit_GFX.h>
#include "Adafruit_LEDBackpack.h"

Adafruit_7segment matrix = Adafruit_7segment();

int LED1 = A1;
int LED2 = A3;
int LED34 = MISO;
int photo1 = A0;
int photo2 = A2;
int photo3 = MOSI;
int photo4 = SCK;

volatile long startTime = 0;
volatile long stopTime1 = 0;
volatile long stopTime2 = 0;
long interval = 0;
long interval1 = 0;
long interval2 = 0;
long nextBlink = 0;
int blinkInterval = 2000;
bool blink = false;
bool printFlag1 = true;
bool printFlag2 = true;

volatile bool timming1 = false;
volatile bool timming2 = false;

void pciSetup(byte pin)
{ //https://playground.arduino.cc/Main/PinChangeInterrupt/
    *digitalPinToPCMSK(pin) |= bit (digitalPinToPCMSKbit(pin));  // enable pin
    PCIFR  |= bit (digitalPinToPCICRbit(pin)); // clear any outstanding interrupt
    PCICR  |= bit (digitalPinToPCICRbit(pin)); // enable interrupt for the group
}


ISR (PCINT0_vect) // handle pin change interrupt for D8 to D13 here
 { //https://playground.arduino.cc/Main/PinChangeInterrupt/
    if(digitalRead(photo3) && !timming1){
      timming1 = true;
      //timming2 = true;
      printFlag1 = false;
      printFlag2 = false;
      interval1 = 0;
      interval2 = 0;
      digitalWrite(LED1, LOW);
      digitalWrite(LED2, LOW);
      digitalWrite(LED34, HIGH);
      startTime = millis();
    }
    if(digitalRead(photo4) && !timming2){
      //timming1 = true;
      timming2 = true;
      printFlag1 = false;
      printFlag2 = false;
      interval1 = 0;
      interval2 = 0;
      digitalWrite(LED1, LOW);
      digitalWrite(LED2, LOW);
      digitalWrite(LED34, HIGH);
      startTime = millis();
    }
 }  


ISR (PCINT1_vect) // handle pin change interrupt for A0 to A5 here
 {

    if(digitalRead(photo1) && timming1){
      stopTime1 = millis();
      timming1 = false;
      interval1 = stopTime1 - startTime;
      if(timming2){
        digitalWrite(LED1, HIGH);
      }
    }

    if(digitalRead(photo2) && timming2){
      stopTime2 = millis();
      timming2 = false;
      interval2 = stopTime2 - startTime;
      if(timming1){
        digitalWrite(LED2, HIGH);
      }
    }
 } 


// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  matrix.begin(0x70);
  matrix.flip(true);
  pciSetup(photo1);
  pciSetup(photo2);
  pciSetup(photo3);
  pciSetup(photo4);
  pinMode(LED1, OUTPUT);
  pinMode(photo1, INPUT);
  pinMode(LED2, OUTPUT);
  pinMode(photo2, INPUT);
  pinMode(photo3, INPUT);
  pinMode(photo4, INPUT);
  pinMode(LED34, OUTPUT);
  
  Serial.begin(9600);
  Serial.println("HW IR Ver 0.1");
}


// the loop function runs over and over again forever
void loop() {
  int sig1 = analogRead(photo1);
  int sig2 = analogRead(photo2);
  float val = sig2/1024.0;
  
  //matrix.print(1.34);
  //matrix.writeDigitRaw(2, 0x10) ; // decimal point
  //matrix.writeDigitNum(0, 1);
  //matrix.writeDigitNum(1, 2);
  //matrix.writeDisplay();

    if (!timming1 && !printFlag1){
      if(interval1){
        printFlag1 = true;
        Serial.print("LANE 1 = ");
        Serial.print(interval1 / 1000.0, 3);
        Serial.println(" sec.");
        if(!timming2){
          Serial.println();
        }
      }
    }
    if (!timming2 && !printFlag2){
      if(interval2){
        printFlag2 = true;
        Serial.print("LANE 2 = ");
        float sec = interval2 / 1000.0;
        Serial.print(sec, 3);
        Serial.println(" sec.");
        if(!timming1){
          Serial.println();
        }
      }
    }

  if(timming1 || timming2){
    interval = millis()-startTime;
  }
  else{
    digitalWrite(LED34, LOW);
    if((millis() > nextBlink)){
      blink = !blink;
      nextBlink = nextBlink + blinkInterval;
    }
    if(blink){
      if(interval1){      
        interval = interval1;
      }
    }
    else{
      if(interval2){
        interval = interval2;
      }
    }
  }

  /*
  if(timming1){
    interval1 = millis()-startTime;
  }
  else{
    interval1 = stopTime1 - startTime;
  }
  if(timming1){
    interval2 = millis()-startTime;
  }
  else{
    interval2 = stopTime2 - startTime;
  }
  */
  
  matrix.print(interval);
  matrix.writeDigitRaw(2, 0x10) ; // decimal point
  if (interval < 1000 ){
    matrix.writeDigitNum(0, 0);
  }
  if (interval < 100){
    matrix.writeDigitNum(1, 0);
  }
  if (interval < 10){
    matrix.writeDigitNum(3, 0);
  }

  matrix.writeDisplay();

  /*
  Serial.print(interval);
  Serial.print(" ");
  Serial.print(timming1);
  Serial.print(" ");
  Serial.print(timming2);
  Serial.print(" ");
  Serial.print(startTime);
  Serial.print(" ");
  Serial.print(stopTime1);
  Serial.print(" ");
  Serial.print(stopTime2);
  Serial.println(" ");
  */
  delay(10);
  
}
