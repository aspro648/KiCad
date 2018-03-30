/******************************************************************************
by Ken Olsen (648.ken@gmail.com) 
MakersBox.blogspot.com



Not all Attiny cores support the tone() function. Try this one
https://github.com/SpenceKonde/ATTinyCore

ATMEL ATTINY45/85 Pin Assignments
                   +-\/-+
  Ain0 (D 5) PB5  1|    |8  Vcc
  Ain3 (D 3) PB3  2|    |7  PB2 (D 2) Ain1
  Ain2 (D 4) PB4  3|    |6  PB1 (D 1) pwm1
             GND  4|    |5  PB0 (D 0) pwm0
   
******************************************************************************/
#include <EEPROMex.h>
#include <avr/sleep.h>
#include <avr/wdt.h>
#include <avr/pgmspace.h>

#ifndef cbi
  #define cbi(sfr, bit) (_SFR_BYTE(sfr) &= ~_BV(bit))
#endif
#ifndef sbi
  #define sbi(sfr, bit) (_SFR_BYTE(sfr) |= _BV(bit))
#endif

volatile boolean watchdog_flag = true;

// Pins are different between Arduino and Attiny
#if defined(__AVR_ATtiny85__)
  #define ARDUINO 0
  #define buzzerPin 0 
  #define ledPin 2         // was 1 in V0    
  #define lightPin 2       // was 3 in V0
  #define lightPullUp 4    // was 3 in V0
  #define touchPin 3       // was 2 in V0
  #define touchPullUp 3    // was 4 in V0
#else  
  #define ARDUINO 1
  #define buzzerPin 11
  #define ledPin 9  // RGB red
  #define lightPin A1
  #define lightPullUp A1
  #define touchPin A3
  #define touchPullUp A3
#endif

// variables for song
#define OCTAVE_OFFSET 0

#define NOTE_C4  262
#define NOTE_CS4 277
#define NOTE_D4  294
#define NOTE_DS4 311
#define NOTE_E4  330
#define NOTE_F4  349
#define NOTE_FS4 370
#define NOTE_G4  392
#define NOTE_GS4 415
#define NOTE_A4  440
#define NOTE_AS4 466
#define NOTE_B4  494
#define NOTE_C5  523
#define NOTE_CS5 554
#define NOTE_D5  587
#define NOTE_DS5 622
#define NOTE_E5  659
#define NOTE_F5  698
#define NOTE_FS5 740
#define NOTE_G5  784
#define NOTE_GS5 831
#define NOTE_A5  880
#define NOTE_AS5 932
#define NOTE_B5  988
#define NOTE_C6  1047
#define NOTE_CS6 1109
#define NOTE_D6  1175
#define NOTE_DS6 1245
#define NOTE_E6  1319
#define NOTE_F6  1397
#define NOTE_FS6 1480
#define NOTE_G6  1568
#define NOTE_GS6 1661
#define NOTE_A6  1760
#define NOTE_AS6 1865
#define NOTE_B6  1976
#define NOTE_C7  2093
#define NOTE_CS7 2217
#define NOTE_D7  2349
#define NOTE_DS7 2489
#define NOTE_E7  2637
#define NOTE_F7  2794
#define NOTE_FS7 2960
#define NOTE_G7  3136
#define NOTE_GS7 3322
#define NOTE_A7  3520
#define NOTE_AS7 3729
#define NOTE_B7  3951
#define NOTE_C8  4186
#define NOTE_CS8 4435
#define NOTE_D8  4699
#define NOTE_DS8 4978

int notes[] = { 0, 
  NOTE_C4, NOTE_CS4, NOTE_D4, NOTE_DS4, NOTE_E4, NOTE_F4, NOTE_FS4, NOTE_G4, NOTE_GS4, NOTE_A4, NOTE_AS4, NOTE_B4,
  NOTE_C5, NOTE_CS5, NOTE_D5, NOTE_DS5, NOTE_E5, NOTE_F5, NOTE_FS5, NOTE_G5, NOTE_GS5, NOTE_A5, NOTE_AS5, NOTE_B5,
  NOTE_C6, NOTE_CS6, NOTE_D6, NOTE_DS6, NOTE_E6, NOTE_F6, NOTE_FS6, NOTE_G6, NOTE_GS6, NOTE_A6, NOTE_AS6, NOTE_B6,
  NOTE_C7, NOTE_CS7, NOTE_D7, NOTE_DS7, NOTE_E7, NOTE_F7, NOTE_FS7, NOTE_G7, NOTE_GS7, NOTE_A7, NOTE_AS7, NOTE_B7
  };
  
