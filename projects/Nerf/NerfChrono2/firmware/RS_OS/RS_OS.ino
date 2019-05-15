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
float voltage = 0;
float vd_factor = 10.7;
float temperatureC;
int rpm = 0;
int screen = 0;

#define LOGO16_GLCD_HEIGHT 16 
#define LOGO16_GLCD_WIDTH  16 
static const unsigned char PROGMEM logo16_glcd_bmp[] =
{ B00000000, B11000000,
  B00000001, B11000000,
  B00000001, B11000000,
  B00000011, B11100000,
  B11110011, B11100000,
  B11111110, B11111000,
  B01111110, B11111111,
  B00110011, B10011111,
  B00011111, B11111100,
  B00001101, B01110000,
  B00011011, B10100000,
  B00111111, B11100000,
  B00111111, B11110000,
  B01111100, B11110000,
  B01110000, B01110000,
  B00000000, B00110000 };

#if (SSD1306_LCDHEIGHT != 64)
#error("Height incorrect, please fix Adafruit_SSD1306.h!");
#endif


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
  attachInterrupt(flyWheelPin, flywheel_interrupt, FALLING);
  attachInterrupt(buttonPin1, button_interrupt1, FALLING);
  attachInterrupt(buttonPin3, button_interrupt3, FALLING);
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

  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3D (for the 128x64)

  //display.display();
  //delay(2000);
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
  shot_count = 0;
  speed_fps = 0;
  interval_total_us = 0;
}


void button_interrupt3(){        // reset shot count (clip reload)
  screen += 1;
  if (screen > 2){
    screen =0;
  }
  //while(!digitalRead(buttonPin1){}
}


void showDisplay(){
  int x=0;
  int y=0;
  display.clearDisplay();
  if (screen == 0){
    display.setTextSize(2);
    display.setTextColor(WHITE);
    if (voltage < 10){
      x = 4 * 12;
    }
    else{
      x = 3 * 12;
    } 
    display.setCursor(x, y);
    display.print(voltage);
    display.println(" V" );
  
    x = 4 * 12;
    display.setCursor(x, 16);  
    display.print(temperatureC, 1);
    display.println(" C");
  
    speed_fps = 12.2;
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
  if (screen == 1){
    display.setTextSize(2);
    display.setTextColor(WHITE);
    display.setCursor(0,0);
    display.print("Screen 1");
    display.setCursor(0,16);
    display.setTextSize(6);
    display.print("12345");
  }
  if (screen == 2){
    display.setTextSize(2);
    display.setTextColor(WHITE);
    display.setCursor(0,0);
    display.print("Screen 2");
  }
  
  display.display();
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
    //rpm = 1E+6 * 60 / mtr_interval_us;
    Serial.println(micros());
    if(mtr_interval_us > 0){
      rpm = 1E+6 * 60 / mtr_interval_us;
    }
    else{
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
      Serial.print(interval_us);
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
      voltage = voltValue / 1023.0 * vcc * vd_factor; 
  
      int tempValue = analogRead(tempPin); 
      float tempVoltage = tempValue / 1023.0 * vcc;
      temperatureC = (tempVoltage - 0.5) * 100 ;  //converting from 10 mv per degree wit 500 mV offset

      Serial.print(", ");
      Serial.print(millis() / 1000.0);
      Serial.print(", ");
      Serial.print(mtr_interval_us);
      Serial.print(", ");
      Serial.print(voltage, 2);
      Serial.print(", ");   
      Serial.print(rpm, 1);
      Serial.print(", ");
      Serial.println(temperatureC, 2);  
      showDisplay();
    }
    
  }

}
