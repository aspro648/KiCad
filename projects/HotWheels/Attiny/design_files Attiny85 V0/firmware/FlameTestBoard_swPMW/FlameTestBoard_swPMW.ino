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


int HL = 2;   // headlights
int TL = 4;   // taillights
int FL1 = 1;  // flasher 1  PWM
int FL2 = 3;  // flasher 2
int UL = 0;   // Underlighting PWM
int pin = 2

#include "SoftPWM.h"

void setup()
{
  // Initialize
  SoftPWMBegin();

  // Create and set pin 13 to 0 (off)
  SoftPWMSet(pin, 0);

  // Set fade time for pin 13 to 100 ms fade-up time, and 500 ms fade-down time
  SoftPWMSetFadeTime(pin, 100, 500);
}

void loop()
{
  // Turn on - set to 100%
  SoftPWMSetPercent(pin, 100);

  // Wait for LED to turn on - you could do other tasks here
  delay(100);

  // Turn off - set to 0%
  SoftPWMSetPercent(pin, 0);

  // Wait for LED to turn off
  delay(500);
}
