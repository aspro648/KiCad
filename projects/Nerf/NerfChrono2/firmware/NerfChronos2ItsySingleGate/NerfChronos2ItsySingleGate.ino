/*

M0 is faster 48 Mhz verse 16 Mhz
All pins can be interupts (compare to only 2 on a 328 and 5 on a 32U4)
Allows us to do analogRead() on interupt pin for troubleshooting

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
int flashPin = 10;
int sensor1pin = A4;
int sensor2pin = A3;
int buttonPin = 12;
int shot_count = 0;
long time1_us = 0;
long time2_us = 0;
long interval_us;       // flight time between sensors
float trapDist_mm = 75; // mm
float speed_fps = 0;    // feet per second
float speed_mps = 0;    // meters per second
float speed_mph = 0;    // miles per hour
bool flag = false;      // dart passes second sensor
int flash_time_ms = 100;


void setup() {                  
  matrix.begin(0x70);
  matrix.setBrightness(10); // Sets the display brightness with a value between 0 and 15
  pinMode(led, OUTPUT);  
  pinMode(flashPin, OUTPUT);   
  pinMode(sensor1pin, INPUT);
  pinMode(sensor2pin, INPUT);
  pinMode(buttonPin, INPUT_PULLUP);
  attachInterrupt(sensor1pin, sensor1_interrupt, CHANGE);
  //attachInterrupt(sensor2pin, sensor2_interrupt, RISING);
  attachInterrupt(buttonPin, button_interrupt, FALLING);
  digitalWrite(flashPin, LOW);
  Serial.begin(9600);
  Serial.println("Nerf Chronos, waiting for shot . . .");
}


void sensor1_interrupt(){
  if (!digitalRead(sensor1pin)) {
    time2_us = micros();
    flag = true;
  }
  else {
    time1_us = micros();  
  }
}


void sensor2_interrupt(){
  time2_us = micros();
  flag = true;
}


void button_interrupt(){
  shot_count = 0;
  speed_fps = 0;
  digitalWrite(flashPin, LOW);
}


void loop() {
  if (flag){ // traps detected a pass
    digitalWrite(flashPin, HIGH);
    shot_count += 1;
    interval_us = time2_us - time1_us;
    speed_fps = trapDist_mm / interval_us / 25.4 / 12 * 1E+6; // feet per second
    speed_mps = trapDist_mm / interval_us / 1000 * 1E+6;      // meter per second
    speed_mph = trapDist_mm / interval_us / 25.4 / 12 * 1E+6 / 5280 * 3600; // miles per hour
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
    
    
    if (speed_fps > 0){
      Serial.print("Shot #");
      Serial.print(shot_count);
      Serial.print("  ");
      Serial.print(interval_us);
      Serial.print(" us  ");
      Serial.print(speed_fps, 1);
      Serial.print(" fps  ");
      Serial.print(speed_mps, 1);
      Serial.print(" m/s  ");
      Serial.print(speed_mph, 1);
      Serial.println(" mph  "); 
    }
    else{ // bad data or backward traps
      Serial.println(interval_us);
    }
    flag = false;
  }
  
  if ((millis() / 1000 )%2){
    if(speed_fps ==0){ // flash dashes until first shot detected
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
  else{
    if(speed_fps == 0){
      matrix.clear();  // clear dashes
    }
    else{
      matrix.print(shot_count);    
    }
  }
  matrix.writeDisplay();
  if ((micros() - time2_us) > flash_time_ms * 1000){  //
    digitalWrite(flashPin, LOW);
  }
}
