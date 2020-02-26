
/*
cd C:\Users\MakersBox\Downloads\arduino-1.6.4\hardware\tools\avr\bin
avrdude -C ..\etc\avrdude.conf -P COM8 -b 19200 -c avrisp -p attiny84 -v -e -U lfuse:w:0xE2:m -U hfuse:w:0xD7:m -U efuse:w:0xFf:m  -U flash:w:SMD_spinner_THT_R2.cpp.hex

Use the following core:
https://github.com/SpenceKonde/ATTinyCore

Board: Attiny 24/44/84
BOD: BOD Disabled
LTO: Disabled (no idea what this is)
Pin Mapping: Clockwise
Clock: 8 Mhz Internal

// ATMEL ATTINY84 / ARDUINO
//  PIN MAPPING: CLOCKWISE
//                           +-\/-+
//                     VCC  1|    |14  GND
//           (PB0) D10/A10  2|    |13  D0 / A0 (AREF)
//           (PB1) D9 / A9  3|    |12  D1 / A1 (PA1) 
//             (PB3) RESET  4|    |11  D2 / A2 (PA2) 
//(PB2, PWM, INTO) D8 / A8  5|    |10  D3 / A3 (PA3) 
//      (PA7, PWM) D7 / A7  6|    |9   D4 / A4 (PA4, SCK)
//(PA6, PWM, MOSI) D6 / A6  7|    |8   D5 / A5 (PA5, PWM, MISO)
*/

#include <EEPROM.h>
#include <avr/pgmspace.h>
#include <avr/sleep.h>
#include "font.h"
#include "textAndShapes.h"

// clear and set interup routines
#ifndef cbi
  #define cbi(sfr, bit) (_SFR_BYTE(sfr) &= ~_BV(bit))
#endif
#ifndef sbi
  #define sbi(sfr, bit) (_SFR_BYTE(sfr) |= _BV(bit))
#endif


const int charHeight = 8;
const int charWidth = 5;
int rows= 8;		                 // Total LED's in a row
int LEDS[] = {10, 9, 8, 7, 6, 5, 4, 3};  // Port A
bool STATES[] = {LOW, LOW, LOW, LOW, LOW, LOW, LOW, LOW};

char charArray[6];                       // holds characters to display
unsigned long lastTimeUs;                // time (us) magnet sensed
unsigned long revTimeUs;                 // time (us) of last full rotation
unsigned long dwellTimeUs;               // time (us) between LED changes (based on rotation speed)
volatile unsigned long revolutions = 0;  // track number of revolutions since last start
long totalRevolutions;                   // track total number of revolutions (stored in EEPROM)
bool spinning = true;                    // track reset of time & counts
unsigned long startTimeUs;               // time (us) current spinning started
  
int mode;                                // current operating mode, stored in EEPROM
int modes = 8;                           // number of modes available
  // 0 -> text "Hello World!"
  // 1 -> RPM
  // 2 -> time in seconds
  // 3 -> spin count
  // 4 -> spin count (total)
  // 5 -> "lilly pad" pattern
  // 6 -> shape 1 (heart)
  // 7 -> shape 2 (smile)
  
byte magPin = 2;                 // Hall effect sensor, pulled-up, goes low when magnet passes      
byte buttonPin = 0;             

volatile boolean rotationFlag = false;  // modified by ISR


void setup(){
  // setup inputs
  pinMode(buttonPin, INPUT);
  digitalWrite(buttonPin, HIGH);
  pinMode(magPin, INPUT);
  digitalWrite(magPin, HIGH);
  
  // setup other LEDs
  for(int LED=0; LED<(sizeof(LEDS)/sizeof(int)); LED++){
    pinMode(LEDS[LED], OUTPUT);
    digitalWrite(LEDS[LED], STATES[LED]);
  }

  // Interupt setting
  GIMSK  = bit (PCIE1);   // Pin change interrupt enable
  PCMSK1 = bit (PCINT10); // Enable interupt on PCINT10 (D2)
  sei();                  // enables interrupts

  // get saved mode from eeprom
  mode = EEPROM.read(0);
  if (mode >= modes) {
    mode = 0; // may be very large first time
  }
  
  // get saved revolution total from eeprom
  totalRevolutions = EEPROMReadlong(1);
  if (totalRevolutions < 0 || totalRevolutions > 999999UL){ // will be -1 first time.
    totalRevolutions = 0;
    EEPROMWritelong(1, 0);
  }

  // show we are alive and what mode is active
  blipLEDs();

  lastTimeUs = micros();
}