int counter = 0;
int song = 0;
const char song1[] PROGMEM = "RickAstley:d=16,o=5,b=100:g,a,c,a, 8e.,8e.,4d.";
const char song2[] PROGMEM = "RickAstley:d=16,o=5,b=100:g,a,c, 8d.,8d.,4c.,";
const char song3[] PROGMEM = "RickAstley:d=16,o=5,b=100:g.,a.,c.,a., 4c,8d,4b,4b,8g,4d,2c";

//const char song1[] PROGMEM = "RickAstley:d=16,o=5,b=100:g,a,c,a, 8e.,8e.,4d.,g,a,c, 8d.,8d.,4c.,g.,a.,c.,a., 4c,8d,4b,4b,8g,4d,2c";


int on_time = 10;  // in seconds
const int touch_level = 980; 


void setup(){
  
  setup_watchdog(4); 
  // 0=16ms, 1=32ms,2=64ms,3=128ms,4=250ms,5=500ms
  // 6=1 sec,7=2 sec, 8=4 sec, 9= 8sec

  pinMode(buzzerPin, OUTPUT); 
  pinMode(ledPin, OUTPUT);
  chirp();
  delay(100);

}


bool touched(){
  // returns true if touched, false if not.  Light LED until touch released
  int touchVal = getReading(touchPin, touchPullUp);
  if (touchVal < touch_level){
    #if (ARDUINO)
      Serial.println("touch detected");
    #endif
    while(touchVal < touch_level){ // wait till touch release
      delay(10);
      digitalWrite(ledPin, HIGH);
      touchVal = getReading(touchPin, touchPullUp);
    }
    digitalWrite(ledPin, LOW);
    return (true);
  }
  else{
    return (false);
  }
}


int getReading(byte pin, byte pullUp){
  long tot = 0;
  delay(1);
  digitalWrite(pullUp, HIGH); // internal pullup
  for (int x= 0; x < 25; x++){ 
    tot = tot + analogRead(pin);
  }
  digitalWrite(pullUp, LOW); 
  return int(tot / 25.0); 
}


void loop2(){
  // this is a debug loop to blink out the digits of a value
  int last_light = getReading(lightPin, lightPullUp);
  blinks(last_light);
  delay(5000);
  
}



void loop(){
  counter = 0;
  int last_light = getReading(lightPin, lightPullUp);
  delay(10);
  
  while(true){
    int cur_light = getReading(lightPin, lightPullUp);
    int high_light = last_light + 75;
    int low_light = last_light - 75;
    
    if(touched()){
      break;
    } 
    
    //if (cur_light < low_light || cur_light > high_light){ // light change
    if (cur_light > high_light){ // light change    
      //play_rtttl(song1);
      //last_light = getReading(lightPin, lightPullUp);
      break;
    }
    system_sleep();
    if (!random(60)){ // random flicker
      digitalWrite(ledPin, HIGH);
      delay(random(50) + 25);
      digitalWrite(ledPin, LOW);
    }
    counter += 1;
    //if (!random(200)){
    if(counter == 2000 && cur_light <850){
      chirp();
      counter = 0;
    }


  }
  if(song == 0){
    play_rtttl(song1);
  }
  else if(song == 1){
    play_rtttl(song2);
  }
  else{
    play_rtttl(song3);
  }
  song += 1;
  if (song > 2){
    song = 0;
  }
  delay(1000);
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
  // start timed sequence
  #if(ARDUINO || defined(__AVR_ATtiny84__)) // slightly different register names
    WDTCSR |= (1<<WDCE) | (1<<WDE); //WDTCR
    // set new watchdog timeout value
    WDTCSR = bb;
    WDTCSR |= _BV(WDIE);
  #else
    WDTCR |= (1<<WDCE) | (1<<WDE); //WDTCR
    // set new watchdog timeout value
    WDTCR = bb;
    WDTCR |= _BV(WDIE);
  #endif  
}
  
  
// Watchdog Interrupt Service / is executed when watchdog timed out
ISR(WDT_vect) {
  watchdog_flag = true;  // set global flag
}


