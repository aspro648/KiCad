/*

A0 temperature
A1 photo gate
A2 button 1
A3 button 2
A4 button 3
A5 voltage

D7 flywheel

  trigger_switch
  rev_switch
  pusher_switch



*/


#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include "splash.h"

#define OLED_RESET 4
Adafruit_SSD1306 display(OLED_RESET);


int sensorPin = A1;        
int buttonReset = A2;  
int buttonScreen = 2;         
int buttonPin3 = A3;        // A4 interupt interferes with D7
int voltagePin = A5;
int flyWheelPin = 7;
int tempPin = A0;

int trigger_switch = 13;
int rev_switch = 12;
int pusher_switch = 11;

int flywheelPWM = 4;
int pusherIn1 = 10; 
int pusherIn2 = 9;

volatile int shot_count = 24;
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
float vd_factor = 10.8;
int rpm = 0;
float voltage = 0;
float temperatureC = 0;
int screen = 0;
long debounce = 0;
float version = 0.1;
volatile int irc = 0;

volatile bool trigger_state = false;
volatile bool last_trigger_state = false;

volatile bool braking_flag = false; // true if breaking pusher
volatile bool push_flag = false;     // NOT USED
volatile bool pushing_flag = false;  // true if firing
long brake_time_ms = 225;            // time breaking applied after cycling stops
long pusher_accel_time_ms = 200;     // time full power applied to pusher motor
int pusher_idle_pwm = 80;
int pusher_full_pwm = 255;
volatile long pusher_accel_till_ms = 0;       // time to full accel till

volatile bool trigger_delay = false;
int trigger_delay_ms = 250;
volatile long trigger_delay_til = 0;

volatile long brake_till_ms = 0;     // time to apply breaking until
volatile long push_time_ms = 0;
volatile int cycle_count = 0;          // number of pusher cycles
volatile int cycle_limit = 3;
volatile bool backing = false;         // pusher out of position
bool SAFE = false;


