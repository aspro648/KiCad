
/*
Heartbeat code based on Emily Lovell's LilyTiny:
http://dlnmh9ip6v2uc.cloudfront.net/datasheets/E-Textiles/Lilypad/LilyTiny.ino
https://users.soe.ucsc.edu/~emme/

Arduino pinout development based on FunShield:
https://www.tindie.com/products/MakersBox/funshield-arduino-shield-kit/

Not all Attiny cores support the tone() function. Try this one
https://github.com/SpenceKonde/ATTinyCore

ATMEL ATTINY45/85 Pin Assignments
                   +-\/-+
  Ain0 (D 5) PB5  1|    |8  Vcc
  Ain3 (D 3) PB3  2|    |7  PB2 (D 2) Ain1
  Ain2 (D 4) PB4  3|    |6  PB1 (D 1) pwm1
             GND  4|    |5  PB0 (D 0) pwm0

*/


int LEDS[] = {1, 2, 3, 4};
bool STATES[] = {true, true, true, true, true};


// Pins are different between Arduino and Attiny
#if defined(__AVR_ATtiny85__)
  #define ARDUINO 0
  #define ledPin 0     
  #define lightPin 3    // CdS or pushbutton hooked from PB4 (Pin 3, A2/D4) to ground
  #define lightPullUp 3
  #define touchPin 1
  #define touchPullUp 2
#else  
  #define ARDUINO 1
  #define ledPin 9  // RGB red
  #define lightPin A1
  #define lightPullUp A1
  #define touchPin A3
  #define touchPullUp A3
#endif


int on_time = 10;  // in seconds


void setup(){
  #if (ARDUINO)
    Serial.begin(9600);
    Serial.println("SMD_heart");
  #endif

  // setup heart pin
  pinMode(ledPin, INPUT);

  // setup other LEDs
  for(int LED=0; LED<(sizeof(LEDS)/sizeof(int)); LED++){
    pinMode(LEDS[LED], OUTPUT);
    digitalWrite(LEDS[LED], STATES[LED]);
  }
}


void loop(){
  heartBeat(on_time);
}


boolean heartBeat(int on_time){
  // based on http://dlnmh9ip6v2uc.cloudfront.net/datasheets/E-Textiles/Lilypad/LilyTiny.ino

  // Variables and constants for fading pin. Needs to be a hardware PWM pin; on
  byte heartStage = 0;
  int heartBrightness = 0;
  byte heartCounter = 0;
  long off_time = millis() + on_time * 1000;
  pinMode(ledPin, OUTPUT);
  digitalWrite(ledPin, HIGH);

  while(millis() < off_time){
    delayMicroseconds(9999);
    // calculate brightness for heartbeat pin (by cycling 
    // through phases of pulse pattern)
    heartCounter++;
    if (heartCounter > 144) {
      heartStage = (heartStage + 1) % 4;
      heartCounter = 0;
    }
    else {
      switch(heartStage) {
        case 0:
          analogWrite(ledPin, heartBrightness);
          heartCounter += 144/12.0;
          heartBrightness += 255/12.0;
          if (heartBrightness > 255)
            heartBrightness = 255;
          break;
        case 1:
          analogWrite(ledPin, heartBrightness);
          heartCounter += 144/24.0;
          heartBrightness -= 255/24.0;
          if (heartBrightness < 0)
            heartBrightness = 0;
          break;
        case 2:
          analogWrite(ledPin, heartBrightness);
          heartCounter += 144/12.0;
          heartBrightness += 255/12.0;
          if (heartBrightness > 255)
            heartBrightness = 255;
          break;
        case 3:
          analogWrite(ledPin, heartBrightness);
          heartCounter += 144/72.0;
          heartBrightness -= 255/72.0;
          if (heartBrightness < 0)
            heartBrightness = 0;
          break;
      }//switch
    }//else
    
    // blink other LEDs randomly
    for(int LED=0; LED<(sizeof(LEDS)/sizeof(int)); LED++){
      if(random(40) == 1){
        STATES[LED] = !STATES[LED];
        digitalWrite(LEDS[LED], STATES[LED]);  
      }
    }     
  }
  
  // go to a low power state
  digitalWrite(ledPin, LOW);
  pinMode(ledPin, INPUT);
  return(true);
}


