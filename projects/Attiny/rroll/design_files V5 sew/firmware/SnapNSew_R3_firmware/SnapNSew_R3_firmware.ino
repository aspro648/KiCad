/******************************************************************************
by Ken Olsen (648.ken@gmail.com) 
MakersBox.blogspot.com

This sketch will compile for SnapNsew 
(https://www.tindie.com/products/MakersBox/snapnsew-kit-a-soft-circuit--embedded-platform/)
or Arduino with FunShield (https://www.tindie.com/products/MakersBox/funshield-arduino-shield-kit)

Button press will turn lights on or off.
Button held during reset changes mode (indicated by flashes):
  1 - Rickroll
  2 - Twinkle Twinkle 
  3 - Happy Birthday
  4 - Heartbeat only
  5 = Twinkle only

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
  #define ledPin 4     
  #define lightPin 3    // CdS or pushbutton hooked from PB4 (Pin 3, A2/D4) to ground
  #define lightPullUp 3
  #define touchPin 1
  #define touchPullUp 2
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
  
byte mode;
//const char song1[] PROGMEM = "RickAstley:d=16,o=5,b=100:g,a,c";
//const char song2[] PROGMEM = "Twinkle Tinkle:d=4,o=5,b=120:c,c,g,g,a,a,2g,f,f";
//const char song3[] PROGMEM = "Happy Birthday:d=4,o=5,b=125:8g.,16g,a,g,c6,2b";
const char song1[] PROGMEM = "RickAstley:d=16,o=5,b=100:g,a,c,a, 8e.,8e.,4d.,g,a,c, 8d.,8d.,4c.,g.,a.,c.,a., 4c,8d,4b,4b,8g,4d,2c";
const char song2[] PROGMEM = "Twinkle Tinkle:d=4,o=5,b=120:c,c,g,g,a,a,2g,f,f,e,e,d,d,2c";
const char song3[] PROGMEM = "Happy Birthday:d=4,o=5,b=125:8g.,16g,a,g,c6,2b,8g.,16g,a,g,d6,2c6,8g.,16g,g6,e6,c6,b,a,8f.6,16f6,e6,c6,d6,2c6";

int on_time = 10;  // in seconds
const int touch_level = 980; 
float light_trigger = 0.1; // light change for trigger

void setup(){
  #if (ARDUINO)
    Serial.begin(9600);
  #endif
  
  setup_watchdog(4); 
  // 0=16ms, 1=32ms,2=64ms,3=128ms,4=250ms,5=500ms
  // 6=1 sec,7=2 sec, 8=4 sec, 9= 8sec

  pinMode(buzzerPin, OUTPUT);
  
  // get song number from eeprom
  mode = EEPROM.read(0);
  if (mode > 4) {
    mode = 1; // may be very large first time
  }
  
  if (touched()){
    mode += 1;
    if (mode > 4){
      mode = 1;
    }
    EEPROM.write(0, mode);
  }

  #if (ARDUINO)
    Serial.print("SnapNsew R3 mode = ");
    Serial.println(mode);
  #endif

  delay(150);
  pinMode(ledPin, OUTPUT);
  for (int x=0; x<mode; x++){ // blink something to indicate what mode we are in
    digitalWrite(ledPin, HIGH);
    delay(150);
    digitalWrite(ledPin, LOW);
    delay(150);
  }
  pinMode(ledPin, INPUT);                                                                                                                                                      
  delay(500);
}


bool touched(){
  // returns true if touched, false if not.  Light LED until touch released
  int touchVal = getReading(touchPin, touchPullUp);
  if (touchVal < touch_level){
    #if (ARDUINO)
      Serial.println("touch detected");
    #endif
    pinMode(ledPin, OUTPUT);
    while(touchVal < touch_level){ // wait till touch release
      delay(10);
      digitalWrite(ledPin, HIGH);
      touchVal = getReading(touchPin, touchPullUp);
    }
    digitalWrite(ledPin, LOW);
    pinMode(ledPin, INPUT);
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


void loop(){

  bool awake = true; 
  if(mode == 1){
    awake = play_rtttl(song1);
  }
  else if(mode == 2){
    awake = play_rtttl(song2);
  }
  else if(mode == 3){
    awake = play_rtttl(song3);
  }

  if (awake){
    if(mode == 2 || mode == 3){ // twinkle-twinkle or Happy Birthday get twinkles
      flicker(on_time);
    }
    else{
      heartBeat(on_time);
    }
  }

  int last_light = getReading(lightPin, lightPullUp);
  #if (ARDUINO)
    Serial.println(last_light);
  #endif
  
  while(true){
    int cur_light = getReading(lightPin, lightPullUp);
    int high_light = last_light * (1 + light_trigger);
    int low_light = last_light * (1 - light_trigger);
    
    if(touched()){
      break;
    }
    
    #if (ARDUINO) 
      Serial.print(low_light);
      Serial.print(" < ");
      Serial.print(cur_light);
      Serial.print(" < ");
      Serial.println(high_light);
      delay(50); // need time to print before sleep
    #endif    
    
    if (cur_light < low_light || cur_light > high_light){ // light increase
      break;
    }
    system_sleep();
  }

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
    
    // check for button push
    if (touched()){
      digitalWrite(ledPin, LOW);
      pinMode(ledPin, INPUT);
      break;
    }
  }//while
  
  // go to a low power state
  digitalWrite(ledPin, LOW);
  pinMode(ledPin, INPUT);
  return(true);
}


void flicker(int on_time) {
// based on https://github.com/bunchesofdonald/arduino-candle
  int brightness   = 128;
  int flickerShift = 30;
  long nextFlicker  = 0;
  long off_time = millis() + on_time * 1000;
  
  pinMode(ledPin, OUTPUT);
  
  while(millis() < off_time){
    unsigned long curr_time = millis();
    
    if(curr_time >= nextFlicker) {
      brightness = random(brightness - flickerShift, brightness + flickerShift);
      
      if(brightness < 100) { brightness = 100; }
      if(brightness > 255) { brightness = 255; }
      
      analogWrite(ledPin, brightness);
      int rnd = random(10, 50);
      nextFlicker = curr_time + rnd;
      #if (ARDUINO) 
        Serial.println(nextFlicker);
      #endif
    }
 
    // check for button push
    if (touched()){
      break;
    }
  }
  digitalWrite(ledPin, LOW);
  pinMode(ledPin, INPUT);
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
  pinMode(ledPin, OUTPUT);
  digitalWrite(ledPin, HIGH);
  
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
      pinMode(ledPin, INPUT);          
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
  pinMode(ledPin, INPUT);
  return (true);
}



