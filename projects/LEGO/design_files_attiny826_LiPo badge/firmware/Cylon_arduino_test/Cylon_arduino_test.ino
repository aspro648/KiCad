
/*
 * 
https://github.com/SpenceKonde/megaTinyCore

Attiny 826

*/

#include <EEPROM.h>
//#include <tinyNeoPixel.h>

#define PIN            PIN_PB4  // neopixle


int LEDS[] = {13, 12, 11, 14, 15, 16, 1, 2, 3, 4, 6, 7, 10, 1, 16, 15, 14, 11, 12};
boolean states[] = {false, false, false, false, false, false, false}; 
int led = 3;  // for random walk
long startTime = 0;
boolean startFlag = true;
int mode;

int R = 0;
int G = 0;
int B = 255;


void setup(){

  Serial.begin(9600);


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
  mode = 0;
}


void loop(){

  //if(startFlag){
  if(0){
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
  int i = 28;
  B = 255;
  G = 0;
  for(int LED=0; LED<int(sizeof(LEDS)/sizeof(int)); LED++){
    flash(LED);
    //pixels.setPixelColor(0, pixels.Color(R, G, B));
    //pixels.show();
    Serial.print(LED);
    Serial.print(": ");
    Serial.print(R);
    Serial.print(", ");
    Serial.print(G);
    Serial.print(", ");
    Serial.println(B);
    if (LED < 9){
      B = B - i;
      if(B <0) {B = 0;};
      G = G + i;
      if(G > 255) {G = 255;};
    }
    else{
      B = B + i;
      if(B > 255) {B = 255;};
      G = G - i;    
      if(G <0) { G = 0;};  
    }
  }  
  while(1){}

  /*
  for(int LED = (sizeof(LEDS)/sizeof(int))-1; LED >= 0; LED--){
    flash(LED);
    pixels.setPixelColor(0, pixels.Color(R, G, B));
    pixels.show();
    B = B + i;
    G = G - i;
  } */

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


void flash1(int led){  // psuedo PWM
  //int delayus = 0;
  //digitalWrite(led, HIGH);
  //delay(100);
  //digitalWrite(led, LOW);

  for(int x=0; x<25; x++){
    digitalWrite(led, HIGH);
    delayMicroseconds(1000);
    digitalWrite(led, LOW);
    delayMicroseconds(4000);
    //delay(4);
  }
}
  
void flash(int LED){
  int i = 0;  // interval in us (0 -1000)
  int t = 100; // length of fade in ms

  int LEDahead = 0;
  if(LED < sizeof(LEDS)/sizeof(int)){
    LEDahead = LED + 1;
  }
  int LEDbehind = 0;
  if(LED > 0){
    LEDbehind = LED - 1;
  }

  for(int x=0; x < t/2; x++){ // ramp up
    digitalWrite(LEDS[LED], HIGH);
    //if (LEDbehind) {digitalWrite(LEDS[LEDbehind], LOW);}
    delayMicroseconds(x);
    digitalWrite(LEDS[LED], LOW);
    //if (LEDbehind) {digitalWrite(LEDS[LEDbehind], HIGH);}
    delayMicroseconds(2000 - x);
    i = i + 1;
  }
  //if (LEDbehind) {digitalWrite(LEDS[LEDbehind], LOW);}

  for(int x=t/2; x >= 0; x--){ // ramp down
    digitalWrite(LEDS[LED], HIGH);
    delayMicroseconds(x);
    digitalWrite(LEDS[LED], LOW);
    delayMicroseconds(2000 - x);
    i = i - 1;
  }

}
