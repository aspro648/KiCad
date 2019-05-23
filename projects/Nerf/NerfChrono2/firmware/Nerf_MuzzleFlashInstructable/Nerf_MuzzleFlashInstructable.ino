/*
Photo transistor connected to A0 with external 10K ohm pull-up
*/

#include <Wire.h> // Enable this line if using Arduino Uno, Mega, etc.
#include <Adafruit_GFX.h>
#include "Adafruit_LEDBackpack.h"

Adafruit_7segment matrix = Adafruit_7segment();

int gatePin = 10;             // must be pin A0 to A5 for interrupt PCINT1_vect signal
int strobePin = 9;            // should be a PWM pin if you want to control brightness
int buttonPin = 7;            // must be D7 for hardware interrupt
volatile int shot_count = 0;
volatile long time1_us = 0;   // dart enters gate
volatile long time2_us = 0;   // dart exits gate
long interval_us;             // flight time between entrance and exit
float dartLength_mm = 72;     // mm
float speed_fps = 0;          // feet per second
float speed_mps = 0;          // meters per second
float speed_mph = 0;          // miles per hour
volatile bool flag = false;   // dart exits gate
long flash_time_ms = 100;     // length of time in ms of flash


void pciSetup(byte pin){
  // https://playground.arduino.cc/Main/PinChangeInterrupt/
  *digitalPinToPCMSK(pin) |= bit (digitalPinToPCMSKbit(pin));  // enable pin
  PCIFR  |= bit (digitalPinToPCICRbit(pin)); // clear any outstanding interrupt
  PCICR  |= bit (digitalPinToPCICRbit(pin)); // enable interrupt for the group
}


void setup() {                  
  // pin setup
  pinMode(gatePin, INPUT);  // should have external pull-up or use INPUT_PULLUP
  pciSetup(gatePin);
  pinMode(buttonPin, INPUT_PULLUP);  // should have external pull-up or use INPUT_PULLUP
  attachInterrupt(digitalPinToInterrupt(buttonPin), button_interrupt, FALLING);
  pinMode(strobePin, OUTPUT);

  matrix.begin(0x70);
  matrix.setBrightness(10); // Sets the display brightness with a value between 0 and 15

  // Open serial coms to console
  Serial.begin(9600);
  Serial.println("Nerf Chronos, waiting for shot . . .");  // Doesn't show up on 32U4 boards
}


void button_interrupt(){  // button press (falling edge)
  if (!digitalRead(buttonPin)){
    shot_count = 0;
    speed_fps = 0;
  }
}  


ISR (PCINT0_vect) {  // handle pin change interrupt for A0 to A5 here
  if (digitalRead(gatePin)) { // HIGH if dart present
    time1_us = micros(); 
  }
  else {                        // LOW when dart exits
    time2_us = micros();
    flag = true;     
  }
}


void loop() {
  if (flag){ // dart has exited gate
    digitalWrite(strobePin, HIGH);
    shot_count += 1;
    interval_us = time2_us - time1_us;
    speed_fps = dartLength_mm / interval_us / 25.4 / 12 * 1E+6;               // feet per second
    speed_mps = dartLength_mm / interval_us / 1000 * 1E+6;                    // meter per second
    speed_mph = dartLength_mm / interval_us / 25.4 / 12 * 1E+6 / 5280 * 3600; // miles per hour  
    
    Serial.print("Shot #");
    Serial.print(shot_count);
    Serial.print("  ");
    Serial.print(millis()/1000.0, 2);
    Serial.print(" sec  ");
    Serial.print(speed_fps, 1);
    Serial.print(" fps  ");
    Serial.print(speed_mps, 1);
    Serial.print(" m/s  ");
    Serial.print(speed_mph, 1);
    Serial.println(" mph  "); 

    flag = false; // reset gate
  }

  // flash dashes until first shot, then alternate between speed and shot count
  if ((millis() / 1000 ) % 2){ // modulo operation to find if second is odd (true) or even (false) 
    if(speed_fps ==0){  // need to write directly to segments to get dash
      matrix.writeDigitRaw(0, B1000000); 
      matrix.writeDigitRaw(1, B1000000);
      matrix.writeDigitRaw(3, B1000000);
      matrix.writeDigitRaw(4, B1000000);
    }
    else{ // pick units of measure to display, comment out others
      matrix.print(speed_fps, 1); 
      //matrix.print(speed_mps, 1); 
      //matrix.print(speed_mph, 1);           
    }
  }
  else{                    // even seconds
    if(speed_fps == 0){
      matrix.clear();      // clear dashes
    }
    else{
      matrix.print(shot_count);    
    }
  }
  matrix.writeDisplay();

  if ((micros() - time2_us) > flash_time_ms * 1000){  // turn off stobe
    digitalWrite(strobePin, LOW);
  }
}
