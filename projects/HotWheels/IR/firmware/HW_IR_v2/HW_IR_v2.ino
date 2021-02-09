/*
 

  Display flipped trick from
  https://forums.adafruit.com/viewtopic.php?f=47&t=142339&p=703866&hilit=7+segment+decimal+point#p703866
*/


#include <Wire.h> // Enable this line if using Arduino Uno, Mega, etc.
#include <Adafruit_GFX.h>
#include "Adafruit_LEDBackpack.h"

Adafruit_7segment matrix = Adafruit_7segment();

int LED1 = A1;
int LED2 = A3;
int LED34 = MISO;
int photo1 = A2;  //start line cells
int photo2 = A0;  //start line cells
int photo3 = MOSI;
int photo4 = SCK;
int raceNumber = 1;

volatile long startTime = 0;
volatile long startTime1 = 0;
volatile long startTime2 = 0;
volatile long stopTime1 = 0;
volatile long stopTime2 = 0;
long interval = 0;
long interval1 = 0;
long interval2 = 0;
volatile long nextBlink = 0;
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
      printFlag1 = false;
      printFlag2 = false;
      interval1 = 0;
      interval2 = 0;
      digitalWrite(LED1, LOW);
      digitalWrite(LED2, LOW);
      digitalWrite(LED34, HIGH);
      startTime = millis();
      startTime1 = startTime;
    }
    if(digitalRead(photo4) && !timming2){
      timming2 = true;
      printFlag1 = false;
      printFlag2 = false;
      interval1 = 0;
      interval2 = 0;
      digitalWrite(LED1, LOW);
      digitalWrite(LED2, LOW);
      digitalWrite(LED34, HIGH);
      startTime = millis();
      startTime2 = startTime;
    }
 }  


ISR (PCINT1_vect){ // handle pin change interrupt for A0 to A5 here
    if(digitalRead(photo1) && timming1){
      stopTime1 = millis();
      timming1 = false;
      interval1 = stopTime1 - startTime;
      if(timming2){
        digitalWrite(LED1, HIGH);
      }
      blink = true;    
    }

    if(digitalRead(photo2) && timming2){
      stopTime2 = millis();
      timming2 = false;
      interval2 = stopTime2 - startTime;
      if(timming1){
        digitalWrite(LED2, HIGH);
      }
      blink = false;
    }
    nextBlink = millis() + blinkInterval;
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
  Serial.println("HW IR Ver 0.3");
  Serial.print("Race Number ");
  Serial.print(raceNumber);
  Serial.println(":");
}


// the loop function runs over and over again forever
void loop() {
  int sig1 = analogRead(photo1);
  int sig2 = analogRead(photo2);
  float val = sig2/1024.0;

    if (!timming1 && !printFlag1){
      if(interval1){
        printFlag1 = true;
        Serial.print("LANE 1 = ");
        Serial.print(interval1 / 1000.0, 3);
        Serial.println(" sec.");
        if(!timming2){
          Serial.println();
          raceNumber += 1;
          Serial.print("Race Number ");
          Serial.print(raceNumber);
          Serial.println(":");
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
          raceNumber += 1;
          Serial.print("Race Number ");
          Serial.print(raceNumber);
          Serial.println(":");
        }
      }
    }

  if(timming1 || timming2){
    interval = millis()-startTime;
  }
  else{
    digitalWrite(LED34, LOW);

    if(interval1 && !interval2){
      interval = interval1;
      digitalWrite(LED1, HIGH);
      digitalWrite(LED2, LOW);     
    }
    else if(interval2 && !interval1){
      interval = interval2;
      digitalWrite(LED2, HIGH);
      digitalWrite(LED1, LOW);  
    }
    else if(interval1 && interval2){
      if((millis() > nextBlink)){
        blink = !blink;
        nextBlink = nextBlink + blinkInterval;
      }
      if(blink){
        interval = interval1;
        digitalWrite(LED1, HIGH);
        digitalWrite(LED2, LOW);
      }
      else{
        interval = interval2;
        digitalWrite(LED2, HIGH);
        digitalWrite(LED1, LOW);
      }
    }
  }

  if(interval > 10000){  // auto reset after 10 seconds (car fell off track)
    interval = 0;
    if(timming2){
      interval2 = 9999;
      timming2 = false;
      printFlag2 = false;
    }
    if(timming1){
      interval1 = 9999;
      timming1 = false;
      printFlag1 = false;
    }   
  }
  
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

  delay(10);  // don't need to display any faster than this
  
}
