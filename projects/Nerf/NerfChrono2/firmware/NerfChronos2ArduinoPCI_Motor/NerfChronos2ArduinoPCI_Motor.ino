/*

Photo transistor attached to pin 2
Button attached to pin 12

*/


#include <Wire.h> // Enable this line if using Arduino Uno, Mega, etc.
#include <Adafruit_GFX.h>
#include "Adafruit_LEDBackpack.h"

Adafruit_7segment matrix = Adafruit_7segment();

int flashPin = 13;
int sensorPin = A0;        // must be A0 to A5
int buttonPin = 7;         // must be D0 to D7
int shot_count = 0;
long time1_us = 0;         // dart enters gate
long time2_us = 0;         // dart exits gate
long interval_us;          // flight time between entrance and exit
long interval_total_us = 0;// for calculating average
float dartLength_mm = 72;  // mm
float speed_fps = 0;       // feet per second
float speed_mps = 0;       // meters per second
float speed_mph = 0;       // miles per hour
float ave_fps = 0;         // average feet per second
bool flag = false;         // dart exits gate
int flash_time_ms = 100;   // time to strobe LEDs


void pciSetup(byte pin){
  // https://playground.arduino.cc/Main/PinChangeInterrupt/
  *digitalPinToPCMSK(pin) |= bit (digitalPinToPCMSKbit(pin));  // enable pin
  PCIFR  |= bit (digitalPinToPCICRbit(pin)); // clear any outstanding interrupt
  PCICR  |= bit (digitalPinToPCICRbit(pin)); // enable interrupt for the group
}


void setup() {                  
  // pin setup
  pinMode(flashPin, OUTPUT);   
  pinMode(sensorPin, INPUT);  // should have external pull-up or use INPUT_PULLUP
  pinMode(buttonPin, INPUT_PULLUP);
  //attachInterrupt(digitalPinToInterrupt(sensorPin), sensor_interrupt, CHANGE);
  //attachInterrupt(buttonPin, button_interrupt, FALLING);
  pciSetup(sensorPin);
  pciSetup(buttonPin);
  
  // intialize display (if attached)
  matrix.begin(0x70);
  matrix.setBrightness(10); // Sets the display brightness with a value between 0 and 15
  
  // Open serial coms to console
  Serial.begin(9600);
  Serial.println("Nerf Chronos, waiting for shot . . .");
}


void sensor_interrupt(){
  if (digitalRead(sensorPin)) { // LOW if dart present
    time1_us = micros(); 
    flag = true;  
  }
}


void button_interrupt(){        // reset shot count (clip reload)
  shot_count = 0;
  speed_fps = 0;
  interval_total_us = 0;
  digitalWrite(flashPin, LOW);
}


ISR (PCINT1_vect) { // handle pin change interrupt for A0 to A5 here
  if (digitalRead(sensorPin)) { // LOW if dart present
    time2_us = time1_us;
    time1_us = micros(); 
    //flag = true; 
  }
}  


ISR (PCINT2_vect) { // handle pin change interrupt for D0 to D7 here
  if (!digitalRead(buttonPin)){
    shot_count = 0;
    speed_fps = 0;
    interval_total_us = 0;
  }
}  
 

void loop() {
  //if (flag){ // dart has exited gate
    interval_us = time1_us - time2_us;
    int rpm = 1E+6 * 60 / interval_us;
    //time2_us = time1_us;
    //flag = false; // reset gate    
    
  //}
  Serial.print(interval_us);
  Serial.print(" ");
  Serial.println(rpm);
  delay(100);
}
