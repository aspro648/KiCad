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
int photo1 = A2;
int photo2 = A0;
int photo3 = MOSI;
int photo4 = SCK;


// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  matrix.begin(0x70);
  matrix.flip(true);
  pinMode(LED1, OUTPUT);
  pinMode(photo1, INPUT_PULLUP);
  pinMode(LED2, OUTPUT);
  pinMode(photo2, INPUT_PULLUP);
  pinMode(photo3, INPUT_PULLUP);
  pinMode(photo4, INPUT_PULLUP);
  pinMode(LED34, OUTPUT);

  Serial.begin(9600);
  Serial.println("HW IR test");
}


// the loop function runs over and over again forever
void loop() {
  int sig1 = analogRead(photo1);
  int sig2 = analogRead(photo2);
  int sig3 = digitalRead(photo3);
  int sig4 = digitalRead(photo4);

  int sig1a = map(sig1, 0, 1023, 0, 10);
  int sig2a = map(sig2, 0, 1023, 0, 10);  
  float val = sig2/1024.0;
  
  //matrix.print(sig1);
  //matrix.writeDigitRaw(2, 0x10) ; // decimal point
  matrix.writeDigitNum(0, sig1a);
  matrix.writeDigitNum(1, sig2a);
  matrix.writeDigitNum(3, sig3);
  matrix.writeDigitNum(4, sig4);
  matrix.writeDisplay();
  Serial.print(sig1);
  Serial.print(" ");
  Serial.print(sig2);
  Serial.print(" ");
  Serial.print(sig3);
  Serial.print(" ");
  Serial.println(sig4);
  if (sig1 < 500){
    digitalWrite(LED1, HIGH);
  }
  else{
    digitalWrite(LED1, LOW);
  }
  
  if (sig2 < 500){
    digitalWrite(LED2, HIGH);
  }
  else{
    digitalWrite(LED2, LOW);
  }  

  if(sig3 || sig4){
    digitalWrite(LED34, HIGH);
  }
  else{
    digitalWrite(LED34, LOW);
  }

  delay(100);                       // wait for a second
}
