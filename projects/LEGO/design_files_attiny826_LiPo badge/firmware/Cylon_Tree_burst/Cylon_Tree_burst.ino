
/*
 * 
https://github.com/SpenceKonde/megaTinyCore

Attiny 826

*/

#include <EEPROM.h>
#include <tinyNeoPixel.h>


#define PIN            PIN_PB4  // neopixle
#define NUMPIXELS      1
tinyNeoPixel pixels = tinyNeoPixel(NUMPIXELS, PIN, NEO_GRB);

int LEDS[] = {13, 12, 11, 14, 15, 16, 1};
int LEDS2[] = {1, 2, 3, 4, 6, 7, 10};

int v_pin = PIN_PA4;  //D0

int R = 0;
int G = 0;
int B = 255;


void setup(){
  analogReference(INTERNAL2V5);
  pinMode(v_pin, INPUT);

  pixels.setBrightness(25); //0-255
  pixels.begin(); // This initializes the NeoPixel library
  
  // setup other LEDs
  for(int LED=0; LED<int(sizeof(LEDS)/sizeof(int)); LED++){
    pinMode(LEDS[LED], OUTPUT);
  }
  for(int LED=0; LED<int(sizeof(LEDS2)/sizeof(int)); LED++){
    pinMode(LEDS2[LED], OUTPUT);
  }
  showVoltage();
}




void loop(){
  int i = 36;
  int brightness = 0;
  B = 255;
  G = 0;
  for(int LED=0; LED<int(sizeof(LEDS)/sizeof(int)); LED++){
    flash(LED);
    pixels.setBrightness(brightness); //0-255
    pixels.setPixelColor(0, pixels.Color(R, G, B));
    delay(1);
    pixels.show();
    brightness = brightness + 3;
    B = B - i;
    if(B <0) {B = 0;};
    G = G + i;
    if(G > 255) {G = 255;};


  }
  pixels.setPixelColor(0, pixels.Color(0, 255, 0));
  delay(1);
  pixels.show();
  delay(100);
  flashall();
  /*
  for(int LED=0; LED<int(sizeof(LEDS2)/sizeof(int)); LED++){
    digitalWrite(LEDS2[LED], HIGH);
  }
  delay(50);
  for(int LED=0; LED<int(sizeof(LEDS2)/sizeof(int)); LED++){
    digitalWrite(LEDS2[LED], LOW);
  }   
  delay(50);
  */
  //pixels.setPixelColor(0, pixels.Color(0, 0, 0));
  //delay(1);
  //pixels.show();  
  delay(100);
  for(int LED=int(sizeof(LEDS)/sizeof(int))-1; LED >0 ; LED--){
    flash(LED);
    brightness = brightness - 3;
    pixels.setBrightness(brightness); //0-255
    pixels.setPixelColor(0, pixels.Color(R, G, B));
    delay(1);
    pixels.show();
    B = B + i;
    if(B > 255) {B = 255;};
    G = G - i;    
    if(G <0) { G = 0;};  

  }
}


void mode0(){ // over and back
  int i = 28;
  B = 255;
  G = 0;
  for(int LED=0; LED<int(sizeof(LEDS)/sizeof(int)); LED++){
    flash(LED);
    pixels.setPixelColor(0, pixels.Color(R, G, B));
    pixels.show();
    if (LED < 9){
      B = B - i;
      if(B <0) {B = 0;};
      G = G + i;
      if(G > 255) {G = 255;};
    }
    else{
      B = B + i;
      if(B > 255) {B = 255;};
      G = G - i;    
      if(G <0) { G = 0;};  
    }
  }  
}

void flash(int LED){
  int i = 0;  // interval in us (0 -1000)
  int t = 100; // length of fade in ms

  int LEDahead = 0;
  if(LED < sizeof(LEDS)/sizeof(int)){
    LEDahead = LED + 1;
  }
  int LEDbehind = 0;
  if(LED > 0){
    LEDbehind = LED - 1;
  }

  for(int x=0; x < t/2; x++){ // ramp up
    digitalWrite(LEDS[LED], HIGH);
    //if (LEDbehind) {digitalWrite(LEDS[LEDbehind], LOW);}
    delayMicroseconds(x);
    digitalWrite(LEDS[LED], LOW);
    //if (LEDbehind) {digitalWrite(LEDS[LEDbehind], HIGH);}
    delayMicroseconds(2000 - x);
    i = i + 1;
  }
  //if (LEDbehind) {digitalWrite(LEDS[LEDbehind], LOW);}

  for(int x=t/2; x >= 0; x--){ // ramp down
    digitalWrite(LEDS[LED], HIGH);
    delayMicroseconds(x);
    digitalWrite(LEDS[LED], LOW);
    delayMicroseconds(2000 - x);
    i = i - 1;
  }
}


void flashall(){
  int i = 0;  // interval in us (0 -1000)
  int t = 100; // length of fade in ms


  for(int x=0; x < t/2; x++){ // ramp up
    for(int LED=0; LED<int(sizeof(LEDS2)/sizeof(int)); LED++){
      digitalWrite(LEDS2[LED], HIGH);
    }  
    delayMicroseconds(x);
    for(int LED=0; LED<int(sizeof(LEDS2)/sizeof(int)); LED++){
      digitalWrite(LEDS2[LED], LOW);
    }  
    delayMicroseconds(2000 - x);
    i = i + 1;
  }

  for(int x=t/2; x >= 0; x--){ // ramp down
    for(int LED=0; LED<int(sizeof(LEDS2)/sizeof(int)); LED++){
      digitalWrite(LEDS2[LED], HIGH);
    }  
    delayMicroseconds(x);
    for(int LED=0; LED<int(sizeof(LEDS2)/sizeof(int)); LED++){
      digitalWrite(LEDS2[LED], LOW);
    }  
    delayMicroseconds(2000 - x);
    i = i - 1;
  }
}


void showVoltage(){
  int val = analogRead(v_pin);
  int x = map(val, 284, 342, 0, 7);  //adc value to LED number  (3.4 to 4.1v)
  if (x <= 0){  // blink all LEDs three time for low voltage
    for(int i=0; i<5; i++){
      digitalWrite(LEDS[0], HIGH);
      delay(250);
      digitalWrite(LEDS[0], LOW);
      delay(250);      
    }
  }
  else{
    for(int LED=0; LED<x; LED++){
      digitalWrite(LEDS[LED], HIGH);
      delay(100);
    }
    delay(1000);
    for(int LED=0; LED<int(sizeof(LEDS)/sizeof(int)); LED++){
      digitalWrite(LEDS[LED], LOW);
    }    
  }
}
