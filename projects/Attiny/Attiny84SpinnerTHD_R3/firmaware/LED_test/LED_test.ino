/*
  LED test
*/

int LEDS[] = {10, 9, 8, 7, 6, 5, 4, 3};  // Port A



void setup() {
  for(int LED=0; LED<(sizeof(LEDS)/sizeof(int)); LED++){
    pinMode(LEDS[LED], OUTPUT);
  }
}


// the loop function runs over and over again forever
void loop() {
  int LED = 0; 
  blink(LED);                    
}


void bink(int LED){
  digitalWrite(LEDS[LED], HIGH);
  delay(1000);                       // wait for a second
  digitalWrite(LEDS[LED], LOW);    // turn the LED off by making the voltage LOW
  delay(1000);           
}
