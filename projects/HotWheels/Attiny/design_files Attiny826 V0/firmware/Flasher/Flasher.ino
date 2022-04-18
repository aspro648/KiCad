/******************************************************************************
by Ken Olsen (648.ken@gmail.com) 
MakersBox.blogspot.com


   
******************************************************************************/

#include <EEPROM.h>
#include <avr/sleep.h>


#ifndef cbi
  #define cbi(sfr, bit) (_SFR_BYTE(sfr) &= ~_BV(bit))
#endif
#ifndef sbi
  #define sbi(sfr, bit) (_SFR_BYTE(sfr) |= _BV(bit))
#endif

// hardware\breadboard\avr\boards.txt
// atmega328bb.build.board=AVR_ATMEGA328BB

long sleepyTime = 60000; // sleep after (ms)  900000 = 15 min, 300000 = 5 min

boolean DEBUG = false;

// V0.2
int HL1 = 1;   // headlights
int HL2 = 4;
int TL1 = 8;   // taillights
int TL2 = 9;   // taillights
int FL1 = 15;  // flasher 1
int FL2 = 16;  // flasher 2
int UL1 = 0;   // Underlighting
int UL2 = 7;   // Underlighting
int Vin = 5;

int mode;     // 0 = flashers or interior only, 1 = headlights only, 2 = headlights + flashers / interior

int t1 = 125;
int t2 = 50;


void setup(){

  mode = EEPROM.read(0);
  if (mode > 1){  // probaly 255 on firt execution
    mode = 0;
  }
  else {
    mode = mode + 1;
  }
  EEPROM.write(0, mode);  // remember for next time
 


  pinMode(HL1, OUTPUT);
  pinMode(HL2, OUTPUT);
  pinMode(TL1, OUTPUT);
  pinMode(TL2, OUTPUT);
  pinMode(FL1, OUTPUT);
  pinMode(FL2, OUTPUT);
  pinMode(UL1, OUTPUT);
  pinMode(UL2, OUTPUT);
  pinMode(Vin, INPUT);

  digitalWrite(FL1, HIGH);
  //analogReference(INTERNAL2V5);

  while(0){
    int v = analogRead(Vin);
    //int v = Vi * (39000 + 10000)/1000 
    
  
    if (v > 270){
      digitalWrite(HL1, HIGH);
    }
    if (v > 272){
      digitalWrite(HL2, HIGH);
    }
    if (v > 274){
      digitalWrite(TL1, HIGH);
    }
    if (v > 278){
      digitalWrite(TL2, HIGH);
    }
    if (v > 280){
      digitalWrite(UL1, HIGH);
    }
    if (v > 300){
      digitalWrite(UL2, HIGH);
    }
  }
  

  int blinkcount = 1;

  // inital flash for check
  for(int j=0; j<blinkcount; j++){
    digitalWrite(HL1, HIGH);
    delay(100);
    digitalWrite(HL1, LOW); 
    digitalWrite(HL2, HIGH);
    delay(100);  
    digitalWrite(HL2, LOW);          
    digitalWrite(TL1, HIGH);
    delay(100);  
    digitalWrite(TL1, LOW);        
    digitalWrite(TL2, HIGH);  
    delay(100);   
    digitalWrite(TL2, LOW);  
    digitalWrite(FL1, HIGH);
    delay(100);    
    digitalWrite(FL1, LOW);
    delay(100);  
    digitalWrite(FL2, HIGH);
    delay(100);     
    digitalWrite(FL2, LOW);        
    digitalWrite(UL1, HIGH);
    delay(100);       
    digitalWrite(UL1, LOW);        
    digitalWrite(UL2, HIGH);
    delay(100);       
    digitalWrite(UL2, LOW); 
  }
  delay(100);
}


void loop(){
  if(mode > 0){  // night mode
    digitalWrite(HL1, HIGH);
    //digitalWrite(TL1, HIGH);
    analogWrite(TL1, 50);
    digitalWrite(HL2, HIGH);
    digitalWrite(TL2, HIGH);
    analogWrite(TL2, 50);
  }

  if(mode != 1){
    digitalWrite(UL1, HIGH);
    digitalWrite(UL2, HIGH);
    while(1){  // flash sequence
  
      if(millis()>sleepyTime){
        system_sleep();
      }
      digitalWrite(FL1, HIGH);
      delay(t1);
      digitalWrite(FL1, LOW);
      delay(t2);
      digitalWrite(FL1, HIGH);
      delay(t1);
      digitalWrite(FL1, LOW);
      delay(t2);
  
      digitalWrite(FL1, HIGH);
      delay(t2);
      digitalWrite(FL1, LOW);
      delay(t2);
      digitalWrite(FL1, HIGH);
      delay(t2);
      digitalWrite(FL1, LOW);
      delay(t2);
      digitalWrite(FL1, LOW);
  
  
      digitalWrite(FL2, HIGH);
      delay(t1);
      digitalWrite(FL2, LOW);
      delay(t2);
      digitalWrite(FL2, HIGH);
      delay(t1);
      digitalWrite(FL2, LOW);
      delay(t2);
  
      digitalWrite(FL2, HIGH);
      delay(t2);
      digitalWrite(FL2, LOW);
      delay(t2);
      digitalWrite(FL2, HIGH);
      delay(t2);
      digitalWrite(FL2, LOW);
      delay(t2);
  
      for(int x=0; x<3; x++){
        digitalWrite(FL1, HIGH);
        delay(t1);
        digitalWrite(FL1, LOW);
        digitalWrite(FL2, HIGH);
        delay(t1);
        digitalWrite(FL2, LOW);
      }
    }    
  } 
}


// set system into the sleep state 
// system wakes up when wtchdog is timed out
void system_sleep() {
  digitalWrite(FL1, LOW);
  digitalWrite(FL2, LOW);  
  digitalWrite(TL1, LOW);
  digitalWrite(HL1, LOW);    
  digitalWrite(TL2, LOW);
  digitalWrite(HL2, LOW); 
  digitalWrite(UL1, LOW);  
  digitalWrite(UL2, LOW); 
      
  //cbi(ADCSRA,ADEN);                    // switch Analog to Digitalconverter OFF
  set_sleep_mode(SLEEP_MODE_PWR_DOWN); // sleep mode is set here
  sleep_enable();
  sleep_mode();                        // System sleeps here

  
  sleep_disable();                     // System continues execution here when watchdog timed out 
  //sbi(ADCSRA,ADEN);                    // switch Analog to Digitalconverter ON
}
