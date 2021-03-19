/******************************************************************************
by Ken Olsen (648.ken@gmail.com) 
MakersBox.blogspot.com



Not all Attiny cores support the tone() function. Try this one
https://github.com/SpenceKonde/ATTinyCore

ATMEL ATTINY45/85 Pin Assignments
                   +-\/-+
  Ain0 (D 5) PB5  1|    |8  Vcc
  Ain3 (D 3) PB3  2|    |7  PB2 (D 2) Ain1
  Ain2 (D 4) PB4  3|    |6  PB1 (D 1) pwm1
             GND  4|    |5  PB0 (D 0) pwm0
   
******************************************************************************/

#include <EEPROM.h>
#include <avr/sleep.h>


#ifndef cbi
  #define cbi(sfr, bit) (_SFR_BYTE(sfr) &= ~_BV(bit))
#endif
#ifndef sbi
  #define sbi(sfr, bit) (_SFR_BYTE(sfr) |= _BV(bit))
#endif


long sleepyTime = 900000; // sleep after (ms)  1800000 = 15 min, 300000 = 5 min

boolean DEBUG = false;

int HL = 2;   // headlights
int TL = 4;   // taillights
int FL1 = 1;  // flasher 1  PWM
int FL2 = 3;  // flasher 2
int UL = 0;   // Underlighting PWM

int mode;     // headlights/tailights on or off, cycles with power

int t1 = 125;
int t2 = 50;


void setup(){


  pinMode(HL, OUTPUT);
  pinMode(TL, OUTPUT);
  pinMode(FL1, OUTPUT);
  pinMode(FL2, OUTPUT);
  pinMode(UL, OUTPUT);
  digitalWrite(HL, LOW);
  
  int blinkcount = 6;
  /*
  pinMode(3, INPUT_PULLUP);
  int val = analogRead(3);
  if (val >1000){
    blinkcount = 10;
  }
  pinMode(3, OUTPUT);
  */


  // inital flash for check
  for(int j=0; j<blinkcount; j++){
    digitalWrite(HL, HIGH);
    digitalWrite(TL, HIGH);
    digitalWrite(FL1, HIGH);
    digitalWrite(FL2, HIGH);
    digitalWrite(UL, HIGH);
    delay(100);
    digitalWrite(HL, LOW);    
    digitalWrite(TL, LOW);
    digitalWrite(FL1, LOW);
    digitalWrite(FL2, LOW);
    digitalWrite(UL, LOW);
    delay(100);
  }
}


void loop(){
  //https://www.instructables.com/Realistic-Fire-Effect-with-Arduino-and-LEDs/
  analogWrite(1, random(120+135));
  analogWrite(0, random(120+135));
  delay(random(100));
}
