/*

A0 temperature
A1 photo gate
A2 button 1
A3 button 2
A4 button 3
A5 voltage

D7 flywheel

*/


#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define OLED_RESET 4
Adafruit_SSD1306 display(OLED_RESET);


int sensorPin = A1;        
int buttonPin1 = A2;  
int buttonPin2 = A3;         
int buttonPin3 = A4;        
int voltagePin = A5;
int flyWheelPin = 7;
int tempPin = A0;
volatile int shot_count = 2;
volatile long time1_us = 0;         // dart enters gate
volatile long time2_us = 0;         // dart exits gate
volatile long mtr_time1_us = 0;
volatile long mtr_time2_us = 0;
long interval_us;          // flight time between entrance and exit
long interval_total_us = 0;// for calculating average
float dartLength_mm = 72;  // mm
float speed_fps = 0;       // feet per second
float speed_mps = 0;       // meters per second
float speed_mph = 0;       // miles per hour
float ave_fps = 0;         // average feet per second
volatile bool flag1 = false;        // dart exits gate
volatile bool flag2 = false;
long nextTime = 0;
float vcc = 3.3;
float vd_factor = 10.7;
int rpm = 0;
float voltage = 0;
float temperatureC = 0;
int screen = 0;
long debounce = 0;


void setup() {                  
  // pin setup
  pinMode(sensorPin, INPUT);  // should have external pull-up or use INPUT_PULLUP
  pinMode(buttonPin1, INPUT_PULLUP);
  pinMode(buttonPin2, INPUT_PULLUP);
  pinMode(buttonPin3, INPUT_PULLUP);
  pinMode(flyWheelPin, INPUT);
  pinMode(voltagePin, INPUT);
  pinMode(tempPin, INPUT);
  
  attachInterrupt(sensorPin, sensor_interrupt, CHANGE);
  attachInterrupt(buttonPin1, button_interrupt1, LOW);
  attachInterrupt(buttonPin2, button_interrupt2, LOW);

  attachInterrupt(flyWheelPin, flywheel_interrupt, FALLING);
  //
  //attachInterrupt(buttonPin3, button_interrupt3, FALLING);
  
  // Open serial coms to console
  Serial.begin(9600);
  Serial.println("Nerf Chronos, waiting for shot . . . ");
  Serial.println("Shot, time(s), fps, V, rpm, temp(C)");

  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3D (for the 128x64)
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


void button_interrupt1(){        // reset shot count (clip reload)
  if(millis() > debounce){
    if (!digitalRead(buttonPin1))1{
      debounce = millis()+ 100;
      shot_count = 0;
      speed_fps = 0;
      interval_total_us = 0;
      ave_fps = 0;
    }
  }
}


void button_interrupt2(){        // reset shot count (clip reload)
  if(millis() > debounce){
    debounce = millis()+ 100;
    screen += 1;
    if (screen > 4){
      screen =0;
    }
  } 
}


void showDisplay(){
  int x=0;
  int y=0;
  display.clearDisplay();


  if (screen == 0){
    display.setTextSize(2);
    display.setTextColor(WHITE);
    if (voltage < 10){
      x = 5 * 12;
    }
    else{
      x = 4 * 12;
    } 
    display.setCursor(x, y);
    display.print(voltage,1);
    display.println(" V" );
  
    x = 4 * 12;
    display.setCursor(x, 16);  
    display.print(temperatureC, 1);
    display.println(" C");
  
    x = 3 * 12;
    if (speed_fps >= 10){
      x = 2 * 12;
    }
    if (speed_fps >= 100){
      x = 1 * 12;
    } 
    if (speed_fps >= 1000){
      x = 0;
    }
    display.setCursor(x, 32);  
    display.print(speed_fps, 1);
    display.println(" fps");
    
    x = 5 * 12;
    if (rpm >= 10){
      x = 4 * 12;
    }
    if (rpm >= 100){
      x = 3 * 12;
    } 
    if (rpm >= 1000){
      x = 2 * 12;
    }
    if (rpm >= 10000){
      x = 1 * 12;
    }  
    if (rpm >= 100000){
      x = 0;
    }  
    display.setCursor(x, 48);   
    display.print(rpm);
    display.println(" RPM");
  }
  else {
    display.setTextSize(2);
    display.setTextColor(WHITE);

    if (screen == 1){
      float fullV = 8.0;
      float empV = 6.5;
      float curV = voltage - empV;
      float gage = curV / (fullV - empV) * 8;
      //Serial.println(gage);
      for (int xx=0; xx<8; xx++){
        if(xx < gage){
          display.fillRect(xx * 16, 0, 15, 15, WHITE);
        }
        else {
          display.drawRect(xx * 16, 0, 15, 15, WHITE);
        }
      }
      if(voltage < empV && !((millis()/1000) % 2)){
        display.fillRect(0, 0, 15, 15, WHITE);
      }
    }
    
    if (screen == 2){
      x = 4 * 12;
      display.setCursor(x, 0);  
      display.print(temperatureC, 1);
      display.println(" C");      
    }

    if (screen == 3){
      x = 3 * 12;
      if (speed_fps >= 10){
        x = 2 * 12;
      }
      if (speed_fps >= 100){
        x = 1 * 12;
      } 
      if (speed_fps >= 1000){
        x = 0;
      }
      display.setCursor(x, 0);  
      display.print(speed_fps, 1);
      display.println(" fps");
    }
    
    if (screen == 4){
      x = 5 * 12;
      if (rpm >= 10){
        x = 4 * 12;
      }
      if (rpm >= 100){
        x = 3 * 12;
      } 
      if (rpm >= 1000){
        x = 2 * 12;
      }
      if (rpm >= 10000){
        x = 1 * 12;
      }  
      if (rpm >= 100000){
        x = 0;
      }  
      display.setCursor(x, 0);   
      display.print(rpm);
      display.println(" RPM");      
    }
    
    display.setCursor(34,16);
    display.setTextSize(6);

    if(shot_count<10){
      display.print(" ");
    }
    display.print(shot_count);
  }
  display.display();
}


void loop() {

  int mtr_interval_us = mtr_time1_us - mtr_time2_us;
  if (mtr_interval_us > 0){
    rpm = 1E+6 * 60 / mtr_interval_us;
  }
  if ((micros() - mtr_time1_us) > 1E+6){
    rpm = 0;
  }

  int voltValue = analogRead(voltagePin); 
  voltage = voltValue / 1023.0 * vcc * vd_factor; 

  int tempValue = analogRead(tempPin); 
  float tempVoltage = tempValue / 1023.0 * vcc;
  temperatureC = (tempVoltage - 0.5) * 100 ;  //converting from 10 mv per degree wit 500 mV offset

  if (flag2){ // dart has exited gate
    shot_count += 1;
    interval_us = time2_us - time1_us;
    speed_fps = dartLength_mm / interval_us / 25.4 / 12 * 1E+6;               // feet per second
    speed_mps = dartLength_mm / interval_us / 1000 * 1E+6;                    // meter per second
    speed_mph = dartLength_mm / interval_us / 25.4 / 12 * 1E+6 / 5280 * 3600; // miles per hour  

    // figure out average (shifting to ms)
    interval_total_us += interval_us;
    ave_fps = dartLength_mm / (interval_total_us / shot_count) / 25.4 / 12 * 1E+6;
   
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
    flag2 = false; // reset gate
  }
  if (millis() > nextTime){
    nextTime = millis() + 250; 
    showDisplay();
  }
}
