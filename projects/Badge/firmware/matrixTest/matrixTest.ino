/*
  Blink
  Turns on an LED on for one second, then off for one second, repeatedly.

  Most Arduinos have an on-board LED you can control. On the Uno and
  Leonardo, it is attached to digital pin 13. If you're unsure what
  pin the on-board LED is connected to on your Arduino model, check
  the documentation at http://arduino.cc

  This example code is in the public domain.

  modified 8 May 2014
  by Scott Fitzgerald
 */
int pin1 = 7;
int pin2 = 13;

// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin 13 as an output.
  //pinMode(pin1, OUTPUT);
  //pinMode(pin2, OUTPUT);  
  //digitalWrite(pin2, HIGH);
  DDRD =  B11111111;
  DDRB =  B11111111; 
  //PORTB = B11111111; 

}

// the loop function runs over and over again forever
void loop() {
  //digitalWrite(pin1, HIGH);   // turn the LED on (HIGH is the voltage level)
  /*
  byte i = 1;
  byte j = 1;
  for (int y=0; y<8; y++){
    i = 1;
    PORTB = j;
    j = j * 2;
    for (int x=0; x<8; x++){
      PORTD = i;
      i = i * 2;
      delay(10);
    }
  }*/
  PORTB = 0b10000000; 
  byte i =0b00000001;
  for (int row = 0; row < 8; row++){
    byte temp = 0;
    for (int col = 0; col <8; col++){
      PORTD = i;
      delay(10);
      PORTD = PORTD<<1;
    }
    PORTD = 0;
    PORTB = PORTB>>1;
  }

 
  //PORTD = B10000000;
  //delay(1000);
  //digitalWrite(pin1, LOW);
  // wait for a second
  //PORTD = B00000000;
  //delay(1000);              // wait for a second
}
