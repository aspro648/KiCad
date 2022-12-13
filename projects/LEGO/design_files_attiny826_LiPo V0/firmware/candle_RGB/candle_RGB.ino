// LED Fire Effect

// original code from https://www.instructables.com/Realistic-Fire-Effect-with-Arduino-and-LEDs/


#include <Adafruit_NeoPixel.h>
#define PIN        15 // 15 on Attiny826
#define NUMPIXELS 1 // Popular NeoPixel ring size
Adafruit_NeoPixel pixels(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

int leds2[] = {3, 5, 6} ; // pwm pins 328p
int leds[] = {0, 1, 7, 8, 9, 16} ; // pwm pins Attiny826


void setup(){
  for (int led = 0; led < (sizeof(leds)/sizeof(int)); led++){
    pinMode(leds[led], OUTPUT);
    digitalWrite(led, LOW);
  }
  
  //pinMode(8, OUTPUT);
  //digitalWrite(8, LOW);
  //pinMode(9, OUTPUT);
  //digitalWrite(9, HIGH);

  pixels.setBrightness(32);
  pixels.begin(); // INITIALIZE NeoPixel strip object (REQUIRED)
  pixels.show();
}


void loop() {
   
  for(long firstPixelHue = 0; firstPixelHue < 65536; firstPixelHue += 256){
    pixels.rainbow(firstPixelHue);
    pixels.show();
    for (int led = 0; led < (sizeof(leds)/sizeof(int)); led++){
      //analogWrite(leds[led], random(120)+135);
      analogWrite(leds[led], random(165)+90);
      
    }
    delay(random(125));
  }

}
