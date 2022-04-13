
/*
 * 
https://github.com/SpenceKonde/megaTinyCore

Attiny 826

*/
int LEDS[] = {0, 1, 8, 7, 9, 16, 14};


void setup(){

  // setup other LEDs
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
  digitalWrite(led, HIGH);
  delay(100);
  digitalWrite(led, LOW);
  /*
  for(int x=0; x<25; x++){
    digitalWrite(led, HIGH);
    delay(1);
    digitalWrite(led, LOW);
    delay(3);
  }
  */
}