void loop(){
  int sigFigs = 5;               // number of significant figures to deplay
  unsigned long curTimeUs;
  int seconds;
  unsigned int rpm;
  
  checkButton();
  if ((micros() - lastTimeUs) > 20000000UL){  // sleep after 20 seconds
    digitalWrite(LEDS[0], HIGH);
    ledsOff();
    system_sleep();
    lastTimeUs = micros();
  }
  if (((micros() - lastTimeUs) > 2000000UL)){ // less than 1 rev / sec
    if (spinning){
      spinning = false;
      totalRevolutions = totalRevolutions + revolutions;
      EEPROMWritelong(1, totalRevolutions);
      revolutions = 0;
      clearArray();
      blipLEDs();
      digitalWrite(LEDS[mode], LOW);
      //system_sleep();
    }
    else {
      //digitalWrite(LEDS[mode], LOW); 
    }
  }

  if (mode == 5){  // lilly pad pattern, show regardles of magnet.
    for(int LED=0; LED<(sizeof(LEDS)/sizeof(int)); LED++){
       digitalWrite(LEDS[LED], HIGH); 
       delay(1); 
       digitalWrite(LEDS[LED], LOW); 
    } 
    for(int LED=(sizeof(LEDS)/sizeof(int))-1; LED >= 0; LED--){
       digitalWrite(LEDS[LED], HIGH); 
       delay(1); 
       digitalWrite(LEDS[LED], LOW); 
    }     
  }

  else if (rotationFlag){ // we are spinning!
    rotationFlag = false;
    if (!spinning){
      spinning = true;
      startTimeUs = micros(); 
    }
    curTimeUs = micros();
    revTimeUs = curTimeUs - lastTimeUs;
    dwellTimeUs = revTimeUs * 3UL / 360UL;   // 3 degrees
    seconds = (curTimeUs - startTimeUs) / 1000000UL;
    rpm = 60000 * 1000 / revTimeUs;
    lastTimeUs = curTimeUs;
    clearArray();    
    if (mode == 0){
      strcpy (charArray, text);
      //sprintf(charArray, "%lu", dwellTimeUs);
    }
    else if (mode == 1){
      sprintf(charArray, " %d", rpm);
      sigFigs = 3;
    }
    else if (mode == 2){
      sprintf(charArray, "  %d", seconds);
    }   
    else if (mode == 3){   
      sprintf(charArray, " %lu", revolutions);
    }
    else if (mode == 4){   
      sprintf(charArray, "%lu", totalRevolutions + revolutions);
    }
    else if (mode == 6 || mode ==7){ // shapes 1 or 2
      dwellTimeUs = revTimeUs / 72.0; // * 5UL / 360UL;   // 5 degrees
      for(int k=0; k< sizeof(shape_1);k++){
        if (rotationFlag){
          break;
        }
        int i = k + 26; // advancing because of magnet location
        if(i >= sizeof(shape_1)){
          i = i - sizeof(shape_1);
        }
        char b;
        if (mode == 6){
          b = pgm_read_byte_near(&(shape_1[i]));
        }
        else{
          b = pgm_read_byte_near(&(shape_2[i]));          
        }
        //for (int j=0; j<charHeight; j++) {
        //  digitalWrite(LEDS[j], bitRead(b, 7-j));
        //}
        PORTA = b;
        delayMicroseconds(dwellTimeUs);
      }
    }    


    // Text in top half
    if (mode < 5) { 
      int digits = 0;    
      for(int k=0; k< sizeof(charArray); k++){
        char c = charArray[k];
        if (rotationFlag){
          break;
        }
        if(c){
          if (digits < sigFigs){
            printLetter(c);
            //digits += 1;
          }
          else{
            printLetter('0');
          }
          digits += 1;
        }
      }
      
      // Handle display in lower section
      clearArray();
      if(1 && (revTimeUs < 200000)){
        char * ptr = (char *) pgm_read_word (&string_table[mode]);
        //char buffer [6]; // must be large enough!
        strcpy_P (charArray, ptr);
  
        // wait for it . . .
        while((micros() < (lastTimeUs + revTimeUs / 2 - 5 * dwellTimeUs)) && !rotationFlag){};
        
        // show it
        for (int k=sizeof(charArray)-1; k>=0; k--){
          if (rotationFlag){
            break;
          }
          printLetterLower(charArray[k]);;
        }
      }
    }
  }  
}


ISR(PCINT1_vect){  // Magnet sensed
  if (!digitalRead(magPin)){
    rotationFlag = true;             // Increment volatile variables
    revolutions += 1;
  }
}


void ledsOff(){
  for(int LED=0; LED<(sizeof(LEDS)/sizeof(int)); LED++){
    digitalWrite(LEDS[LED], LOW); 
  }   
}


void dwellDelay(){ // avoid glitch on first rotation having erronious value 
  if (dwellTimeUs > 2000){
    dwellTimeUs = 2000;
  }
  if (dwellTimeUs < 100){
    dwellTimeUs = 100;
  }  
  delayMicroseconds(dwellTimeUs);
}


