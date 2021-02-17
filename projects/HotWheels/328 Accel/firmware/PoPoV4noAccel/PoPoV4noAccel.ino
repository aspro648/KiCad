// https://github.com/sparkfun/SparkFun_LIS331_Arduino_Library
// https://learn.sparkfun.com/tutorials/h3lis331dl-accelerometer-breakout-hookup-guide

// Download  "breadboard-1-6-x.zip" from
// https://www.arduino.cc/en/Tutorial/ArduinoToBreadboard

// Change hardware/breadboard/avr/boards.txt to
// atmega328bb.build.mcu=atmega328




boolean DEBUG = false;

int HL1 = 3;
int HL2 = 5;
int TL1 = 6;
int TL2 = 10;  //10v5 9v4

int UL = MOSI;






void setup(){

  pinMode(HL1, OUTPUT);
  pinMode(HL2, OUTPUT);
  pinMode(TL1, OUTPUT);
  pinMode(TL2, OUTPUT);
  pinMode(UL, OUTPUT);
 

  for(int j=0; j<3; j++){
    digitalWrite(HL1, HIGH);
    digitalWrite(TL1, HIGH);
    delay(250);
    digitalWrite(HL1, LOW);
    digitalWrite(TL1, LOW);
    delay(250);
  }
}





void loop(){
  digitalWrite(HL1, HIGH);
  digitalWrite(HL2, HIGH);
  digitalWrite(UL, HIGH);


  while(1){
    digitalWrite(TL1, HIGH);
    digitalWrite(TL2, LOW);
    delay(500);
    digitalWrite(TL2, HIGH);
    digitalWrite(TL1, LOW);
    delay(500);    
  }
 
}
