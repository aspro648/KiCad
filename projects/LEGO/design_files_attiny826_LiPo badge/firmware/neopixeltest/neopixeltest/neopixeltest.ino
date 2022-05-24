
//https://github.com/SpenceKonde/megaTinyCore/blob/master/megaavr/extras/tinyNeoPixel.md


#include <tinyNeoPixel.h>
#define NUMLEDS 1
tinyNeoPixel leds = tinyNeoPixel(NUMLEDS, PIN_PB4, NEO_GRB);

void setup() {
  leds.begin();
  leds.setPixelColor(0,255,0,0); // first LED full RED
  leds.setBrightness(50); //0-255
  leds.show();                   // LED turns on.
}

void loop() {
  int B = 0;
  int R = 0;
  int G = 0;

  for(G = 0; G<255; G++){
    
    leds.setPixelColor(0, R, G, B); // first LED full RED
    leds.show();                   // LED turns on.
    delay(10);
  }
  for(G = 255; G>=0; G--){
    B  = 255 - G;
    leds.setPixelColor(0, R, G, B); // first LED full RED
    leds.show();                   // LED turns on.
    delay(10);
  }  
  G = 0;
  for(B = 255; B>=0; B--){
    leds.setPixelColor(0, R, G, B); // first LED full RED
    leds.show();                   // LED turns on.
    delay(10);
  }    
  
}
