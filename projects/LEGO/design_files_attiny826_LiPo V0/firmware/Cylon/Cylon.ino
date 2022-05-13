
/*
 * 
https://github.com/SpenceKonde/megaTinyCore

Attiny 826

*/

#include <EEPROM.h>

int LEDS[] = {0, 1, 7, 9, 8, 15, 16};
boolean states[] = {false, false, false, false, false, false, false}; 
int led = 3;  // for random walk
long startTime = 0;
boolean startFlag = true;
int mode;

void setup(){

  mode = EEPROM.read(0);
  if (mode > 3){  // probaly 255 on first execution
    EEPROM.write(0, 0);
  }
  mode = mode + 1;
  if(mode > 3){
    mode = 0;
  }
  EEPROM.write(0, mode);
  //else {
  
  //  mode = mode + 1;
  //}
  //EEPROM.write(0, mode);  // remember for next time
  
  // setup other LEDs
  for(int LED=0; LED<int(sizeof(LEDS)/sizeof(int)); LED++){
    pinMode(LEDS[LED], OUTPUT);
  }

}


void loop(){

  if(startFlag){
    if(millis() > 3000){ 
      int newmode = mode - 1;
      if (newmode < 0){
        newmode = 3;
      }
      EEPROM.write(0, newmode);
      startFlag = false;
      for(int LED=0; LED<int(sizeof(LEDS)/sizeof(int)); LED++){
        digitalWrite(LEDS[LED], HIGH);
      }
      delay(25);
      for(int LED=0; LED<int(sizeof(LEDS)/sizeof(int)); LED++){
        digitalWrite(LEDS[LED], LOW);
      }
    }
  }

  switch(mode){  //mode
    case 0:
      mode0();
      break;
    case 1:
      mode1();
      break;
    case 2:
      mode2();
      break;
    case 3:
      mode3();
      break;
  }
}


void mode0(){ // over and back
  for(int LED=0; LED<int(sizeof(LEDS)/sizeof(int)); LED++){
    flash(LEDS[LED]);
  }  

  for(int LED = (sizeof(LEDS)/sizeof(int))-1; LED >= 0; LED--){
    flash(LEDS[LED]);
  } 
}


void mode1(){ // random walk
  int r = random(12);
  if(r > 5){
    led = led + 1;
    if(led > 8){led = 8;}
  }
  else{
    led = led - 1;
    if(led < 0 ){led = 0;}
  }
  digitalWrite(LEDS[led], HIGH);
  delay(random(500));
  digitalWrite(LEDS[led], LOW);
}


void mode2(){ // one direction L-> R if switch is on right looking at LEDs
  for(int LED = (sizeof(LEDS)/sizeof(int))-1; LED >= 0; LED--){
    flash(LEDS[LED]);
  } 
}


void mode3(){ // random walk
  for(int LED = (sizeof(LEDS)/sizeof(int))-1; LED >= 0; LED--){
    int r = random(12);
    if(r > 5){
      states[LED] = !states[LED];
    }
    digitalWrite(LEDS[LED], states[LED]);
    delay(random(50));
  } 
}


void flash(int led){  // psuedo PWM
  digitalWrite(led, HIGH);
  delay(100);
  digitalWrite(led, LOW);
  /*
  for(int x=0; x<25; x++){
    digitalWrite(led, HIGH);
    delay(1);
    digitalWrite(led, LOW);
    delay(3);
  }
  */
}
