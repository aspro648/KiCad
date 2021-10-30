/*************************************************** 


 ****************************************************/

#include <Wire.h> // Enable this line if using Arduino Uno, Mega, etc.
#include <Adafruit_GFX.h>
#include "Adafruit_LEDBackpack.h"

Adafruit_7segment display1 = Adafruit_7segment();
Adafruit_7segment display2 = Adafruit_7segment();


// finish line
int g1_LED = 12;
int g1_NPN1 = A1;  // exit
int g1_NPN2 = A2;  // entrance
bool DISPLAY1 = false;
bool DISPLAY2 = false;


// staring line
int g2_LED = 10;
int g2_NPN1 = A3;  // exit
int g2_NPN2 = A4;  // entrance


volatile unsigned long timer_start_us;
volatile unsigned long timer_stop_us;
volatile bool timing = false;


int checkI2C(int address){
  Wire.beginTransmission(address);
  return(Wire.endTransmission()); 
}


void setup() {

  pinMode(g1_LED, OUTPUT);
  pinMode(g1_NPN1, INPUT);  
  pinMode(g1_NPN2, INPUT);
  
  pinMode(g2_LED, OUTPUT);
  pinMode(g2_NPN1, INPUT);  
  pinMode(g2_NPN2, INPUT);
  
  Serial.begin(9600);
  while (!Serial); // Waiting for Serial Monitor

  // check I2C connections
  byte error, address; //variable for error and I2C address
  Wire.begin(); // Wire communication begin

  if(!checkI2C(0x70)){
    Serial.println("Display 1 dectected");
    DISPLAY1 = true;
  }
  if(!checkI2C(0x71)){
    Serial.println("Display 2 dectected");
    DISPLAY2 = true;
  }


  
  display1.begin(0x70);
  display2.begin(0x71);


  Serial.print("Gate 1 NPN1 = ");
  Serial.println(analogRead(g1_NPN1));
  Serial.print("Gate 1 NPN2 = ");
  Serial.println(analogRead(g1_NPN2)); 
  Serial.print("Gate 2 NPN1 = ");
  Serial.println(analogRead(g2_NPN1));
  Serial.print("Gate 2 NPN2 = ");
  Serial.println(analogRead(g2_NPN2)); 


  attachInterrupt(digitalPinToInterrupt(g1_NPN1), g1_exit, FALLING);
  attachInterrupt(digitalPinToInterrupt(g1_NPN2), g1_entrance, FALLING);

  attachInterrupt(digitalPinToInterrupt(g2_NPN1), g2_exit, FALLING);
  attachInterrupt(digitalPinToInterrupt(g2_NPN2), g2_entrance, FALLING);
  
  display1.println();
  display1.writeDisplay();
  display2.println();
  display2.writeDisplay(); 
}



void loop() {
  unsigned long duration_us;
  float duration_s;

  if(timing){
    //float time_s = float((micros() - timer_start_us) / 1000000.0);
    //display1.println(time_s);
    //Serial.println(time_s);
    //display1.writeDisplay();     
  }
  if(timer_stop_us){
    duration_us = timer_stop_us - timer_start_us;
    float duration_s = duration_us / 1000000.0;
    display1.println(duration_us/1000.0);
    display1.writeDisplay(); 
    Serial.print(duration_us);  
    Serial.print("us,  scale mph = ");   
    Serial.println(2911000.0 / duration_us);
    display2.println(2911000.0 / duration_us);
    display2.writeDisplay();  
    timer_stop_us = 0;   
    timing = false;
  }

  delay(1);

}



// interrupt routines
void g1_entrance() {
  timer_start_us = micros();
  timing = true;
  //digitalWrite(g1_LED, HIGH);
}


void g1_exit(){
  if(timing){
    timer_stop_us = micros();    
    //digitalWrite(g1_LED, LOW);
  }
}


void g2_entrance() {
  timer_start_us = micros();
  timing = true;
  digitalWrite(g2_LED, HIGH);
}


void g2_exit(){
  if(timing){
    timer_stop_us = micros();    
    digitalWrite(g2_LED, LOW);
  }
}
