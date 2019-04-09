
/*

cd C:\Users\MakersBox\Downloads\arduino-1.6.4\hardware\tools\avr\bin
avrdude -C ..\etc\avrdude.conf -P COM3 -b 19200 -c avrisp -p attiny85 -v -e -U lfuse:w:0xE2:m -U hfuse:w:0xD7:m -U efuse:w:0xFf:m  -U flash:w:SMD_challenge_Cylon.cpp.hex
verifying lfuse memory against 0xE2:
verifying hfuse memory against 0xD7
verifying efuse memory against 0xFF
 
Attiny Core:
https://github.com/SpenceKonde/ATTinyCore
Board: Attiny 24/44/84
Pin Mapping: Counter-Clockwise
Chip: Attiny 84
Clock: 8 MHz (internal)

// ATMEL ATTINY84 / ARDUINO
//
//                           +-\/-+
//                     VCC  1|    |14  GND
//             (D  0)  PB0  2|    |13  AREF (D 10)
//             (D  1)  PB1  3|    |12  PA1  (D  9) 
//                     PB3  4|    |11  PA2  (D  8) 
//  PWM  INT0  (D  2)  PB2  5|    |10  PA3  (D  7) 
//  PWM        (D  3)  PA7  6|    |9   PA4  (D  6) 
//  PWM        (D  4)  PA6  7|    |8   PA5  (D  5)        PWM

*/


int LEDS[] = {4, 5}; // test circuit
//int LEDS[] = {10, 9, 8, 7, 6, 5, 3, 2 };


void setup(){

  // setup LED pind
  for(int LED=0; LED<(sizeof(LEDS)/sizeof(int)); LED++){
    pinMode(LEDS[LED], OUTPUT);
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



