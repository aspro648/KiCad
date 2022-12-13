/*************************************************** 


 ****************************************************/

#include <Wire.h> // Enable this line if using Arduino Uno, Mega, etc.
#include <Adafruit_GFX.h>
#include "Adafruit_LEDBackpack.h"

Adafruit_7segment matrix = Adafruit_7segment();


int g1_LED = 12;
int g1_NPN1 = A1;
int g1_NPN2 = A2;
volatile byte state = LOW;



void setup() {

  pinMode(g1_LED, OUTPUT);
  pinMode(g1_NPN1, INPUT);  
  pinMode(g1_NPN2, INPUT);
  Serial.begin(9600);
  matrix.begin(0x70);
  digitalWrite(g1_LED, HIGH);
  attachInterrupt(digitalPinToInterrupt(g1_NPN2), blink, RISING);

  delay(5000);
}


void loop() {

  int val1 = analogRead(g1_NPN1);
  int val2 = digitalRead(g1_NPN2);

  Serial.print(" ");
  Serial.print(state);
  Serial.print(" ");
  Serial.print(val1);
  Serial.print(" ");
  Serial.println(val2);
  matrix.println(val2);
  matrix.writeDisplay(); 
 
  delay(100);

}



void blink() {
  state = !state;
}