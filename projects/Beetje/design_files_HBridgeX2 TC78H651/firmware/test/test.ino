/*
  Blink
  Turns on an LED on for one second, then off for one second, repeatedly.
 
  This example code is in the public domain.
 */
 
// Pin 13 has an LED connected on most Arduino boards.
// Pin 11 has the LED on Teensy 2.0
// Pin 6  has the LED on Teensy++ 2.0
// Pin 13 has the LED on Teensy 3.0
// give it a name:
int led = 13;

int mtr_1_pin = 9;
int mtr_2_pin = 10;


// the setup routine runs once when you press reset:
void setup() {                
  // initialize the digital pin as an output.
  pinMode(led, OUTPUT);     
  pinMode(mtr_1_pin, OUTPUT); 
  pinMode(mtr_2_pin, OUTPUT); 
}

// the loop routine runs over and over again forever:
void loop() {
  startup();
  delay(1000);
  digitalWrite(led, LOW);
  digitalWrite(mtr_1_pin, LOW);
  delay(1000);
}


void startup() {
  digitalWrite(mtr_2_pin, LOW);
  for(int x =0; x<=255; x++){
    analogWrite(mtr_1_pin, x);
    analogWrite(led, x);
    delay(10);
  }
  
}

