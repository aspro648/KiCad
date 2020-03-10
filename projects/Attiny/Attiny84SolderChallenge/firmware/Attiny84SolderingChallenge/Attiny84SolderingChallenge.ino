
/*

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

int LEDS[] = {4, 5, 6, 7, 8, 9, 10};
bool STATES[] = {true, true, true, true, true};
int buttonPin = A7; // D3


void setup() {
  // setup other LEDs
  for(int LED=0; LED<(sizeof(LEDS)/sizeof(int)); LED++){
    pinMode(LEDS[LED], OUTPUT);
    //digitalWrite(LEDS[LED], STATES[LED]);
  }

}

void loop() {
  for(int LED=0; LED<(sizeof(LEDS)/sizeof(int)); LED++){
    flash(LEDS[LED]);
  }  

  for(int LED = (sizeof(LEDS)/sizeof(int))-1; LED >= 0; LED--){
    flash(LEDS[LED]);
  } 
}


void flash(int led){  // psuedo PWM
    digitalWrite(led, HIGH);
    delay(1);
    digitalWrite(led, LOW);
    delay(1);
}
