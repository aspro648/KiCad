/*

A0 temperature
A1 photo gate
A2 button 1
A3 button 2
A4 button 3
A5 voltage

D7 flywheel

  trigger_switch
  accel_switch
  pusher_switch



*/


#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

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
int accel_switch = 12;
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
int screen = 5;
long debounce = 0;
float version = 0.1;
volatile bool trigger_state = false;
volatile int irc = 0;

volatile bool push_flag = false;
volatile bool pushing_flag = false; 
volatile long brake_time_ms = 0;
volatile int cycle_count = 0;
volatile bool backing = false;


const unsigned char rapidstrike2 [] = {
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x01, 0xFF, 0x80, 0x00, 0x01, 0xC1, 0xE0, 0x1F, 0x80, 0x00, 0x77, 0x80, 0x00, 0x00, 0x00,
0x00, 0x00, 0xFF, 0xC0, 0x00, 0x01, 0xC0, 0xE0, 0x7F, 0x84, 0x00, 0x73, 0x80, 0x00, 0x00, 0x00,
0x00, 0x00, 0xF0, 0xE0, 0x00, 0x00, 0x00, 0xE0, 0x70, 0x8C, 0x00, 0x03, 0x80, 0x00, 0x00, 0x00,
0x00, 0x00, 0xF0, 0xE0, 0x00, 0x00, 0x00, 0xE0, 0x7C, 0x1C, 0x00, 0x03, 0x80, 0x00, 0x00, 0x00,
0x00, 0x00, 0xFF, 0xC3, 0xE7, 0xB3, 0xC6, 0xE0, 0x7F, 0x3E, 0xF6, 0xF3, 0x9C, 0x78, 0x00, 0x00,
0x00, 0x00, 0xFF, 0xE3, 0x73, 0xF9, 0xCF, 0xE0, 0x3F, 0x9C, 0x7E, 0x73, 0xB0, 0xEC, 0x00, 0x00,
0x00, 0x00, 0xF0, 0xE0, 0x73, 0xB9, 0xCE, 0xE0, 0x0F, 0x9C, 0x70, 0x73, 0xF8, 0xFC, 0x00, 0x00,
0x00, 0x00, 0xF0, 0xE3, 0xF3, 0xB9, 0xCE, 0xE0, 0x43, 0x9C, 0x70, 0x73, 0xBC, 0xE0, 0x00, 0x00,
0x00, 0x00, 0xF0, 0xE7, 0x73, 0xB9, 0xCE, 0xE0, 0x63, 0x1C, 0x70, 0x73, 0x9C, 0xEC, 0x00, 0x00,
0x00, 0x01, 0xF8, 0x73, 0xFB, 0xF3, 0xE7, 0xF0, 0x7E, 0x1E, 0xF8, 0xFF, 0xDE, 0x78, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x03, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x03, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x07, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7F, 0xFF, 0xFF, 0xFE, 0x00, 0x00, 0x00, 0x0E, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x1B, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x7F, 0xFF, 0xFF, 0xFF, 0x80, 0x00, 0x00, 0x1B, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0xFF, 0xE0, 0x00, 0x3F, 0xD9, 0xB3, 0x00, 0x1B, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0xFF, 0xC0, 0x00, 0x1F, 0xFF, 0xFF, 0xE0, 0x1B, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x1F, 0xDF, 0xFF, 0xFF, 0xFC, 0x3F, 0xFF, 0xFF, 0xF8, 0x1B, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0xFF, 0xFF, 0xFF, 0xFE, 0x7F, 0xF9, 0xBA, 0xFC, 0x1B, 0x00,
0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0x0F, 0xDB, 0x5F, 0x87, 0xFF, 0xFF, 0xE7, 0xFB, 0x00,
0x00, 0x00, 0x00, 0x1F, 0xFF, 0xFF, 0xFF, 0x00, 0x07, 0xFF, 0x07, 0xF7, 0x3B, 0x80, 0x03, 0x00,
0x01, 0xF0, 0x00, 0x3F, 0xFF, 0xFF, 0xFE, 0x00, 0x00, 0x00, 0x0F, 0xC0, 0x00, 0x08, 0x03, 0xE0,
0x02, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF, 0xF8, 0x00, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF, 0xF8, 0x40, 0x10,
0x0E, 0x00, 0x1F, 0xFF, 0xFF, 0xFF, 0xF0, 0x00, 0x1F, 0xFF, 0xC4, 0x31, 0xFF, 0xFF, 0xF0, 0x90,
0x0F, 0xF0, 0x00, 0x1F, 0xFF, 0xFF, 0xE0, 0x00, 0x3F, 0xFF, 0xFF, 0xFD, 0xEF, 0xDF, 0x7F, 0xF0,
0x07, 0xF0, 0x00, 0x1F, 0xFF, 0xFF, 0xC0, 0x00, 0x3F, 0xFF, 0xFF, 0xF9, 0xFF, 0xFF, 0x7F, 0xF0,
0x07, 0xF0, 0x1F, 0xFF, 0xFF, 0xFF, 0xC0, 0x00, 0x7F, 0xFF, 0xC4, 0x33, 0xFF, 0xFF, 0xBF, 0xF0,
0x07, 0xF8, 0x00, 0x0F, 0xFF, 0xFF, 0x80, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xF0,
0x07, 0xFE, 0x00, 0x07, 0xFF, 0xFF, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xE3, 0xE0,
0x07, 0xFF, 0xFD, 0xF9, 0xFF, 0xFC, 0x7F, 0xC7, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xE3, 0x00,
0x07, 0xFC, 0x0F, 0xC0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xE3, 0x00,
0x07, 0xF8, 0x1E, 0x40, 0x07, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xE3, 0x00,
0x07, 0xF8, 0x3F, 0x80, 0x00, 0x00, 0xFF, 0xA3, 0xFF, 0xFF, 0xFF, 0xFF, 0xE0, 0x00, 0x03, 0x00,
0x07, 0xF0, 0x7F, 0x00, 0x00, 0x00, 0xFE, 0xE1, 0xFF, 0xFF, 0xFF, 0xFF, 0xD6, 0xAD, 0x43, 0x00,
0x07, 0xF8, 0x7B, 0x00, 0x00, 0x00, 0xFF, 0x73, 0xFF, 0xFF, 0xFF, 0xFF, 0xDF, 0xFF, 0xDE, 0x00,
0x07, 0xF8, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xF0, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFC, 0x00,
0x07, 0xFD, 0xFF, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFD, 0x57, 0xFF, 0xFF, 0xBF, 0xFF, 0xE0, 0x00,
0x07, 0xFF, 0xE2, 0x00, 0x00, 0x07, 0xFF, 0xBE, 0x7F, 0xFF, 0xFF, 0xA2, 0x00, 0x00, 0x00, 0x00,
0x0F, 0xFF, 0xC0, 0x00, 0x00, 0x07, 0xFF, 0x21, 0x7F, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00,
0x07, 0xFF, 0x80, 0x00, 0x00, 0x0F, 0xFF, 0xC0, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00,
0x03, 0xFF, 0x00, 0x00, 0x00, 0x0F, 0xFF, 0x80, 0x3F, 0xFF, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00,
0x01, 0xFF, 0x80, 0x00, 0x00, 0x0F, 0xFF, 0x00, 0x3F, 0xFF, 0xCF, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0xFF, 0x80, 0x00, 0x00, 0x0F, 0xFE, 0x00, 0x30, 0x01, 0xC6, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x7F, 0x80, 0x00, 0x00, 0x0F, 0xFE, 0x00, 0x20, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x3F, 0x00, 0x00, 0x00, 0x0F, 0x7E, 0x00, 0x3F, 0xFF, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0xBE, 0x00, 0x3F, 0xFD, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0xFE, 0x00, 0x30, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x7E, 0x00, 0x3F, 0xFD, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x3F, 0xFD, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x20, 0x01, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x20, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0xFF, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0xFD, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0xFD, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0xFD, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0xFD, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0xFF, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00,
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0xFF, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00
};

    
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
  pinMode(accel_switch, INPUT_PULLUP);
  pinMode(pusher_switch, INPUT_PULLUP);
  pinMode(flywheelPWM, OUTPUT);
  
  pinMode(pusherIn1, OUTPUT);
  pinMode(pusherIn2, OUTPUT);

  trigger_state = false;
   
  // Open serial coms to console
  Serial.begin(9600);
  Serial.println("Nerf Chronos, waiting for shot . . . ");
  Serial.println("Shot, time(s), fps, V, rpm, temp(C)");
  
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3D (for the 128x64)
  digitalWrite(flywheelPWM, LOW);             // not sure why needed, otherwise flywheels rev
  display.clearDisplay();
  display.display();  
  delay(1000);
  //display.clearDisplay();
  //showSplash();
  //display.display();  
  //delay(2000);
  
      analogWrite(pusherIn1, 250);   
      analogWrite(pusherIn2, 0);
      delay(70);
      analogWrite(pusherIn1, 0);   
      analogWrite(pusherIn2, 0);    
  delay(1000);
  attachInterrupt(sensorPin, sensor_interrupt, CHANGE);
  attachInterrupt(buttonReset, button_reset, LOW);
  attachInterrupt(buttonScreen, button_screen, LOW);
  attachInterrupt(flyWheelPin, flywheel_interrupt, FALLING);
  attachInterrupt(pusher_switch, pushing_interrupt, FALLING);
  attachInterrupt(trigger_switch, trigger_interrupt, FALLING);

  
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
      if (screen > 6){
        screen = 0;
      }
    }
  } 
}


