
/*

cd C:\Users\MakersBox\Downloads\arduino-1.6.4\hardware\tools\avr\bin
avrdude -C ..\etc\avrdude.conf -P COM3 -b 19200 -c avrisp -p attiny85 -v -e -U lfuse:w:0xE2:m -U hfuse:w:0xD7:m -U efuse:w:0xFf:m  -U flash:w:SMD_challenge_Cylon.cpp.hex
verifying lfuse memory against 0xE2:
verifying hfuse memory against 0xD7
verifying efuse memory against 0xFF
 
Arduino pinout development based on FunShield:
https://www.tindie.com/products/MakersBox/funshield-arduino-shield-kit/


ATMEL ATTINY45/85 Pin Assignments
                   +-\/-+
  Ain0 (D 5) PB5  1|    |8  Vcc
  Ain3 (D 3) PB3  2|    |7  PB2 (D 2) Ain1
  Ain2 (D 4) PB4  3|    |6  PB1 (D 1) pwm1
             GND  4|    |5  PB0 (D 0) pwm0

*/


int LEDS[] = {0, 1, 2, 3, 4};
bool STATES[] = {true, true, true, true, true};


// Pins are different between Arduino and Attiny
#if defined(__AVR_ATtiny85__)
  #define ARDUINO 0
  #define ledPin 0     
  #define lightPin 3    // CdS or pushbutton hooked from PB4 (Pin 3, A2/D4) to ground
  #define lightPullUp 3
  #define touchPin 1
  #define touchPullUp 2
#else  
  #define ARDUINO 1
  #define ledPin 9  // RGB red
  #define lightPin A1
  #define lightPullUp A1
  #define touchPin A3
  #define touchPullUp A3
#endif


void setup(){
  #if (ARDUINO)
    Serial.begin(9600);
    Serial.println("SMD_heart");
  #endif

  // setup heart pin
  pinMode(ledPin, INPUT);

  // setup other LEDs
  for(int LED=0; LED<(sizeof(LEDS)/sizeof(int)); LED++){
    pinMode(LEDS[LED], OUTPUT);
    //digitalWrite(LEDS[LED], STATES[LED]);
  }
}


void loop(){
  for(int LED=0; LED<(sizeof(LEDS)/sizeof(int)); LED++){
    flash(LEDS[LED]);
  }  

  for(int LED = (sizeof(LEDS)/sizeof(int))-1; LED >= 0; LED--){
    flash(LEDS[LED]);
  } 
}


void flash(int led){  // psuedo PWM
  for(int x=0; x<25; x++){
    digitalWrite(led, HIGH);
    delay(1);
    digitalWrite(led, LOW);
    delay(3);
  }
}



