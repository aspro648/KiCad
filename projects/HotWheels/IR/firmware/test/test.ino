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
int photo1 = A0;
int photo2 = A2;


// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  matrix.begin(0x70);
  matrix.flip(true);
  pinMode(LED1, OUTPUT);
  pinMode(photo1, INPUT);
  pinMode(LED2, OUTPUT);
  pinMode(photo2, INPUT);
  Serial.begin(9600);
}

// the loop function runs over and over again forever
void loop() {
  int sig1 = analogRead(photo1);
  int sig2 = analogRead(photo2);
  float val = sig2/1024.0;
  long t = 1234;
  
  //matrix.print(1.34);
  matrix.writeDigitRaw(2, 0x10) ; // decimal point
  matrix.writeDigitNum(0, 1);
  matrix.writeDigitNum(1, 2);
  matrix.writeDisplay();
  Serial.print(sig1);
  Serial.print(" ");
  Serial.println(sig2);
  //digitalWrite(LED2, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(100);                       // wait for a second
  digitalWrite(LED2, LOW);    // turn the LED off by making the voltage LOW
  delay(100);                       // wait for a second
}