boolean play_rtttl(const char *p){
  // based on original tone RTTTL example and https://github.com/ponty/arduino-rtttl-player/

  byte default_dur = 4;
  byte default_oct = 6;
  int bpm = 63;
  int num;
  long wholenote;
  long duration;
  byte note;
  byte scale;
 
  //digitalWrite(ledPin, HIGH);
  
  // format: d=N,o=N,b=NNN:
  // find the start (skip name, etc)
  while (pgm_read_byte(p) != ':'){
    p++;
  }
  p++;

  // get default duration
  if(pgm_read_byte(p) == 'd'){
    p++;
    p++;
    num = 0;

    while(isdigit(pgm_read_byte(p))) {
      num = (num * 10) + (pgm_read_byte(p) - '0');
      p++;
    }
    if(num > 0) {
      default_dur = num;
    }
    p++;                   // skip comma
  }
  
  // get default octave
  if(pgm_read_byte(p) == 'o'){
    p++; 
    p++; // skip "o="    
    num = pgm_read_byte(p) - '0';
    p++;
    if(num >= 3 && num <=7) default_oct = num;
    p++;                   // skip comma
  }

  // get BPM
  if(pgm_read_byte(p) == 'b'){
    p++;
    p++;
    num = 0;
    while(isdigit(pgm_read_byte(p))) {
      num = (num * 10) + (pgm_read_byte(p) - '0');
      p++;
    }
    bpm = num;
    p++;                   // skip colon
  }

  // BPM usually expresses the number of quarter notes per minute
  wholenote = (60 * 1000L / bpm) * 4;  // this is the time for whole note (in milliseconds)

  #if (ARDUINO)
    Serial.print("ddur: "); Serial.println(default_dur, 10);
    Serial.print("doct: "); Serial.println(default_oct, 10);
    Serial.print("bpm: "); Serial.println(bpm, 10);
    Serial.print("wn: "); Serial.println(wholenote, 10);
  #endif
  
  // now begin note loop
  while(pgm_read_byte(p)){
    // check for touch
    if(touched()){
      digitalWrite(ledPin, LOW);          
      return (false);
    }

    // first, get note duration, if available
    num = 0;
    while(isdigit(pgm_read_byte(p))){
      num = (num * 10) + (pgm_read_byte(p) - '0');
      p++;
    }
    
    if(num) duration = wholenote / num;
    else duration = wholenote / default_dur;  // we will need to check if we are a dotted note after

    note = 0;     // now get the note

    switch(pgm_read_byte(p)) {
      case 'c':
        note = 1;
        break;
      case 'd':
        note = 3;
        break;
      case 'e':
        note = 5;
        break;
      case 'f':
        note = 6;
        break;
      case 'g':
        note = 8;
        break;
      case 'a':
        note = 10;
        break;
      case 'b':
        note = 12;
        break;
      case 'p':
      default:
        note = 0;
    }
    p++;

    // now, get optional '#' sharp
    if(pgm_read_byte(p) == '#'){
      note++;
      p++;
    }

    // now, get optional '.' dotted note
    if(pgm_read_byte(p) == '.') {
      duration += duration/2;
      p++;
    }
  
    // now, get scale
    if(isdigit(pgm_read_byte(p))){
      scale = pgm_read_byte(p) - '0';
      p++;
    }
    else{
      scale = default_oct;
    }

    scale += OCTAVE_OFFSET;
    if(pgm_read_byte(p) == ',')
      p++;       // skip comma for next note (or we may be at the end)

    // now play the note
    if(note){
      #if (ARDUINO)
        Serial.print("Playing: ");
        Serial.print(scale, 10); Serial.print(' ');
        Serial.print(note, 10); Serial.print(" (");
        Serial.print(notes[(scale - 4) * 12 + note], 10);
        Serial.print(") ");
        Serial.println(duration, 10);
      #endif

      tone(buzzerPin, notes[(scale - 4) * 12 + note], duration);
      delay(duration);
    }
    else    {
      #if (ARDUINO)
        Serial.print("Pausing: ");
        Serial.println(duration, 10);
      #endif
      delay(duration);
    }
  }
  digitalWrite(ledPin, LOW);
  return (true);
}


void blinks(int val){
  int msd = 1000;
  bool fsd = false;
  if (val == 0){
    blink(50);
  }
  else{
    while(msd > 0){
      int digit = val / msd;
      if (digit > 0){
        fsd = true; 
      }
      if (digit == 0 && fsd){
        blink(50);
      }
      for(int x=0; x < digit; x++){
        blink(500);
      }
      delay(1000); 
      val = val - msd * digit;  
      msd = msd / 10;  
    }
  }
}


void blink(int val){
  digitalWrite(ledPin, HIGH);
  delay(val);
  digitalWrite(ledPin, LOW);
  delay(val);
}


void chirp(){

    for(int x=0; x<600; x+=4){
        tone(buzzerPin, 2000 + x + random(100));
        delayMicroseconds(1);
    }

    for(int x=315; x<600; x+=4){
        tone(buzzerPin, 2000 + x + random(100));
        delayMicroseconds(1);
    }    
    noTone(buzzerPin);

}