void printLetter(char ch){
// https://github.com/reger-men/Arduion-POV-clock/blob/master/clock.ino
  // make sure the character is within the alphabet bounds (defined by the font.h file)
  // if it's not, make it a blank character
  if (ch < 32 || ch > 126){
    ch = 32;
    }
  // subtract the space character (converts the ASCII number to the font index number)
  ch -= 32;
  // step through each byte of the character array
  for (int i=0; i<charWidth; i++) {
    char b = pgm_read_byte_near(&(font[ch][i]));
    
    for (int j=0; j<charHeight; j++) {
      digitalWrite(LEDS[j], bitRead(b, 7-j));
    }
    dwellDelay();
  }
  
  //clear the LEDs
  for (int i = 0; i < rows; i++){
    digitalWrite(LEDS[i] , LOW);
  }
  dwellDelay();
}


void printLetterLower(char ch){
  // make sure the character is within the alphabet bounds (defined by the font.h file)
  // if it's not, make it a blank character
  if (ch < 32 || ch > 126){
    ch = 32;
    }
  // subtract the space character (converts the ASCII number to the font index number)
  ch -= 32;
  // step through each byte of the character array
  for (int i=charWidth-1; i>-1; i--) {
    char b = pgm_read_byte_near(&(font[ch][i]));
    for (int j=0; j<charHeight; j++) {
      digitalWrite(LEDS[j], bitRead(b,j));
    }
    dwellDelay();
  }
  //clear the LEDs
  for (int i = 0; i < rows; i++)
    digitalWrite(LEDS[i] , LOW);

  // space between letters
  dwellDelay();
}  
 


bool touched(){
  // returns true if touched, false if not.  Light LED until touch released
  bool touchVal = digitalRead(buttonPin);
  if (!touchVal){
    while(!digitalRead(buttonPin)){ // wait till touch release
      delay(10);
      digitalWrite(LEDS[mode], LOW);
    }
    //digitalWrite(LEDS[0], LOW);
    return (true);
  }
  else{
    return (false);
  }
}


void checkButton(){
  // check button for mode change and display current mode
  if (touched()){
    mode += 1;
    if (mode >= modes){
      mode = 0;
    }
    EEPROM.write(0, mode);
    blipLEDs();
  }
}


void blipLEDs(){
  // something to show we are alive
  for(int LED=0; LED<(sizeof(LEDS)/sizeof(int)); LED++){
    digitalWrite(LEDS[LED], HIGH); 
    delay(10); 
    digitalWrite(LEDS[LED], LOW); 
  } 
  for(int LED=sizeof(LEDS)/sizeof(int); LED>mode; LED--){
    digitalWrite(LEDS[LED], HIGH); 
    delay(10); 
    digitalWrite(LEDS[LED], LOW); 
  } 
  digitalWrite(LEDS[mode], HIGH);
}



void EEPROMWritelong(int address, long value)  {
  //This function will write a 4 byte (32bit) long to the eeprom at
  //the specified address to address + 3.
  //https://playground.arduino.cc/Code/EEPROMReadWriteLong

  //Decomposition from a long to 4 bytes by using bitshift.
  //One = Most significant -> Four = Least significant byte
  byte four = (value & 0xFF);
  byte three = ((value >> 8) & 0xFF);
  byte two = ((value >> 16) & 0xFF);
  byte one = ((value >> 24) & 0xFF);

  //Write the 4 bytes into the eeprom memory.
  EEPROM.write(address, four);
  EEPROM.write(address + 1, three);
  EEPROM.write(address + 2, two);
  EEPROM.write(address + 3, one);
}


long EEPROMReadlong(long address){
  //Read the 4 bytes from the eeprom memory.
  long four = EEPROM.read(address);
  long three = EEPROM.read(address + 1);
  long two = EEPROM.read(address + 2);
  long one = EEPROM.read(address + 3);

  //Return the recomposed long by using bitshift.
  return ((four << 0) & 0xFF) + ((three << 8) & 0xFFFF) + ((two << 16) & 0xFFFFFF) + ((one << 24) & 0xFFFFFFFF);
}


void clearArray(){
  for(int i=0; i<sizeof(charArray); i++){      // clear array
    charArray[i] = 0;
  }
}


// set system into the sleep state 
// system wakes up when wtchdog is timed out
void system_sleep() {
  cbi(ADCSRA,ADEN);                    // switch Analog to Digitalconverter OFF
  set_sleep_mode(SLEEP_MODE_PWR_DOWN); // sleep mode is set here
  sleep_enable();
  sleep_mode();                        // System sleeps here
  sleep_disable();                     // System continues execution here when watchdog timed out 
  sbi(ADCSRA,ADEN);                    // switch Analog to Digitalconverter ON
}
