/****************************************************************
 * MicroOLED_Clock.ino
 * Analog Clock demo using SFE_MicroOLED Library
 * Jim Lindblom @ SparkFun Electronics
 * Original Creation Date: October 27, 2014
 * 
 * This sketch uses the MicroOLED library to draw a 3-D projected
 * cube, and rotate it along all three axes.
 * 
 * Development environment specifics:
 *  Arduino 1.0.5
 *  Arduino Pro 3.3V
 *  Micro OLED Breakout v1.0
 * 
 * This code is beerware; if you see me (or any other SparkFun employee) at the
 * local, and you've found our code helpful, please buy us a round!
 * 
 * Distributed as-is; no warranty is given.
 ***************************************************************/
#include <Wire.h>  // Include Wire if you're using I2C
#include <SPI.h>  // Include SPI if you're using SPI
#include <SFE_MicroOLED.h>  // Include the SFE_MicroOLED library

//////////////////////////
// MicroOLED Definition //
//////////////////////////
#define PIN_RESET 9  // Connect RST to pin 9 (SPI & I2C)
#define PIN_DC    8  // Connect DC to pin 8 (SPI only)
#define PIN_CS    10 // Connect CS to pin 10 (SPI only)
#define DC_JUMPER 1  // DC jumper setting(I2C only)

//////////////////////////////////
// MicroOLED Object Declaration //
//////////////////////////////////
//MicroOLED oled(PIN_RESET, PIN_DC, PIN_CS);  // SPI Example
MicroOLED oled(PIN_RESET, DC_JUMPER);  // I2C Example

int pressPin = A1;

/*
float points[6][2] = {{-1, 0}, 
                      {-0.81, -0.59}, 
                      {-0.31, -0.95}, 
                      {0.31, -0.95}, 
                      {0.81, -0.5}, 
                      {1, 0}};
*/                    
float points[5][2] = {{-1, 0}, 
                      {-0.70, -0.70}, 
                      {0, -1}, 
                      {0.70, -0.70}, 
                      {1, 0}};

                      
int center_x = 32;
int center_y = 47;
int radius = 22;
int full_scale = 1;


void setup(){
  Serial.begin(9600);
  pinMode(pressPin, INPUT);
  analogReference(DEFAULT);
  //while(!Serial){1;};
  Serial.println(oled.getLCDHeight()); //48
  Serial.println(oled.getLCDWidth());  //64
  oled.begin();     // Initialize the OLED
  oled.clear(PAGE); // Clear the display's internal memory
  drawFace();
  oled.display(); // display the memory buffer drawn
}


void loop(){
  int val = analogRead(pressPin);
  float Vout = val / 1023.0 * 3.3;    // using Leonardo, Aref is 5 volts!
  //Vout = VS x (0.09 x P + 0.08)
  float kPa = (Vout - 0.08 * 3.3) / (0.09 * 3.3);
  float psi = kPa * 0.145038;
  if (psi < 0){psi = 0;}
  Serial.println(val);
  //Serial.print(" ");
  //Serial.print(Vout);
  //Serial.print("v ");
  //Serial.print(kPa);
  //Serial.print("kPa ");
  //Serial.print(psi);
  //Serial.print(" psi");

  if (psi > 1.0){
    if (full_scale == 1) {
      oled.setFontType(0);
      full_scale = 2;
      oled.setCursor(radius + 1, 16);
      oled.print("1.0");
      oled.setCursor(59, 40);
      oled.print("2");
      //drawFace();
    }
  }
  else if (full_scale == 2){
    if (psi < 0.8){
      oled.setFontType(0);
      full_scale = 1;
      oled.setCursor(radius + 1, 16);
      oled.print("0.5");
      oled.setCursor(59, 40);
      oled.print("1");
      //drawFace();
    }
  }

  float angle = psi / full_scale * PI + PI;  // radians
  //Serial.println(angle);

  //drawFace();
  int x1 = (radius - 4) * cos(angle);
  int y1 = (radius - 4) * sin(angle);
  oled.circleFill(center_x, center_y, radius - 4, 0, 0);
  oled.line(center_x + x1, center_y + y1, center_x, center_y);
  
  oled.setFontType(1);
  oled.setCursor(2, 0);  
  oled.print(psi);
  oled.print("psi");
  oled.display();
  
  delay(100);
}


void drawFace(){

  oled.clear(ALL);  // Clear the library's display buffer
  oled.clear(PAGE); // Clear the display's internal memory  

  // draw semicircle
  oled.circle(center_x, center_y, radius - 1);

  /*
  float angle = 3.1412 / 5;
  for(int i=0; i<6; i++){
     int x1 = radius * cos(angle * i + 3.1214);
     int y1 = radius * sin(angle * i + 3.1214);
     int x2 = (radius - 4) * cos(angle * i + 3.1214);
     int y2 = (radius - 4) * sin(angle * i + 3.1214);
     oled.line(center_x + x1, center_y + y1, center_x + x2, center_y + y2);
     Serial.print(x1); Serial.print("  ");
     Serial.print(y1); Serial.print("  ");
     Serial.print(x2); Serial.print("  ");
     Serial.println(y2);     
     //oled.print(i);
  }*/
  
  // Tick marks
  for(int i=0; i<5; i++){
     int x1 = (radius + 2) * points[i][0];
     int y1 = (radius + 2) * points[i][1];
     int x2 = (radius - 6) * points[i][0];
     int y2 = (radius - 6) * points[i][1];
     oled.line(center_x + x1, center_y + y1, center_x + x2, center_y + y2);
     //Serial.print(center_x + x1); Serial.print("  ");
     //Serial.println(center_y + y1);
  }

  // numbers
  oled.setFontType(0);
  oled.setCursor(0, 40);
  oled.print(0);
  oled.setCursor(radius + 1, 16);
  if(full_scale == 1){
    oled.print("0.5");
  }
  else {
    oled.print("1.0");
  }
  oled.setCursor(59, 40);
  oled.print(full_scale);
  /*
  oled.setCursor(6, 27);
  oled.print(".2");
  oled.setCursor(20, 16);
  oled.print(".4");
  oled.setCursor(40, 16);
  oled.print(".6");
  oled.setCursor(53, 28);
  oled.print(".8");*/
  oled.line(0, 16, 0, 16);
  
  oled.display(); // display the memory buffer drawn
}
