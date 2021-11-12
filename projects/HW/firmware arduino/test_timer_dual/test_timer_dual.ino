/*************************************************** 


 ****************************************************/

#include <Wire.h> // Enable this line if using Arduino Uno, Mega, etc.
#include <Adafruit_GFX.h>
#include "Adafruit_LEDBackpack.h"

Adafruit_7segment display1 = Adafruit_7segment();
Adafruit_7segment display2 = Adafruit_7segment();


bool DISPLAY1 = false;
bool DISPLAY2 = false;
bool CLEARDISPLAY2 = false;

// gate 1  STARTING LINE
int g1_p1 = A0;  // exit
int g1_p2 = A1;  // entrance

// gate 2  FINISH LINE
int g2_p1 = A2;  // exit
int g2_p2 = A3;  // entrance


int LED1 = 13;
int LED2 = 8;

volatile unsigned long timer2_start_us;     // speed trap
volatile unsigned long timer2_stop_us = 0; 
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
    display1.begin(0x70);
    display1.setBrightness(4);   // 0 - 15
  }
  if(!checkI2C(0x71)){
    Serial.println("Display 2 dectected");
    DISPLAY2 = true;
    display2.begin(0x71);
    display2.setBrightness(4);   // 0 - 15
  }

  Serial.print("Gate 1 NPN1 = ");
  Serial.println(analogRead(g1_p1));
  Serial.print("Gate 1 NPN2 = ");
  Serial.println(analogRead(g1_p2)); 
  Serial.print("Gate 2 NPN1 = ");
  Serial.println(analogRead(g2_p1));
  Serial.print("Gate 2 NPN2 = ");
  Serial.println(analogRead(g2_p2)); 

  if (DISPLAY1){
    dashes();
  }

 if (DISPLAY2){
    display2.clear();
    display2.writeDisplay(); 
  }

  // interrupt assignments
  pciSetup(g1_p1);
  pciSetup(g1_p2);
  pciSetup(g2_p1);
  pciSetup(g2_p2);
}


void dashes(){
  // https://forum.arduino.cc/t/using-an-adafruit-7-segment-display-with-i2c-backpack/462141
  display1.writeDigitRaw(0, 64); 
  display1.writeDigitRaw(1, 64);  
  display1.writeDigitRaw(2, 64);
  display1.writeDigitRaw(3, 64);
  display1.writeDigitRaw(4, 64);
  display1.writeDisplay();  
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
  
  if(timing1){  // reset if taking too long
    if ((micros() - timer2_start_us) > 1E+6){
      timing1 = false;
      racing1 = false;
      Serial.println("reset");
      display1.println();
      display1.writeDisplay();
    }   
  }
  
  if(racing1){   // reset if taking too long
    if ((millis() - timer1_start_ms) > 10000){
      racing1 = false;
      digitalWrite(LED1, LOW);
      Serial.println("reset");
      dashes();
    }
    else{
      display1.println((millis() - timer1_start_ms) / 1000.0);
      display1.writeDisplay();
    }
  }

  if(timer2_stop_us){
    duration1_us = timer2_stop_us - timer2_start_us;
    duration1_ms = timer1_stop_ms - timer1_start_ms;

    Serial.print("gate 1 : ");
    Serial.print(duration1_ms / 1000.0);  
    Serial.print("s,  scale mph = ");   
    Serial.println(2911000.0 / duration1_us);

    if (DISPLAY1){
      display1.println(duration1_ms / 1000.0, 3);
      display1.writeDisplay();
    }
    if (DISPLAY2){
      display2.println(2911000.0 / duration1_us, 1);
      display2.writeDisplay();
    }
  
    timer2_stop_us = 0;
    timer1_stop_ms = 0;
    digitalWrite(LED1, LOW);
  }
  
  if (CLEARDISPLAY2){// clear last speed while timing next race
    display2.clear();
    display2.writeDisplay();  
    CLEARDISPLAY2 = false; 
    Serial.println("cleardisplay2"); 
  }
  
  delay(100);

}



// interrupt routines
ISR (PCINT1_vect) {  // handle pin change interrupt for A0 to A5 here

  // one way
  if (timing1 && digitalRead(g2_p1)){ // exit
    timer2_stop_us = micros();
    timer1_stop_ms = millis();
    timing1 = false;
    racing1 = false;
  }
  else if(racing1 && !timing1 && digitalRead(g2_p2)){ // entrance
    timer2_start_us = micros();
    timing1 = true;
  }
  
  if (!racing1 && digitalRead(g1_p2)){  //start race
    timer1_start_ms = millis();
    digitalWrite(LED1, HIGH);
    racing1 = true;
    CLEARDISPLAY2 = true;
  }
  
}
