/*********************************************************************
This is an example for our Monochrome OLEDs based on SSD1306 drivers

  Pick one up today in the adafruit shop!
  ------> http://www.adafruit.com/category/63_98

This example is for a 128x32 size display using I2C to communicate
3 pins are required to interface (2 I2C and one reset)

Adafruit invests time and resources providing this open source code, 
please support Adafruit and open-source hardware by purchasing 
products from Adafruit!

Written by Limor Fried/Ladyada  for Adafruit Industries.  
BSD license, check license.txt for more information
All text above, and the splash screen must be included in any redistribution

Libraries used:
https://github.com/adafruit/Adafruit_SSD1306
https://github.com/adafruit/Adafruit_MPL3115A2_Library
https://github.com/adafruit/Adafruit-GFX-Library

Install Breadboard Arduino support from https://www.arduino.cc/en/Tutorial/ArduinoToBreadboard
(Use Minimal Circuit example to use 8 MHz Internal Crystal).

Modify boards.txt to remove brown-out before flashing bootloader to set fuses:
atmega328bb.bootloader.low_fuses=0xE2
atmega328bb.bootloader.high_fuses=0xDA
atmega328bb.bootloader.extended_fuses=0x07

Manual upload:
avrdude -C ..\etc\avrdude.conf -P COM86 -b 19200 -c avrisp -patmega328p -v -e -U lfuse:w:0xE2:m -U hfuse:w:0xDA:m -U efuse:w:0x07:m  -U flash:w:VacuumSensor.ino.hex

*********************************************************************/

#include <Wire.h>
#include <SPI.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <Adafruit_MPL3115A2.h>

#define OLED_RESET -1

Adafruit_SSD1306 display(OLED_RESET);


#if (SSD1306_LCDHEIGHT != 32)
#error("Height incorrect, please fix Adafruit_SSD1306.h!");
#endif

Adafruit_MPL3115A2 baro = Adafruit_MPL3115A2();


void setup()   {                
  Serial.begin(9600);

  // by default, we'll generate the high voltage from the 3.3v line internally! (neat!)
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3C (for the 128x32)


  // splash screen (image in Adafruit_SSD1306.cpp)
  display.setTextColor(WHITE);
  display.setTextSize(1);
  display.setCursor(38, 24);
  display.print("PN 20830");
  display.display();  
  delay(1000);
}


void loop() {
  display.setTextSize(2);
  display.clearDisplay();
  display.setCursor(0,0);
  if (! baro.begin()) {
    Serial.println("Couldnt find sensor");
    display.println("No");
    display.println("Sensor?");
    display.display();
    return;
  }

  // Corvallis, Oregon altitude = 235 feet
  // The standard sea-level pressure is 29.92 in Hg (1013 mb).
  // Corrected barometeric pressue @ 235 ft = 1004.5 mb (100.45 kPa)
  float kPa = baro.getPressure()/1000;  // function returns pascals
  kPa = kPa - 100.45;                   // convert to relative pressure
  float psi = kPa * 0.14504;
  
  display.print(kPa); display.println(" kPa");
  display.print(psi, 2); display.println(" psi");
  display.setTextSize(1);
  display.display();
  delay(1000); // update once per second
}


