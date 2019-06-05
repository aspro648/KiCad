/*

A0 temperature
A1 photo gate
A2 button 1
A3 button 2
A4 button 3
A5 voltage

D7 flywheel

*/


#include <Wire.h> // Enable this line if using Arduino Uno, Mega, etc.


int sensorPin = A1;        
int buttonPin = A2;         
int voltagePin = A5;
int flyWheelPin = 7;
int tempPin = A0;
int shot_count = 0;
long time1_us = 0;         // dart enters gate
long time2_us = 0;         // dart exits gate
long mtr_time1_us = 0;
long mtr_time2_us = 0;
long interval_us;          // flight time between entrance and exit
long interval_total_us = 0;// for calculating average
float dartLength_mm = 72;  // mm
float speed_fps = 0;       // feet per second
float speed_mps = 0;       // meters per second
float speed_mph = 0;       // miles per hour
float ave_fps = 0;         // average feet per second
bool flag1 = false;        // dart exits gate
bool flag2 = false;
long nextTime = 0;
float vcc = 3.3;
float vd_factor = 10.7;
int rpm = 0;
float voltage = 0;
float temperatureC = 0;


void setup() {                  
  // pin setup
  pinMode(sensorPin, INPUT);  // should have external pull-up or use INPUT_PULLUP
  pinMode(buttonPin, INPUT_PULLUP);
  pinMode(flyWheelPin, INPUT);
  pinMode(voltagePin, INPUT);
  pinMode(tempPin, INPUT);
  
  attachInterrupt(sensorPin, sensor_interrupt, CHANGE);
  attachInterrupt(flyWheelPin, flywheel_interrupt, FALLING);
  //attachInterrupt(buttonPin, button_interrupt, FALLING);
  //pciSetup(sensorPin);
  //pciSetup(buttonPin);
  //pciSetup(flyWheelPin);
  
  int voltValue = analogRead(voltagePin); 
  voltage = voltValue / 1023.0 * vcc * vd_factor; 

  int tempValue = analogRead(tempPin); 
  float tempVoltage = tempValue / 1023.0 * 3.3 ;
  temperatureC = (tempVoltage - 0.5) * 100 ;  //converting from 10 mv per degree wit 500 mV offset
    
  // Open serial coms to console
  Serial.begin(9600);
  Serial.print("Nerf Chronos ");
  Serial.print(voltage);
  Serial.print(" V  " );
  Serial.print(temperatureC, 1);
  Serial.println(" C");
  Serial.println("Shot, time(s), fps, V, rpm, temp(C)");
}


void sensor_interrupt(){
  if (digitalRead(sensorPin)) { // LOW if dart present
    time1_us = micros(); 
    flag1 = true;
  }
  else {                        // dart exit
    if(flag1){
      time2_us = micros();
      flag2 = true; 
      flag1 = false;  
    }  
  }
}


void flywheel_interrupt(){
    mtr_time2_us = mtr_time1_us;
    mtr_time1_us = micros(); 
}


void button_interrupt(){        // reset shot count (clip reload)
  shot_count = 0;
  speed_fps = 0;
  interval_total_us = 0;
}


void loop() {
  if (flag2){ // dart has exited gate
    shot_count += 1;
    interval_us = time2_us - time1_us;
    speed_fps = dartLength_mm / interval_us / 25.4 / 12 * 1E+6;               // feet per second
    speed_mps = dartLength_mm / interval_us / 1000 * 1E+6;                    // meter per second
    speed_mph = dartLength_mm / interval_us / 25.4 / 12 * 1E+6 / 5280 * 3600; // miles per hour  

    // figure out average (shifting to ms)
    interval_total_us += interval_us;
    //ave_fps = dartLength_mm / (interval_total_us / shot_count) / 25.4 / 12 * 1E+6;

    int mtr_interval_us = mtr_time1_us - mtr_time2_us;
    if (mtr_interval_us > 0){
      rpm = 1E+6 * 60 / mtr_interval_us;
    }
    if ((micros() - mtr_time1_us) > 1E+6){
      rpm = 0;
    }

    int voltValue = analogRead(voltagePin); 
    float voltage = voltValue / 1023.0 * vcc * vd_factor; 

    int tempValue = analogRead(tempPin); 
    float tempVoltage = tempValue / 1023.0 * vcc;
    float temperatureC = (tempVoltage - 0.5) * 100 ;  //converting from 10 mv per degree wit 500 mV offset

    
    if (speed_fps > 0){
      Serial.print(shot_count);
      Serial.print(", ");
      Serial.print(micros() - mtr_time1_us);
      Serial.print(" us, ");
      //Serial.print(millis() / 1000.0);
      //Serial.print(", ");
      Serial.print(speed_fps, 1);
      Serial.print(" fps, ");
      Serial.print(voltage, 2);
      Serial.print(" v, ");
      Serial.print(rpm, 1);
      Serial.print(" rpm, ");
      Serial.println(temperatureC, 2);
    }
    else{ // bad data? 
      Serial.println(interval_us);
    }
    flag2 = false; // reset gate
  }
  if (shot_count == 0){
    if (millis() > nextTime){
      nextTime = millis() + 1000; 
      int mtr_interval_us = mtr_time1_us - mtr_time2_us;
      if (mtr_interval_us > 0){
        rpm = 1E+6 * 60 / mtr_interval_us;
      }
      if ((micros() - mtr_time1_us) > 1E+5){
        rpm = 0;
      }
      
      int voltValue = analogRead(voltagePin); 
      float voltage = voltValue / 1023.0 * vcc * vd_factor; 
  
      int tempValue = analogRead(tempPin); 
      float tempVoltage = tempValue / 1023.0 * vcc;
      float temperatureC = (tempVoltage - 0.5) * 100 ;  //converting from 10 mv per degree wit 500 mV offset

      Serial.print(", ");
      //Serial.print(millis() / 1000.0);
      Serial.print(mtr_interval_us);
      Serial.print(", ");
      Serial.print(", ");
      Serial.print(voltage, 2);
      Serial.print(", ");   
      Serial.print(rpm);
      Serial.print(", ");
      Serial.println(temperatureC, 2);  
    }
  }

}
