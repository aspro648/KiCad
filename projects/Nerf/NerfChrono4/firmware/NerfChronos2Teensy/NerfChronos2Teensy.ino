/*
 https://learn.adafruit.com/adafruit-led-backpack/0-dot-56-seven-segment-backpack
https://forum.pjrc.com/threads/31259-Teensy-3-2-pin-interupts

SCL 19
SDA 18

 */
 


#include <Wire.h> // Enable this line if using Arduino Uno, Mega, etc.
#include <Adafruit_GFX.h>
#include "Adafruit_LEDBackpack.h"

Adafruit_7segment matrix = Adafruit_7segment();


int led = 13;
int pin1 = 3;
int pin2 = 2;
int buttonPin = 4;
long t1 = 0;
long t2 = 0;
bool flag = false;  // value to print
int shot = 0;
float trapDist = 147; // mm
long interval;  // us between trap catches
float speed = 0;


/*
void pciSetup(byte pin){
  // https://playground.arduino.cc/Main/PinChangeInterrupt/
    *digitalPinToPCMSK(pin) |= bit (digitalPinToPCMSKbit(pin));  // enable pin
    PCIFR  |= bit (digitalPinToPCICRbit(pin)); // clear any outstanding interrupt
    PCICR  |= bit (digitalPinToPCICRbit(pin)); // enable interrupt for the group
}


ISR (PCINT0_vect){  // handle pin change interrupt for D8 to D13 here  
   if(!digitalRead(8)){
    shot = 0;
    speed = 0;
   }
 }
*/

void setup() {       
           
  matrix.begin(0x70);
  matrix.setBrightness(6);
  pinMode(led, OUTPUT);     
  pinMode(pin1, INPUT_PULLUP);
  pinMode(pin2, INPUT_PULLUP);
  pinMode(buttonPin, INPUT_PULLUP);
  attachInterrupt(pin1, trap1, RISING);
  attachInterrupt(pin2, trap2, RISING);
  attachInterrupt(buttonPin, buttonPress, FALLING);
  //pciSetup(8);
  Serial.begin(9600);
  Serial.println("Nerf Chronos, waiting for shot . . .");
}


void trap1(){
  t1 = micros();
}


void trap2(){
  t2 = micros();
  flag = true;
}


void buttonPress(){
   if(!digitalRead(buttonPin)){
    shot = 0;
    speed = 0;
   }
}


void loop() {
  if (flag){ // traps detected a pass
    shot += 1;
    interval = t2 - t1;
    speed = trapDist / interval / 25.4 / 12 * 1E+6; // fps
    if (speed > 0){
      Serial.print("Shot ");
      Serial.print(shot);
      Serial.print("  ");
      Serial.print(float(interval) / 1000, 1);
      Serial.print(" ms  ");
      Serial.print(speed, 1);
      Serial.println(" fps");
      //matrix.print(speed);
      //matrix.writeDisplay();
    }
    else{ // bad data or backward traps
      Serial.println(interval);
    }
    flag = false;
  }
  if ((millis() / 1000 )%2){

      if(speed ==0){
        matrix.writeDigitRaw(0, B1000000); // dash
        matrix.writeDigitRaw(1, B1000000);
        matrix.writeDigitRaw(3, B1000000);
        matrix.writeDigitRaw(4, B1000000);
      }
      else{
        matrix.print(speed, 1); 
       
      }
  }
  else{
      if(speed ==0){
        matrix.writeDigitRaw(0, B0000000);
        matrix.writeDigitRaw(1, B0000000);
        matrix.writeDigitRaw(3, B0000000);
        matrix.writeDigitRaw(4, B0000000);
      }
      else{
        matrix.print(shot);    
      }
  }
  matrix.writeDisplay();
}
