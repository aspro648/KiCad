/*

cd C:\Users\MakersBox\Downloads\arduino-1.6.4\hardware\tools\avr\bin
avrdude -C ..\etc\avrdude.conf -P COM8 -b 19200 -c avrisp -p attiny85 -v -e -U lfuse:w:0xE2:m -U hfuse:w:0xD7:m -U efuse:w:0xFf:m  -U flash:w:SMD_OSH_MORSE.cpp.hex
verifying lfuse memory against 0xE2:
verifying hfuse memory against 0xD7
verifying efuse memory against 0xFF
 
Heartbeat code based on Emily Lovell's LilyTiny:
http://dlnmh9ip6v2uc.cloudfront.net/datasheets/E-Textiles/Lilypad/LilyTiny.ino
https://users.soe.ucsc.edu/~emme/

Attiny core:
https://github.com/SpenceKonde/ATTinyCore

ATMEL ATTINY45/85 Pin Assignments
                   +-\/-+
  Ain0 (D 5) PB5  1|    |8  Vcc
  Ain3 (D 3) PB3  2|    |7  PB2 (D 2) Ain1
  Ain2 (D 4) PB4  3|    |6  PB1 (D 1) pwm1
             GND  4|    |5  PB0 (D 0) pwm0

*/

#include <avr/sleep.h>

int ledPin = 0;     
int touchPin = 3;
long on_seconds = 60 * 60;  
volatile boolean awake = true;
volatile int count = 0;

// clear and set interup routines
#ifndef cbi
  #define cbi(sfr, bit) (_SFR_BYTE(sfr) &= ~_BV(bit))
#endif
#ifndef sbi
  #define sbi(sfr, bit) (_SFR_BYTE(sfr) |= _BV(bit))
#endif


#define TIME_UNIT 200
// https://www.jonathan-petitcolas.com/2014/03/16/creating-morse-encoder-with-arduino.html
void dot(){
  blink(TIME_UNIT);
}

void dash(){
  blink(3 * TIME_UNIT);
}

void endLetter(){
  delay(3 * TIME_UNIT);
}

void space(){
  delay(7 * TIME_UNIT);
}


void setup(){
  // setup LED pin and Input
  pinMode(ledPin, OUTPUT);
  pinMode(touchPin, INPUT_PULLUP);

  // Interupt setting
  GIMSK  = bit (PCIE);   // Pin change interrupt enable
  PCMSK = bit (PCINT3); // Enable interupt on PCINT3 (D3)
  sei();                  // enables interrupts
}


void loop(){
  count = 0;
  while(count <= 5){
    morse();
    count++;
  }
  //heartBeat();
  system_sleep();
}


void morse(){
  // O
  dash();
  dash();
  dash();
  endLetter();
  
  // H
  dot();
  dot();
  dot();
  dot();
  endLetter();
  
  // S
  dot();
  dot();
  dot();
  endLetter();
  
  space();
}


void blink(int duration){ 
  // routine to fade in and out of blink
  if(duration < 50) {duration = 0;}
  for(int fadeValue = 0 ; fadeValue <= 255; fadeValue +=5) { 
    analogWrite(ledPin, fadeValue);           
    delay(2);                           
  } 
  delay(duration - 100);
  // 
  for(int fadeValue = 255 ; fadeValue >= 0; fadeValue -=5) { 
    analogWrite(ledPin, fadeValue);          
    delay(2);                            
  } 
}


ISR(PCINT0_vect){  // just here to wake up on button press
}


// set system into the sleep state 
// system wakes up when wtchdog is timed out
void system_sleep() {
  cbi(ADCSRA,ADEN);                    // switch Analog to Digitalconverter OFF
  set_sleep_mode(SLEEP_MODE_PWR_DOWN); // sleep mode is set here
  sleep_enable();
  sleep_mode();                        // System sleeps here
  sleep_disable();                     // System continues execution here when watchdog timed out 
  sbi(ADCSRA,ADEN);                    // switch Analog to Digitalconverter ON
}


bool touched(){
  // returns true if button pressed, false if not.  Light LED until touch released
  if (!digitalRead(touchPin)){
    digitalWrite(ledPin, HIGH);
    while(!digitalRead(touchPin)){
      delay(10);
    }
    digitalWrite(ledPin, LOW);
    return (true);
  }
  else{
    return (false);
  }
}


