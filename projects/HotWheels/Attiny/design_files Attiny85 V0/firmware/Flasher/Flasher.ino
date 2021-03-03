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


boolean DEBUG = false;

int HL = 2;   // headlights
int TL = 4;   // taillights
int FL1 = 1;  // flasher 1
int FL2 = 3;  // flasher 2
int UL = 0;   // Underlighting

int mode;     // headlights/tailights on or off, cycles with power


void setup(){

  pinMode(HL, OUTPUT);
  pinMode(TL, OUTPUT);
  pinMode(FL1, OUTPUT);
  pinMode(FL2, OUTPUT);
  pinMode(UL, OUTPUT);

  mode = EEPROM.read(0);
  if (mode == 0){
    mode = 1;
  }
  else {
    mode = 0;
  }
  EEPROM.write(0, mode);

  int blinkcount = 0;
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
    delay(250);
    digitalWrite(HL, LOW);    
    digitalWrite(TL, LOW);
    digitalWrite(FL1, LOW);
    digitalWrite(FL2, LOW);
    digitalWrite(UL, HIGH);
    delay(250);
  }
}

int t1 = 125;
int t2 = 50;



void loop(){
  if(mode){  // night mode
    digitalWrite(HL, HIGH);
    digitalWrite(TL, HIGH);
    digitalWrite(UL, HIGH);
  }


  while(1){  // flash sequence
    digitalWrite(FL1, HIGH);
    delay(t1);
    digitalWrite(FL1, LOW);
    delay(t2);
    digitalWrite(FL1, HIGH);
    delay(t1);
    digitalWrite(FL1, LOW);
    delay(t2);

    digitalWrite(FL1, HIGH);
    delay(t2);
    digitalWrite(FL1, LOW);
    delay(t2);
    digitalWrite(FL1, HIGH);
    delay(t2);
    digitalWrite(FL1, LOW);
    delay(t2);
    digitalWrite(FL1, LOW);


    digitalWrite(FL2, HIGH);
    delay(t1);
    digitalWrite(FL2, LOW);
    delay(t2);
    digitalWrite(FL2, HIGH);
    delay(t1);
    digitalWrite(FL2, LOW);
    delay(t2);

    digitalWrite(FL2, HIGH);
    delay(t2);
    digitalWrite(FL2, LOW);
    delay(t2);
    digitalWrite(FL2, HIGH);
    delay(t2);
    digitalWrite(FL2, LOW);
    delay(t2);

    for(int x=0; x<3; x++){
      digitalWrite(FL1, HIGH);
      delay(t1);
      digitalWrite(FL1, LOW);
      digitalWrite(FL2, HIGH);
      delay(t1);
      digitalWrite(FL2, LOW);
    }
  }
 
}
