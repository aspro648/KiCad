/*

M0 is faster 48 Mhz verse 16 Mhz
All pins can be interupts (only 2 on a 328 and 5 on a 32U4
Allows us to do analogRead on interupt pin for troubleshooting
*/
 


#include <Wire.h> // Enable this line if using Arduino Uno, Mega, etc.
#include <Adafruit_GFX.h>
#include "Adafruit_LEDBackpack.h"

#if defined(ARDUINO_SAMD_ZERO) && defined(SERIAL_PORT_USBVIRTUAL)
  // Required for Serial on Zero based boards
  #define Serial SERIAL_PORT_USBVIRTUAL
#endif

Adafruit_7segment matrix = Adafruit_7segment();


int led = 13;
int pin1 = A4;
int pin2 = A3;
int buttonPin = 4;
long t1 = 0;
long t2 = 0;
bool flag = false;  // value to print
int shot = 0;
float trapDist = 26; // mm
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
  pinMode(pin1, INPUT);
  pinMode(pin2, INPUT);
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

    /*
    // speed test M0 micros() = 1us, digitalRead() = 1us
    //           328 micros() = 2us, digitalRead() = 5us
    long z1 = micros();
    //int x = digitalRead(pin1);
    //int y = digitalRead(pin2);
    //int z = digitalRead(pin2);
    long z2 = micros();
    long z3 = z2 - z1;   
    Serial.print(z3);
    Serial.print(" us  ");
    */
    
    
    if (speed > 0){
      Serial.print("Shot ");
      Serial.print(shot);
      Serial.print("  ");
      //Serial.print(float(interval) / 1000, 1);
      //Serial.print(" ms  ");
      Serial.print(interval);
      Serial.print(" us  ");
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
