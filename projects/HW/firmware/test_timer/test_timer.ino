/*************************************************** 


 ****************************************************/

#include <Wire.h> // Enable this line if using Arduino Uno, Mega, etc.
#include <Adafruit_GFX.h>
#include "Adafruit_LEDBackpack.h"

Adafruit_7segment matrix = Adafruit_7segment();


int g1_LED = 12;
int g1_NPN1 = A1;  // exit
int g1_NPN2 = A2;  // entrance
volatile long timer_start;
volatile long timer_stop;
volatile bool timing = false;


void setup() {

  pinMode(g1_LED, OUTPUT);
  pinMode(g1_NPN1, INPUT);  
  pinMode(g1_NPN2, INPUT);
  Serial.begin(9600);
  matrix.begin(0x70);

  attachInterrupt(digitalPinToInterrupt(g1_NPN1), exit, RISING);
  attachInterrupt(digitalPinToInterrupt(g1_NPN2), entrance, RISING);
  matrix.println(0);
  matrix.writeDisplay(); 
}




void loop() {

  if(timing){
    matrix.println(millis() - timer_start);
    matrix.writeDisplay();     
  }
  if(timer_stop){
    long duration_ms = timer_stop - timer_start;
    matrix.println(duration_ms);
    matrix.writeDisplay();      
    Serial.println(45.45 / duration_ms);
    timer_stop = 0;   
    timing = false;
  }

  delay(100);

}



void entrance() {
  timer_start = millis();
  timing = true;
  digitalWrite(g1_LED, HIGH);
}


void exit(){
  if(timing){
    timer_stop = millis();    
    digitalWrite(g1_LED, LOW);
  }


}
