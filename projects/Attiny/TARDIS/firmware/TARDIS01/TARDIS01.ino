/*

ATMEL ATTINY45/85 Pin Assignments
                   +-\/-+
  Ain0 (D 5) PB5  1|    |8  Vcc
  Ain3 (D 3) PB3  2|    |7  PB2 (D 2) Ain1
  Ain2 (D 4) PB4  3|    |6  PB1 (D 1) pwm1
             GND  4|    |5  PB0 (D 0) pwm0

*/

#include <Arduino.h>
#include <EEPROMex.h>
#include <avr/sleep.h>
#include <avr/wdt.h>

// make Pin assignments based on board type
#if defined(__AVR_ATtiny85__) // ATTINY!
  #define ATTINY 1
  #define touchPin 1     // A1/D2
  #define touchPullUp 2
  #define photoPin 3     // A0/D5
  #define photoPullUp 3
  #define speakerPin 0
  #define LEDpin 1       // top LED
#else // Arduino board with FunShield (for development)
  #define ATTINY 0
  #define touchPin A3     // 
  #define touchPullUp A3
  #define photoPin A1     
  #define photoPullUp A1
  #define speakerPin 11
  #define LEDpin 9      // RGB-RED
#endif


// watchdog timer stuff
#ifndef cbi
  #define cbi(sfr, bit) (_SFR_BYTE(sfr) &= ~_BV(bit))
#endif
#ifndef sbi
  #define sbi(sfr, bit) (_SFR_BYTE(sfr) |= _BV(bit))
#endif
volatile boolean watchdog_flag = true;


int counter = 0;         // counts times light & sound loops
int counter2 = 0;        // nightlight timer
int counter2Limit = 100; // nightlight delay
int touchVal;
int touchThreshold = 950;
boolean AWAKE;
boolean silenced;


void setup() { // runs only once
  // enable serial for debug if regular Arduino
  #if (!ATTINY) 
    Serial.begin(9600);
    Serial.println("ATTINY TARDIS");
  #endif
  
  analogReference(DEFAULT);
  
  // set pinModes
  pinMode(touchPin, INPUT);
  pinMode(photoPin, INPUT);
  pinMode(LEDpin, OUTPUT); 
    
  // setup sleep ISR
  setup_watchdog(4); //3=128ms,4=250ms,5=500ms,6=1sec

  // check eeprom for silenced
  silenced = EEPROM.read(0);
  if (checkTouch()){
    silenced = !silenced;
    EEPROM.write(0, silenced);
  }
  //silenced = false;
  
  AWAKE = true;
}



void loop() {
    
  if (AWAKE){
    // TARDIS ROUNTINE

    for(int x=0; x<315; x++){
      float y = cos(x / 100.0);
      if(y > 0) { y = -y;}
      y = y + 1;
      y = y * 255;
      
      checkTouch();
      if (!AWAKE) break;
      if (!silenced){
        if (y > 10){  
          tone(speakerPin, 200 + y + random(50));
          if(y > 20){
            digitalWrite(LEDpin, HIGH);
          }
          else{
            digitalWrite(LEDpin, LOW);
          }
        }
        else{
          noTone(speakerPin);
        }
      }
      else{
        analogWrite(LEDpin, y);
      }
      delay(5);
      if(!ATTINY && x%10==0){
        //Serial.print(x);
        //Serial.print(" ");
        //Serial.println(y);
      }
    }
 
 
    counter++;
    if (!silenced && counter == 5){
      AWAKE = false;
      counter = 0;
      counter2 = 0;
      noTone(speakerPin);
      /*
      digitalWrite(LEDpin, HIGH);
      for(int x=0; x<600; x++){ // ten minute loop
        if (checkTouch()){
          break;
        }
        delay(1000);
      }
      digitalWrite(LEDpin, LOW);
      */
    }
  }
  
  else{ // was sleeping

    delay(50);
    system_sleep();
    checkTouch();
  }
  
  #if (!ATTINY)
    if (true){//counter % 10 == 0){
      Serial.print("L ");
      Serial.print(AWAKE);
      Serial.print(" ");
      Serial.println(counter2);
    }
  #endif
    delay(100);


}




int getReading(byte pin, byte pullUp){
  int n=25;
  digitalWrite(pullUp, HIGH); // internal pullup
  long val = 0;
  for(int x=0; x<n; x++){
    val += analogRead(pin);
  }
  val = val / n;
  digitalWrite(pullUp, LOW); 
  return val; 
}


boolean checkTouch(){
  // check touch
  touchVal = getReading(touchPin, touchPullUp);
  boolean returnVal = false;
  if (touchVal < touchThreshold){
    digitalWrite(LEDpin, HIGH);
    tone(speakerPin, 200);
    delay(10);
    noTone(speakerPin);
    returnVal = true;
    AWAKE = !AWAKE;
    //digitalWrite(LEDpin, AWAKE);
    if (AWAKE){
      counter = 0;
    }
    while(getReading(touchPin, touchPullUp) < touchThreshold){
      delay(100);
    }
    digitalWrite(LEDpin, LOW);
    delay(250);

  }
  return returnVal;
}


// ---------------SLEEP STUFF-----------------

// set system into the sleep state 
// system wakes up when wtchdog is timed out
void system_sleep() {
  //digitalWrite(touchPullUp, LOW);
  //digitalWrite(photoPullUp, LOW);
  cbi(ADCSRA,ADEN);                    // switch Analog to Digitalconverter OFF
  set_sleep_mode(SLEEP_MODE_PWR_DOWN); // sleep mode is set here
  sleep_enable();
  sleep_mode();                        // System sleeps here
  sleep_disable();                     // System continues execution here when watchdog timed out 
  sbi(ADCSRA,ADEN);                    // switch Analog to Digitalconverter ON
  //digitalWrite(touchPullUp, HIGH);
  //digitalWrite(photoPullUp, HIGH);;
}


// 0=16ms, 1=32ms,2=64ms,3=128ms,4=250ms,5=500ms
// 6=1 sec,7=2 sec, 8=4 sec, 9= 8sec
void setup_watchdog(int ii) {
  byte bb;
  int ww;
  if (ii > 9 ) ii=9;
  bb=ii & 7;
  if (ii > 7) bb|= (1<<5);
  bb|= (1<<WDCE);
  ww=bb;

  MCUSR &= ~(1<<WDRF);
  #if(ATTINY)                              // slightly different register names
    WDTCR |= (1<<WDCE) | (1<<WDE); //WDTCR
    WDTCR = bb;// set new watchdog timeout value
    WDTCR |= _BV(WDIE); 
  #else
    WDTCSR |= (1<<WDCE) | (1<<WDE); //WDTCR
    WDTCSR = bb;// set new watchdog timeout value
    WDTCSR |= _BV(WDIE);
  #endif 
}
  
  
// Watchdog Interrupt Service / is executed when watchdog timed out
ISR(WDT_vect) {
  watchdog_flag = true;  // set global flag
}
