/*
  Blink

  Turns an LED on for one second, then off for one second, repeatedly.

  Most Arduinos have an on-board LED you can control. On the UNO, MEGA and ZERO
  it is attached to digital pin 13, on MKR1000 on pin 6. LED_BUILTIN is set to
  the correct LED pin independent of which board is used.
  If you want to know what pin the on-board LED is connected to on your Arduino
  model, check the Technical Specs of your board at:
  https://www.arduino.cc/en/Main/Products

  modified 8 May 2014
  by Scott Fitzgerald
  modified 2 Sep 2016
  by Arturo Guadalupi
  modified 8 Sep 2016
  by Colby Newman

  This example code is in the public domain.

  http://www.arduino.cc/en/Tutorial/Blink
*/

int HL = 10;
int TL = 5;
int BL = 6;
int DL = 9;
int UL = 11;


// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(HL, OUTPUT);
  pinMode(TL, OUTPUT);
  pinMode(BL, OUTPUT);
  pinMode(DL, OUTPUT);
  pinMode(UL, OUTPUT);
}



// the loop function runs over and over again forever
void loop() {
  digitalWrite(HL, HIGH);   // turn the LED on (HIGH is the voltage level)
  digitalWrite(TL, LOW);
  delay(1000);                       // wait for a second
  digitalWrite(HL, LOW);    // turn the LED off by making the voltage LOW
  digitalWrite(TL, HIGH);
  delay(500);                       // wait for a second
  digitalWrite(BL, HIGH);
  delay(500);
  digitalWrite(BL, LOW);
  delay(500);
  
}
