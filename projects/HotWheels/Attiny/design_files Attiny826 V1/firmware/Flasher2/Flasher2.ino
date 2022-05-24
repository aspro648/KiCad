/******************************************************************************
by Ken Olsen (648.ken@gmail.com) 
MakersBox.blogspot.com



Not all Attiny cores support the tone() function. Try this one
https://github.com/SpenceKonde/ATTinyCore


   
******************************************************************************/

#include <EEPROM.h>
#include <avr/sleep.h>
#include <tinyNeoPixel.h>


#define PIN            5  // neopixle
#define NUMPIXELS      2

#ifndef cbi
  #define cbi(sfr, bit) (_SFR_BYTE(sfr) &= ~_BV(bit))
#endif
#ifndef sbi
  #define sbi(sfr, bit) (_SFR_BYTE(sfr) |= _BV(bit))
#endif

// hardware\breadboard\avr\boards.txt
// atmega328bb.build.board=AVR_ATMEGA328BB

long sleepyTime = 900000; // sleep after (ms)  900000 = 15 min, 300000 = 5 min

boolean DEBUG = false;
tinyNeoPixel pixels = tinyNeoPixel(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

// V0.2
int HL = 0;   // headlights
int TL = 1;   // taillights
int FL1 = 16;  // flasher 1
int FL2 = 7;  // flasher 2

int HLpwm = 255;
int TLpwm = 10;
int FL1pwm = 10;
int FL2pwm = 10;
int ULpwm = 100;

int mode;     // 0 = flashers or interior only, 1 = headlights only, 2 = headlights + flashers / interior

int t1 = 125;
int t2 = 50;

uint32_t red = pixels.Color(255, 0, 0);
uint32_t blue = pixels.Color(0, 0, 255);
uint32_t off = pixels.Color(0, 0, 0);
uint32_t pix0 = off;
uint32_t pix1 = off;


void setup(){

  pixels.setBrightness(ULpwm); //0-255
  pixels.begin(); // This initializes the NeoPixel library.
  
  mode = EEPROM.read(0);
  if (mode > 1){  // probaly 255 on firt execution
    mode = 0;
  }
  else {
    mode = mode + 1;
  }
  EEPROM.write(0, mode);  // remember for next time
 


  pinMode(HL, OUTPUT);
  pinMode(TL, OUTPUT);
  pinMode(FL1, OUTPUT);
  pinMode(FL2, OUTPUT);

  int blinkcount = 1;
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
    delay(250);
    digitalWrite(HL, LOW);    
    digitalWrite(TL, LOW);
    digitalWrite(FL1, LOW);
    digitalWrite(FL2, LOW);
    delay(250);
  }
  delay(1000);
  mode = 2;
}




void loop(){
  if(mode > 0){  // night mode
    analogWrite(HL, HLpwm);
    analogWrite(TL, TLpwm);
  }

  if(mode != 1){
    while(1){  // flash sequence
  
      if(millis()>sleepyTime){
        system_sleep();
      }
      analogWrite(FL1, FL1pwm);
      pix(1, blue);
      delay(t1);
      digitalWrite(FL1, LOW);
      pix(1, off);
      delay(t2);
      analogWrite(FL1, FL1pwm);
      pix(1, blue);
      delay(t1);
      digitalWrite(FL1, LOW);
      pix(1, off);
      delay(t2);
  
      analogWrite(FL1, FL1pwm);
      pix(1, blue);
      delay(t2);
      digitalWrite(FL1, LOW);
      pix(1, off);
      delay(t2);
      analogWrite(FL1, FL1pwm);
      pix(1, blue);
      delay(t2);
      digitalWrite(FL1, LOW);
      pix(1, off);
      delay(t2);
  
  
      analogWrite(FL2, FL2pwm);
      pix(0, red);
      delay(t1);
      digitalWrite(FL2, LOW);
      pix(0, off);
      delay(t2);
      analogWrite(FL2, FL2pwm);
      pix(0, red);
      delay(t1);
      digitalWrite(FL2, LOW);
      pix(0, off);
      delay(t2);
  
      analogWrite(FL2, FL2pwm);
      pix(0, red);
      delay(t2);
      digitalWrite(FL2, LOW);
      pix(0, off);
      delay(t2);
      analogWrite(FL2, FL2pwm);
      pix(0, red);
      delay(t2);
      digitalWrite(FL2, LOW);
      pix(0, off);
      delay(t2);

      //pixels.setPixelColor(0, red);
      //pixels.setPixelColor(1, blue);
      //pixels.show();
      //delay(100);
      for(int x=0; x<3; x++){
        analogWrite(FL1, FL1pwm);
        pix(1, blue);
        delay(t1);
        digitalWrite(FL1, LOW);
        pix(1, off);
        analogWrite(FL2, FL2pwm);
        pix(0, red);
        delay(t1);
        digitalWrite(FL2, LOW);
        pix(0, off);
      }
    }    
  } 
}


void pix(int num, uint32_t color){
  // off, red, blue
  if(num==0){
    pix0 = color;
  }
  else{
    pix1 = color;
  }
  //pixels.setPixelColor(num, color);
  pixels.setPixelColor(0, pix0);
  pixels.setPixelColor(1, pix1);  
  pixels.show();
  delay(1);  // don't know why it needs this
}


// set system into the sleep state 
// system wakes up when wtchdog is timed out
void system_sleep() {
  digitalWrite(FL1, LOW);
  digitalWrite(FL2, LOW);  
  digitalWrite(TL, LOW);
  digitalWrite(HL, LOW);    
    
  //cbi(ADCSRA,ADEN);                    // switch Analog to Digitalconverter OFF
  set_sleep_mode(SLEEP_MODE_PWR_DOWN); // sleep mode is set here
  sleep_enable();
  sleep_mode();                        // System sleeps here

  
  sleep_disable();                     // System continues execution here when watchdog timed out 
  //sbi(ADCSRA,ADEN);                    // switch Analog to Digitalconverter ON
}