bool rev_state = false;              // true when flywheels energized
int flywheel_speed = 0;              // current accel pwm
bool idle_state = false;
long debounce_time_ms = 0;
long starting_accel_time_ms = 250;      // length of time for full accel
int flywheel_idle_pwm = 80;          // pwm after full accel
int flywheel_full_pwm = 255;
volatile long accel_till_ms = 0;       // time to full accel till


    
void setup() {                  
  // pin setup
  pinMode(sensorPin, INPUT);  // should have external pull-up or use INPUT_PULLUP
  pinMode(buttonScreen, INPUT_PULLUP);
  pinMode(buttonReset, INPUT_PULLUP);
  pinMode(buttonPin3, INPUT_PULLUP);
  pinMode(flyWheelPin, INPUT);
  pinMode(voltagePin, INPUT);
  pinMode(tempPin, INPUT);

  pinMode(trigger_switch, INPUT_PULLUP);
  pinMode(rev_switch, INPUT_PULLUP);
  pinMode(pusher_switch, INPUT_PULLUP);
  pinMode(flywheelPWM, OUTPUT);
  
  pinMode(pusherIn1, OUTPUT);
  pinMode(pusherIn2, OUTPUT);
 
  // Open serial coms to console
  Serial.begin(9600);
  Serial.println("Nerf Chronos, waiting for shot . . . ");
  Serial.println("Shot, time(s), fps, V, rpm, temp(C)");
  
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3D (for the 128x64)
  digitalWrite(flywheelPWM, LOW);             // not sure why needed, otherwise flywheels rev
  //analogWrite(pusherIn1, 0);   
  analogWrite(pusherIn2, 0);  
  //display.clearDisplay();
  display.display();  
        analogWrite(pusherIn1, 0);   
        analogWrite(pusherIn2, pusher_idle_pwm); 
  
  delay(1000);
        analogWrite(pusherIn1, 0);   
        analogWrite(pusherIn2, 0); 
  
  //display.clearDisplay();
  //showSplash();
  //display.display();  
  //delay(2000);

  /*
      analogWrite(pusherIn1, 250);   
      analogWrite(pusherIn2, 0);
      delay(70);
      analogWrite(pusherIn1, 0);   
      analogWrite(pusherIn2, 0);    
  delay(1000);
  */
  attachInterrupt(sensorPin, sensor_interrupt, CHANGE);
  attachInterrupt(buttonReset, button_reset, LOW);
  attachInterrupt(buttonScreen, button_screen, LOW);
  attachInterrupt(buttonPin3, button_cc, FALLING);  
  attachInterrupt(flyWheelPin, flywheel_interrupt, FALLING);
  attachInterrupt(pusher_switch, pushing_interrupt, FALLING);
  attachInterrupt(trigger_switch, trigger_interrupt, FALLING);
  attachInterrupt(rev_switch, rev_interrupt, FALLING);
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


void button_cc(){
  irc += 1;
  cycle_limit += 1;
  if(cycle_limit > 3){
    cycle_limit = 1;
  }
}


void button_reset(){        // reset shot count (clip reload)
  if(millis() > debounce){
    if (!digitalRead(buttonReset)){
      debounce = millis()+ 100;
      shot_count = 0;
      speed_fps = 0;
      interval_total_us = 0;
      ave_fps = 0;
      //if (screen == 0 || screen > 4){// show a screen that shows shot count
      //  screen = 1;
      //}
    }
  }
}


void button_screen(){        // reset shot count (clip reload)
  if(millis() > debounce){
    if (!digitalRead(buttonScreen)){
      debounce = millis()+ 100;
      screen += 1;
      if (screen == 2){screen = 5;}
      if (screen == 3){screen = 5;}
      if (screen == 4){screen = 5;}
      if (screen > 6){
        screen = 0;
      }
    }
  } 
}


void pushing_interrupt2(){
  irc += 1;
  if(!backing){
    cycle_count += 1;
    if (cycle_count >= cycle_limit){
      pushing_flag = false;
      brake_till_ms = millis() + brake_time_ms;
      cycle_count = 0;
    }
  }
  else{
    pushing_flag = false;
    backing = false;
    brake_till_ms = millis() + brake_time_ms;
  }
}


void pushing_interrupt(){
  irc += 1;

  cycle_count += 1;
  if (cycle_count >= cycle_limit){
    pushing_flag = false;
    braking_flag = true;
    brake_till_ms = millis() + brake_time_ms;
    analogWrite(pusherIn1, pusher_full_pwm);
    analogWrite(pusherIn2, pusher_full_pwm);   
    //cycle_count = 0;
    flywheel_speed = flywheel_idle_pwm;
  }
  else{
    pusher_accel_till_ms = millis() + pusher_accel_time_ms;
  }
  /*else{
    pushing_flag = false;
    backing = false;
    brake_till_ms = millis() + brake_time_ms;
  }*/
}


void rev_interrupt(){
  if (millis() > debounce_time_ms){
    if (rev_state){
      rev_state = false;
    }
    else{
      rev_state = true;
      accel_till_ms = millis() + starting_accel_time_ms;
    }
  }
  debounce_time_ms = millis() + 250;
}


void trigger_interrupt(){
  cycle_count = 0;
  flywheel_speed = flywheel_full_pwm;
  rev_state = true;
  trigger_delay = true;
  trigger_delay_til = millis() + trigger_delay_ms;
  pushing_flag = true;
  pusher_accel_till_ms = millis() + pusher_accel_time_ms + trigger_delay_ms;
  flywheel_speed = flywheel_full_pwm;
}


void showSplash(){
  display.clearDisplay();
  display.drawBitmap(0, 0, rapidstrike2, 128, 64, 1);
  display.setTextColor(WHITE);
  display.setTextSize(1);
  display.setCursor(20, 56);
  display.print("Version");
  display.setCursor(88, 56);
  display.print(version, 1);
}


void graph(float minimum, float maximum, float value){
  //float fullV = 8.4;
  //float empV = 6.5;
  float cur = value - minimum;
  float gage = cur / (maximum - minimum) * 8;
  //Serial.println(gage);
  for (int xx=0; xx<8; xx++){
    if(xx < gage){
      display.fillRect(xx * 16, 0, 15, 15, WHITE);
    }
    else {
      display.drawRect(xx * 16, 0, 15, 15, WHITE);
    }
  }
  if(value < minimum && !((millis()/1000) % 2)){
    display.fillRect(0, 0, 15, 15, WHITE);
  }
}


void pews(){ // display firing mode
  for (int pew=0; pew<3; pew++){
    if(pew < cycle_limit){
      display.fillRoundRect(pew * 12, 40, 8, 21, 3, WHITE);
    }
    else {
      display.drawRoundRect(pew * 12, 40, 8, 21, 3, WHITE);
    }
  }
}


void showDisplay(){
  int x=0;
  int y=0;
  display.clearDisplay();

  drawLine(0, 0, 127, 0, uint16_t WHITE);
  drawLine(0, 0, 0, 63, uint16_t WHITE);
  drawLine(0, 63, 127, 63, uint16_t WHITE);
  drawLine(127, 0, 127, 63, uint16_t WHITE);
  display.setTextSize(2);
  display.setTextColor(WHITE);
  if (screen == 0){
    if (voltage < 10){
      x = 5 * 12;
    }
    else{
      x = 4 * 12;
    } 
    display.setCursor(x, y);
    display.print(voltage,1);
    display.println(" V" );


    if(shot_count < 10){
      x = 3 * 12;
    }
    else{
      x = 2 * 12;      
    }
    display.setCursor(x, 16);  
    display.print(shot_count);
    display.println(" shots");
    
    //x = 4 * 12;
    //display.setCursor(x, 16);  
    //display.print(temperatureC, 1);
    //display.println(" C");
     
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
    //display.setCursor(x, 48);   
    //display.print(rpm);
    //display.println(" RPM");
    x = 4 * 12;
    display.setCursor(x, 48);
    display.print(cycle_limit);
    display.print(" shot");
  }

  if (screen == 1){
    graph(6.5, 8.4, voltage); // min, max, value
    pews();
    display.setCursor(0, 16);
    display.print("BAT");
  }
    
  if (screen == 2){
    screen = 4;
    graph(24, 40, temperatureC); // min, max, value
    display.setCursor(0, 16);
    display.print("TEMP");
  }

  if (screen == 3){
    graph(0, 100, speed_fps); // min, max, value
    display.setCursor(0, 16);
    display.print("FPS");
  }
    
  if (screen == 4){
    graph(0, 25000, rpm); // min, max, value
    display.setCursor(0, 16);
    display.print("RPM");
  }
  if (screen == 5){
    display.setCursor(0, 0);
    //display.print("cycles: ");
    //display.println(cycle_limit);
    display.print("rev_state: ");
    display.println(rev_state);    
    display.print("fws: ");
    display.println(flywheel_speed);  
    display.print("PUSH FL: ");
    display.println(pushing_flag); 
    display.print("IRC: ");
    display.println(irc);  
    //display.print("CC: ");
    //display.println(cycle_count);  
  }
    
  if (screen > 0 and screen < 5){
    display.setCursor(54,18);
    display.setTextSize(6);

    if(shot_count<10){
      display.print(" ");
    }
    display.print(shot_count);
  }
  if (screen == 6){
    showSplash();
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
  //if ((rpm > 0) && (screen == 5)){  // switch from splash if accel or trigger
  //  screen = 1;
  //}
  if (flag2){ // dart has exited gate
    shot_count += 1;
    interval_us = time2_us - time1_us;
    speed_fps = dartLength_mm / interval_us / 25.4 / 12 * 1E+6;               // feet per second
    speed_mps = dartLength_mm / interval_us / 1000 * 1E+6;                    // meter per second
    speed_mph = dartLength_mm / interval_us / 25.4 / 12 * 1E+6 / 5280 * 3600; // miles per hour  

    // figure out average (shifting to ms)
    interval_total_us += interval_us;
    ave_fps = dartLength_mm / (interval_total_us / shot_count) / 25.4 / 12 * 1E+6;
    /*
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
    */
    flag2 = false; // reset gate }
  }
  
  if (millis() > nextTime){
    nextTime = millis() + 250; 
    showDisplay();
  }

/*
  // handle rev switch 
  if (!digitalRead(rev_switch)){
    if(!SAFE){
      if(!rev_state){ // accel has been pushed
        rev_state = true;
        accel_till_ms = millis() + starting_accel_time_ms;
        flywheel_speed = flywheel_full_pwm;
      }
      //if(!digitalRead(trigger_switch)){  // full speed overide by trigger
      //  flywheel_speed = 255;
      //}
      else{  // accel if needed, else coast
        if (millis() < accel_till_ms){
          flywheel_speed = flywheel_full_pwm;
        }
        else{
          flywheel_speed = flywheel_idle_pwm;
        }
      }           
    }
  }
  else{
    flywheel_speed = 0;
    rev_state = false;
  } */

  // handle rev switch   
  if(rev_state){
    if (millis() < accel_till_ms){
      flywheel_speed = flywheel_full_pwm;
    }
    else{
      flywheel_speed = flywheel_idle_pwm;
    }
  }
  else{
    flywheel_speed = 0;
  }   
  if(pushing_flag){
    flywheel_speed = flywheel_full_pwm;
  }
  analogWrite(flywheelPWM, flywheel_speed);

  if (trigger_delay){
    if(millis() > trigger_delay_til){
      trigger_delay = false;
    }
  }
  else{
    if (pushing_flag){
      if (millis() < pusher_accel_till_ms){
        analogWrite(pusherIn1, pusher_full_pwm);   
        analogWrite(pusherIn2, 0);
      }
      else{
        analogWrite(pusherIn1, pusher_idle_pwm);   
        analogWrite(pusherIn2, 0);      
      }
    }
  }
  if (braking_flag){
    flywheel_speed = flywheel_idle_pwm;
    if(millis() < brake_till_ms){
      analogWrite(pusherIn1, pusher_full_pwm);
      analogWrite(pusherIn2, pusher_full_pwm);      
    }
    else{
      braking_flag = false;
      analogWrite(pusherIn1, 0);
      analogWrite(pusherIn2, 0);
    }
  }

  
  /*
  // handle pushing
  if (pushing_flag){
    if(backing){
      analogWrite(pusherIn1, 0);   
      analogWrite(pusherIn2, 125);      
    }
    else{
      if(!SAFE){
      analogWrite(pusherIn1, 100);   
      analogWrite(pusherIn2, 0);
      }
    }
  }
  else {
    if (digitalRead(pusher_switch)){// out of position
      backing = true;
      pushing_flag = true;
    }
    else {
      if (millis() < brake_till_ms){ // brake for a second
        if(!SAFE){
          analogWrite(pusherIn1, 255);   
          analogWrite(pusherIn2, 255);     
        } 
      }
      else{
        analogWrite(pusherIn1, 0);   
        analogWrite(pusherIn2, 0);
      }
    }     
  }*/



  // serial display ever 1/10th second
  if(!((millis() /100) % 2)){
    if(!digitalRead(rev_switch)){
      Serial.print(voltage);
      Serial.print(",");
      Serial.print(flywheel_speed);
      Serial.print(",");

      Serial.print(millis() / 1000.0, 2);
      Serial.print(",");
      //Serial.print(!digitalRead(trigger_switch));
      //Serial.print(",");
      Serial.println(rpm);
    }
  }
}
