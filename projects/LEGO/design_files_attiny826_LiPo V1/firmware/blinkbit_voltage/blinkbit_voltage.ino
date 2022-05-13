/*

  - blink led for each digit of a positive integer (0 - 32,767)
  - zeros are 1 second blinks
  - one second between digits
  - repeats after three seconds

NEED TO UPDATE SCHEMATICS!
VCC to R1 trace missing

*/

int LEDS[] = {0, 1, 7, 9, 8, 15, 16};

int led = LEDS[0];

int v_pin = PIN_PB4;

bool DEBUG = false;  // serial print if true


void setup() {
  analogReference(INTERNAL2V5);
  pinMode(v_pin, INPUT);

  if (DEBUG){ Serial.begin(9600);}

  // setup other LEDs
  for(int LED=0; LED<int(sizeof(LEDS)/sizeof(int)); LED++){
    pinMode(LEDS[LED], OUTPUT);
    digitalWrite(LEDS[LED], HIGH);
  }
  digitalWrite(led, LOW);

}



// the loop function runs over and over again forever
void loop() {
  /*
  int val = 351;
  int x = map(val, 309, 351, 0, 7);  //adc value to LED number
  Serial.print("x = ");
  Serial.println(x);
  for(int LED=0; LED<x; LED++){
    //digitalWrite(LEDS[LED], HIGH);
    Serial.println(LEDS[LED]);
    delay(100);
  }  
    */
  
  int val = analogRead(v_pin);
  int checkval = 10000;
  if (DEBUG){ Serial.print("val = ");}
  if (DEBUG){ Serial.println(val);}
  bool leadingzero = true;
  if (val == 0){
    blink(val);
  }
  else{
    while(checkval >= 1){     
      if (DEBUG){ Serial.print("checkval = ");}
      if (DEBUG){ Serial.print(checkval);}      
  
      int blinknum = val / checkval; 
      if (leadingzero){
        if (blinknum != 0){
          leadingzero = false;
        }
      }
      if (DEBUG){ Serial.print(",   blinknum = ");}
      if (DEBUG){ Serial.println(blinknum);  }
        if(!leadingzero){
          blink(blinknum);
        }
      val = val - checkval * blinknum;
      checkval = checkval / 10;
      delay(1000);
    }
  }
  delay(3000);
}



void blink(int blinknum){
  if(blinknum == 0){
    digitalWrite(led, HIGH);
    delay(1000);
    digitalWrite(led, LOW);
  }
  else{
    for (int x=0; x<blinknum; x++){
      digitalWrite(led, HIGH);
      delay(250);
      digitalWrite(led, LOW);
      delay(250);
    }
  }
}
