/******************************************************************************
by Ken Olsen (648.ken@gmail.com) 
MakersBox.blogspot.com



Not all Attiny cores support the tone() function. Try this one
https://github.com/SpenceKonde/ATTinyCore


   
******************************************************************************/
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>


#define OLED_RESET 4
Adafruit_SSD1306 display(OLED_RESET);

#define LOGO16_GLCD_HEIGHT 16 
#define LOGO16_GLCD_WIDTH  16 


// hardware\breadboard\avr\boards.txt
// atmega328bb.build.board=AVR_ATMEGA328BB

long sleepyTime = 900000; // sleep after (ms)  900000 = 15 min, 300000 = 5 min

boolean DEBUG = false;

// V0.2
int HL = 0;   // headlights
int TL = 1;   // taillights
int FL1 = 16;  // flasher 1
int FL2 = 7;  // flasher 2

int HLpwm = 255;
int TLpwm = 10;
int FL1pwm = 10;
int FL2pwm = 10;
int ULpwm = 100;

int mode;     // 0 = flashers or interior only, 1 = headlights only, 2 = headlights + flashers / interior

int t1 = 125;
int t2 = 50;





void setup(){

  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);

  display.display();
  delay(2000);
  display.clearDisplay(); 



  pinMode(HL, OUTPUT);
  pinMode(TL, OUTPUT);
  pinMode(FL1, OUTPUT);
  pinMode(FL2, OUTPUT);

  pinMode(4, INPUT);
  pinMode(5, OUTPUT);
  digitalWrite(5, LOW);  // drain
  display.setTextSize(1);
  display.setTextColor(WHITE);

}




void loop(){
  //int val = analogRead(4);

  display.setCursor(0,0);
  display.println("Hello, world!");
  display.display();
  
}