void pushing_interrupt(){

  if(!backing){
    cycle_count += 1;
    if (cycle_count > 2){
      pushing_flag = false;
      brake_time_ms = millis() + 1000;
      cycle_count = 0;
    }
  }
  else{
    pushing_flag = false;
    backing = false;
    brake_time_ms = millis() + 1000;
  }
}


void trigger_interrupt(){
  pushing_flag = true;
  irc += 1;
  //brake_time_ms = millis() + 1000;
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


void showDisplay(){
  int x=0;
  int y=0;
  display.clearDisplay();
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

  if (screen == 1){
    graph(6.5, 8.4, voltage); // min, max, value
    display.setCursor(0, 16);
    display.print("BAT");
  }
    
  if (screen == 2){
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
    display.print("TRIGGER: ");
    display.println(digitalRead(trigger_switch));
    //display.print("  ACCEL: ");
    //display.println(digitalRead(accel_switch));    
    display.print("PUSH SW: ");
    display.println(digitalRead(pusher_switch));  
    display.print("PUSH FL: ");
    display.println(pushing_flag); 
    display.print("IRC: ");
    display.println(irc);  
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
    flag2 = false; // reset gate
  }
  if (millis() > nextTime){
    nextTime = millis() + 250; 
    showDisplay();
  }
  if (!digitalRead(accel_switch)){
    digitalWrite(flywheelPWM, HIGH);
  }
  else{
    digitalWrite(flywheelPWM, LOW);
  }

  if (pushing_flag){
    if(backing){
      analogWrite(pusherIn1, 0);   
      analogWrite(pusherIn2, 125);      
    }
    else{
      analogWrite(pusherIn1, 255);   
      analogWrite(pusherIn2, 0);
    }
  }
  else {
    if (digitalRead(pusher_switch)){// out of position
      backing = true;
      pushing_flag = true;
    }
    else {
      if (millis() < brake_time_ms){ // brake for a second
        analogWrite(pusherIn1, 255);   
        analogWrite(pusherIn2, 255);      
      }
      else{
        analogWrite(pusherIn1, 0);   
        analogWrite(pusherIn2, 0);
      }
    }     
  }

  //if (!digitalRead(trigger_switch)){
  //  pushing_flag = true;
  //}

}
