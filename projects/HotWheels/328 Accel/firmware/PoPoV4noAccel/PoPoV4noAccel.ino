// https://github.com/sparkfun/SparkFun_LIS331_Arduino_Library
// https://learn.sparkfun.com/tutorials/h3lis331dl-accelerometer-breakout-hookup-guide

// Download  "breadboard-1-6-x.zip" from
// https://www.arduino.cc/en/Tutorial/ArduinoToBreadboard

// Change hardware/breadboard/avr/boards.txt to
// atmega328bb.build.mcu=atmega328


#include <EEPROM.h>


boolean DEBUG = false;

int HL1 = 3;
int HL2 = 5;
int TL1 = 6;
int TL2 = 10;  //<- blinkers

int UL = MOSI;

int mode;




void setup(){

  pinMode(HL1, OUTPUT);
  pinMode(HL2, OUTPUT);
  pinMode(TL1, OUTPUT);
  pinMode(TL2, OUTPUT);
  pinMode(UL, OUTPUT);


 
  mode = EEPROM.read(0);
  if (mode == 0){
    mode = 1;
  }
  else {
    mode = 0;
  }
  EEPROM.write(0, mode);

  for(int j=0; j<0; j++){
    digitalWrite(HL1, HIGH);
    digitalWrite(HL2, HIGH);
    digitalWrite(TL1, HIGH);
    digitalWrite(TL2, HIGH);
    delay(250);
    digitalWrite(HL1, LOW);    
    digitalWrite(HL2, LOW);
    digitalWrite(TL1, LOW);
    digitalWrite(TL2, LOW);

    delay(250);
  }
}



int t1 = 125;
int t2 = 50;





void loop(){
  if(mode){
    digitalWrite(HL1, HIGH);
    digitalWrite(HL2, HIGH);
    digitalWrite(UL, HIGH);
  }

  while(1){
    digitalWrite(TL1, HIGH);
    delay(t1);
    digitalWrite(TL1, LOW);
    delay(t2);
    digitalWrite(TL1, HIGH);
    delay(t1);
    digitalWrite(TL1, LOW);
    delay(t2);

    digitalWrite(TL1, HIGH);
    delay(t2);
    digitalWrite(TL1, LOW);
    delay(t2);
    digitalWrite(TL1, HIGH);
    delay(t2);
    digitalWrite(TL1, LOW);
    delay(t2);
    digitalWrite(TL1, LOW);


    digitalWrite(TL2, HIGH);
    delay(t1);
    digitalWrite(TL2, LOW);
    delay(t2);
    digitalWrite(TL2, HIGH);
    delay(t1);
    digitalWrite(TL2, LOW);
    delay(t2);

    digitalWrite(TL2, HIGH);
    delay(t2);
    digitalWrite(TL2, LOW);
    delay(t2);
    digitalWrite(TL2, HIGH);
    delay(t2);
    digitalWrite(TL2, LOW);
    delay(t2);

    for(int x=0; x<3; x++){
      digitalWrite(TL1, HIGH);
      delay(t1);
      digitalWrite(TL1, LOW);
      digitalWrite(TL2, HIGH);
      delay(t1);
      digitalWrite(TL2, LOW);
    }
  }
 
}
