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

int row0 = A1;
int col0 = A0;
int rows[] = {A1, A2, A3, A4, A5};
int cols[] = {A0, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0};


// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.

  digitalWrite(col0, HIGH);
  for(int row=0; row<(sizeof(rows)/sizeof(int)); row++){
    pinMode(rows[row], OUTPUT);
    digitalWrite(rows[row], LOW);
  }
  for(int col=0; col<(sizeof(cols)/sizeof(int)); col++){
    pinMode(cols[col], OUTPUT);
    digitalWrite(cols[col], LOW);
  }
}

// the loop function runs over and over again forever
void loop() {
  for(int row=0; row<(sizeof(rows)/sizeof(int)); row++){
    digitalWrite(rows[row], HIGH);
    for(int col=0; col<(sizeof(cols)/sizeof(int)); col++){
      digitalWrite(cols[col], HIGH);
      delay(100);
      digitalWrite(cols[col], LOW);
    }
    digitalWrite(rows[row], LOW);
  }
}


