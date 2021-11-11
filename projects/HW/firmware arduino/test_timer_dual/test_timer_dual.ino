/*************************************************** 


 ****************************************************/

#include <Wire.h> // Enable this line if using Arduino Uno, Mega, etc.
#include <Adafruit_GFX.h>
#include "Adafruit_LEDBackpack.h"

Adafruit_7segment display1 = Adafruit_7segment();
Adafruit_7segment display2 = Adafruit_7segment();


bool DISPLAY1 = false;
bool DISPLAY2 = false;

// gate 1
int g1_p1 = A0;  // exit
int g1_p2 = A1;  // entrance

// gate 2
int g2_p1 = A2;  // exit
int g2_p2 = A3;  // entrance


int LED1 = 13;
int LED2 = 8;

volatile unsigned long timer1_start_us;     // speed trap
volatile unsigned long timer1_stop_us = 0; 
volatile bool timing1 = false;

volatile unsigned long timer1_start_ms;     // event timer
volatile unsigned long timer1_stop_ms;
volatile bool racing1 = false;


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

  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  
  Serial.begin(9600);
  Serial.println("test_timer_dual.ino");


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

  digitalWrite(LED1, HIGH);
  digitalWrite(LED2, HIGH);
  delay(1000);
  digitalWrite(LED1, LOW);
  digitalWrite(LED2, LOW);
  
  display1.println();
  display1.writeDisplay();
  display2.println();
  display2.writeDisplay(); 

  pciSetup(g1_p1);
  pciSetup(g1_p2);
  pciSetup(g2_p1);
  pciSetup(g2_p2);

}



void loop() {
  unsigned long duration1_us;  // speed trap time
  unsigned long duration1_ms;  // track time

  while(0){  // if testing
    Serial.print(analogRead(g1_p1));
    Serial.print("  ");
    Serial.print(analogRead(g1_p2)); 
    Serial.print("  ");  
    Serial.print(analogRead(g2_p1));
    Serial.print("  ");
    Serial.println(analogRead(g2_p2)); 
    delay(100);
  }
  while(0){  // if testing
    Serial.print(digitalRead(g1_p1));
    Serial.print("  ");
    Serial.print(digitalRead(g1_p2)); 
    Serial.print("  ");  
    Serial.print(digitalRead(g2_p1));
    Serial.print("  ");
    Serial.println(digitalRead(g2_p2)); 
    delay(100);
  }
  

  if(timing1){
    if ((micros() - timer1_start_us) > 1E+6){
      timing1 = false;
      racing1 = false;
      Serial.println("reset");
    }   
  }
  if(racing1){
    if ((millis() - timer1_start_ms) > 10000){
      racing1 = false;
      digitalWrite(LED1, LOW);
      Serial.println("reset");
    }
  }
  if(timer1_stop_us){
    duration1_us = timer1_stop_us - timer1_start_us;
    duration1_ms = timer1_stop_ms - timer1_start_ms;

    Serial.print("gate 1 : ");
    Serial.print(duration1_ms / 1000.0);  
    Serial.print("s,  scale mph = ");   
    Serial.println(2911000.0 / duration1_us);

    //display2.writeDisplay();  
    timer1_stop_us = 0;
    timer1_stop_ms = 0;
    digitalWrite(LED1, LOW);
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
  if (timing1 && digitalRead(g1_p1)){ // exit
    timer1_stop_us = micros();
    timer1_stop_ms = millis();
    timing1 = false;
    racing1 = false;
  }
  else if(!timing1 && digitalRead(g1_p2)){ // entrance
    timer1_start_us = micros();
    timing1 = true;
  }
  
  if (!racing1 && digitalRead(g2_p2)){  //start race
    timer1_start_ms = millis();
    digitalWrite(LED1, HIGH);
    racing1 = true;
  }
  
}
