/*************************************************** 


 ****************************************************/

#include <Wire.h> // Enable this line if using Arduino Uno, Mega, etc.
#include <Adafruit_GFX.h>
#include "Adafruit_LEDBackpack.h"

Adafruit_7segment display1 = Adafruit_7segment();
Adafruit_7segment display2 = Adafruit_7segment();


bool DISPLAY1 = false;
bool DISPLAY2 = false;

// finish line
int g1_p1 = A0;  // exit
int g1_p2 = A1;  // entrance

// staring line
int g2_p1 = A2;  // exit
int g2_p2 = A3;  // entrance


volatile unsigned long timer_start_us;
volatile unsigned long timer_stop_us = 0;
volatile bool timing = false;



void pciSetup(byte pin){
  // https://playground.arduino.cc/Main/PinChangeInterrupt/
  *digitalPinToPCMSK(pin) |= bit (digitalPinToPCMSKbit(pin));  // enable pin
  PCIFR  |= bit (digitalPinToPCICRbit(pin)); // clear any outstanding interrupt
  PCICR  |= bit (digitalPinToPCICRbit(pin)); // enable interrupt for the group
}


int checkI2C(int address){
  Wire.beginTransmission(address);
  return(Wire.endTransmission()); 
}


void setup() {

  pinMode(g1_p1, INPUT);  
  pinMode(g1_p2, INPUT);

  pinMode(g2_p1, INPUT);  
  pinMode(g2_p2, INPUT);
  
  Serial.begin(9600);

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
  Serial.println(analogRead(g1_p1));
  Serial.print("Gate 1 NPN2 = ");
  Serial.println(analogRead(g1_p2)); 
  Serial.print("Gate 2 NPN1 = ");
  Serial.println(analogRead(g2_p1));
  Serial.print("Gate 2 NPN2 = ");
  Serial.println(analogRead(g2_p2)); 
  
  display1.println();
  display1.writeDisplay();
  display2.println();
  display2.writeDisplay(); 

  pciSetup(g1_p1);
  pciSetup(g1_p2);

}



void loop() {
  unsigned long duration_us;
  float duration_s;

  while(1){  // if testing
    Serial.print(analogRead(g1_p1));
    Serial.print("  ");
    Serial.print(analogRead(g1_p2)); 
    Serial.print("  ");  
    Serial.print(analogRead(g2_p1));
    Serial.print("  ");
    Serial.println(analogRead(g2_p2)); 
    delay(100);
  }


  if(timing){
    if ((micros() - timer_start_us) > 1E+6){
      timing = false;
      Serial.println("reset");
    }
    //float time_s = float((micros() - timer_start_us) / 1000000.0);
    //display1.println(time_s);
    //Serial.println(time_s);
    //display1.writeDisplay();     
  }
  if(timer_stop_us){
    duration_us = timer_stop_us - timer_start_us;
    float duration_s = duration_us / 1000000.0;
    //display1.println(duration_us/1000.0);
    //display1.writeDisplay(); 
    Serial.print(duration_us);  
    Serial.print("us,  scale mph = ");   
    Serial.println(2911000.0 / duration_us);
    //display2.println(2911000.0 / duration_us);
    //display2.writeDisplay();  
    timer_stop_us = 0;
  }
  //Serial.print(analogRead(g1_p1));
  //Serial.print("  ");
  //Serial.println(analogRead(g1_p2)); 
  delay(100);

}



// interrupt routines
ISR (PCINT1_vect) {  // handle pin change interrupt for A0 to A5 here


  /* entrace exit algo
  if (digitalRead(g1_p1) && digitalRead(g1_p2)){
    timer_stop_us = micros();
    timing = false;
  }
  else if ((digitalRead(g1_p1) && !digitalRead(g1_p2)) || (digitalRead(g1_p2) && !digitalRead(g1_p1))){
    timer_start_us = micros();
    timing = true;    
  }
  */
  

  // one way
  if (timing && digitalRead(g1_p1)){ // exit
    timer_stop_us = micros();
    timing = false;
  }
  else if(!timing && digitalRead(g1_p2)){ // entrance
    timer_start_us = micros();
    timing = true;
  }
  


}
