/*
  Keyboard logout

  This sketch demonstrates the Keyboard library 
  
  Originally from [File]->[Examples]->[USB]->[Keyboard].
  Modified to use the Beetje Board with CNTRL-ATL-DEL Blok (key attached to pin 9)
  Project website: https://github.com/aspro648/Beetje-Bloks
  

  On Windows, CTRL-ALT-DEL followed by ALT-l
  On Ubuntu, CTRL-ALT-DEL, and ENTER
  On OSX, CMD-SHIFT-q

  To wake: Spacebar.

  Circuit:
  - Arduino Leonardo or Micro
  - wire to connect D2 to ground

  created 6 Mar 2012
  modified 27 Mar 2012
  by Tom Igoe

  This example is in the public domain.

  http://www.arduino.cc/en/Tutorial/KeyboardLogout
*/

#define OSX 0
#define WINDOWS 1
#define UBUNTU 2

#include "Keyboard.h"

// change this to match your platform:
int platform = WINDOWS;
int buttonPin = 9;
int ledPin = 13;


void setup() {
  // make buttonPin an input and turn on the pull-up resistor so it goes high unless
  // connected to ground:
  pinMode(buttonPin, INPUT_PULLUP);
  pinMode(ledPin, OUTPUT);
  Keyboard.begin();
}

void loop() {
  while (digitalRead(buttonPin) == HIGH) {
    // do nothing until buttonPin goes low
    digitalWrite(ledPin, LOW);
    delay(10);
  }
  //delay(1000);
  digitalWrite(ledPin, HIGH);

  switch (platform) {
    case OSX:
      Keyboard.press(KEY_LEFT_GUI);
      // Shift-Q logs out:
      Keyboard.press(KEY_LEFT_SHIFT);
      Keyboard.press('Q');
      delay(100);
      Keyboard.releaseAll();
      // enter:
      Keyboard.write(KEY_RETURN);
      break;
    case WINDOWS:
      // CTRL-ALT-DEL:
      Keyboard.press(KEY_LEFT_CTRL);
      Keyboard.press(KEY_LEFT_ALT);
      Keyboard.press(KEY_DELETE);
      delay(100);
      Keyboard.releaseAll();
      // ALT-l:
      //delay(1000);
      Keyboard.write(KEY_RETURN);
      delay(100);
      Keyboard.write(KEY_RETURN);
      //Keyboard.press(KEY_LEFT_ALT);
      //Keyboard.press('l');
      //Keyboard.releaseAll();
      break;
    case UBUNTU:
      // CTRL-ALT-DEL:
      Keyboard.press(KEY_LEFT_CTRL);
      Keyboard.press(KEY_LEFT_ALT);
      Keyboard.press(KEY_DELETE);
      delay(1000);
      Keyboard.releaseAll();
      // Enter to confirm logout:
      Keyboard.write(KEY_RETURN);
      break;
  }
  delay(500);

}
