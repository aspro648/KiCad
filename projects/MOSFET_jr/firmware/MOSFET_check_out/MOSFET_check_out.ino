/* 
MOSFET Shield has three IRL8721 MOSFET which can be PWM controlled
through Digital Pins 3, 6, 5

The shield also has Analog Input connections for Pins A2, A3, A4, and A5.
Using the interal pull-ups removes the need for additional pullup resistors.

You can use A4, A5, and GND for a Source / Signal / Ground arrangement
suitable for a potentometer or TMP36 temperature input.


*/


//int loadPins[] = {11, 10, 9, 3, 6, 5}; // MOSFETsr
int loadPins[] = {3, 6, 5}; // MOSFETjr;

void setup(void){
  Serial.begin(9600);
  
  // configure output pins
  for (int loadPin=0; loadPin < (sizeof(loadPins) / sizeof(int)); loadPin++){
    pinMode(loadPins[loadPin], OUTPUT);
    Serial.print(loadPin);
    Serial.print("-");
    Serial.println(loadPins[loadPin]);
  }
  
  // configure inputs with internal pull-ups
  pinMode(A2, INPUT);
  digitalWrite(A2, HIGH);
  pinMode(A4, INPUT);
  digitalWrite(A4, HIGH);
  pinMode(A5, INPUT);
  digitalWrite(A5, HIGH);


  // configure A3 as a voltage source
  pinMode(A3, INPUT);
  digitalWrite(A3, HIGH);
  
}


void loop(void) {

  int analog2 = analogRead(A2);
  int analog3 = analogRead(A3);  
  int analog4 = analogRead(A4);
  int analog5 = analogRead(A5);
  Serial.print("A2 - ");
  Serial.print(analog2);
  Serial.print(" A3 - ");
  Serial.print(analog3);
  Serial.print(" A4 - ");
  Serial.print(analog4);
  Serial.print(" A5 - ");
  Serial.println(analog5);
  
  // map inputvalues to output values
  int out3 = map(analog2, 0, 1023, 0, 255);
  int out5 = map(analog5, 0, 1023, 0, 255);

  for (int x=0; x<256; x++){
    analogWrite(3, x);
    delay(5);
  }
  for (int x=255; x>=0; x--){
    analogWrite(3, x);
    delay(5);
  }
  
  for (int x=0; x<256; x++){
    analogWrite(5, x);
    delay(5);
  }
  for (int x=255; x>=0; x--){
    analogWrite(5, x);
    delay(5);
  }

  for (int x=0; x<256; x++){
    analogWrite(6, x);
    delay(5);
  }
  for (int x=255; x>=0; x--){
    analogWrite(6, x);
    delay(5);
  }  
  
}



