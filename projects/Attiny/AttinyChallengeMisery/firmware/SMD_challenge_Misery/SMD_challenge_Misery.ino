
/*

updatd 10/17/2021:
cd C:\Users\648ke\AppData\Local\Arduino15\packages\arduino\tools\avrdude\6.3.0-arduino18\bin
avrdude -CC:\Users\648ke\AppData\Local\Arduino15\packages\ATTinyCore\hardware\avr\1.5.2/avrdude.conf -v -e -U lfuse:w:0xE2:m -U hfuse:w:0xD7:m -U efuse:w:0xFf:m -pattiny44 -cstk500v1 -PCOM21 -b19200 -Uflash:w:SMD_challenge_Misery44.hex

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


int LEDS[] = {6, 7, 8, 9, 10};


void setup(){
  #if (ARDUINO)
    Serial.begin(9600);
    Serial.println("SMD_heart");
  #endif


  // setup LED pind
  for(int LED=0; LED<(sizeof(LEDS)/sizeof(int)); LED++){
    pinMode(LEDS[LED], OUTPUT);
  }
  
  // setup sink pins PB0 / PB1 (D0, D1)
  pinMode(0, OUTPUT);
  pinMode(1, OUTPUT);

}


void loop(){
  
  // sinc pins
  digitalWrite(0, LOW);
  digitalWrite(1, LOW);

  for(int LED=0; LED<(sizeof(LEDS)/sizeof(int)); LED++){
    flash(LEDS[LED]);
  }  

  for(int LED = (sizeof(LEDS)/sizeof(int))-1; LED >= 0; LED--){
    flash(LEDS[LED]);
  } 


  // source (shows if LED backwards)
  digitalWrite(0, HIGH);
  digitalWrite(1, HIGH);

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
