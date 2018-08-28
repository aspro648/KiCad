
/*

cd C:\Users\kolsen\Downloads\arduino-1.8.6\hardware\tools\avr\bin
cd C:\Users\MakersBox\Downloads\arduino-1.6.4\hardware\tools\avr\bin
avrdude -C ..\etc\avrdude.conf -P COM6 -b 19200 -c avrisp -p attiny84 -v -e -U lfuse:w:0xE2:m -U hfuse:w:0xD7:m -U efuse:w:0xFf:m  -U flash:w:Toorcon.hex
verifying lfuse memory against 0xE2:
verifying hfuse memory against 0xD7
verifying efuse memory against 0xFF
 
Attiny Core:
https://github.com/SpenceKonde/ATTinyCore
(add to preferences: http://drazzy.com/package_drazzy.com_index.json)
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

byte codes[] = {
                0b01110011,
                0b01100100,
                0b01100110,
                0b01100001,
                0b01101101,
                0b01101001,
                0b01101100,
                0b01111001};
                
int LEDS[] = {6, 5, 4, 2, 8, 9, 10, 7};
int touchPin = 3;  //D3
int touchRead = 7; //A7 
int touchLevel = 1010; // (<1023)

void setup(){
  #if (ARDUINO)
    Serial.begin(9600);
    Serial.println("SMD_heart");
  #endif


  // setup LED pind
  for(int LED=0; LED<(sizeof(LEDS)/sizeof(int)); LED++){
    pinMode(LEDS[LED], OUTPUT);
    digitalWrite(LEDS[LED], LOW);
  }

  pinMode(touchPin, INPUT);
  digitalWrite(touchPin, HIGH); // pull up
  
  // setup sink pins PB0 / PB1 (D0, D1)
  pinMode(0, OUTPUT);
  pinMode(1, OUTPUT);

}


void loop(){
  while(analogRead(touchRead) > touchLevel){
    cylon();
  }

  // sinc pins
  digitalWrite(0, LOW);
  digitalWrite(1, LOW);
  digitalWrite(LEDS[0], HIGH);
  while(analogRead(touchRead) < touchLevel){1;}
  digitalWrite(LEDS[0], LOW);
  delay(10);
  blinkAscii();
}




void cylon(){
  
  // sinc pins
  digitalWrite(0, LOW);
  digitalWrite(1, LOW);

  for(int LED=0; LED<(sizeof(LEDS)/sizeof(int)); LED++){
    flash(LEDS[LED]);
    if(analogRead(touchRead) < touchLevel){return;}
  }  

  for(int LED = (sizeof(LEDS)/sizeof(int))-1; LED >= 0; LED--){
    flash(LEDS[LED]);
    if(analogRead(touchRead) < touchLevel){return;}
  } 

  // source (shows if LED backwards)
  digitalWrite(0, HIGH);
  digitalWrite(1, HIGH);

  for(int LED=0; LED<(sizeof(LEDS)/sizeof(int)); LED++){
    flash(LEDS[LED]);
    if(analogRead(touchRead) < touchLevel){return;}
  }  

  for(int LED = (sizeof(LEDS)/sizeof(int))-1; LED >= 0; LED--){
    flash(LEDS[LED]);
    if(analogRead(touchRead) < touchLevel){return;}
    } 

}


void blinkAscii(){
  // sinc pins
  digitalWrite(0, LOW);
  digitalWrite(1, LOW);
  for (int code=0; code<(sizeof(codes)/sizeof(byte)); code++){
    blinkByte(codes[code]);
    delay(1000);
  }
}


void blinkByte(byte bt){
  for(int led=0; led<8; led++){
    digitalWrite(LEDS[7-led], bitRead(bt, led));
  }
  delay(1000);
  for(int x=7; x>=0; x--){
    digitalWrite(LEDS[x], LOW);
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



