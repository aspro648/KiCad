/*
 * EEPROM Read
 *
 * Reads the value of each byte of the EEPROM and prints it
 * to the computer.
 * This example code is in the public domain.
 */

// lfuse 0xE2
// hfuse 0xD7
// efuse 0xFF

/*

# Default clock (slowly rising power; long delay to clock; 8 MHz internal)
# Int. RC Osc. 8 MHz; Start-up time PWRDWN/RESET: 6 CK/14 CK + 64 ms; [CKSEL=0010 SUT=10]; default value
# Brown-out detection disabled; [BODLEVEL=111]
# Preserve EEPROM memory through the Chip Erase cycle; [EESAVE=0]

attiny85at8.bootloader.low_fuses=0xE2
attiny85at8.bootloader.high_fuses=0xD7
attiny85at8.bootloader.extended_fuses=0xFF


gemma.bootloader.low_fuses=0xF1
gemma.bootloader.high_fuses=0xD5
gemma.bootloader.extended_fuses=0xFE
*/



#include <EEPROMex.h>

#if defined(__AVR_ATtiny85__)
  #define ARDUINO 0
#else
  #define ARDUINO 1
#endif

// start reading from the first byte (address 0) of the EEPROM
int address = 50;
byte value;


// max length 150 chars!
char song1[] = "RickAstley:d=16,o=5,b=100:g,a,c,a, 8e.,8e.,4d.,g,a,c, 8d.,8d.,4c.,g.,a.,c.,a., 4c,8d,4b,4b,8g,4d,2c";
char song2[] = "Twinkle Tinkle:d=4,o=5,b=120:c,c,g,g,a,a,2g,f,f,e,e,d,d,2c";
char song3[] = "Happy Birthday:d=4,o=5,b=125:8g.,16g,a,g,c6,2b,8g.,16g,a,g,d6,2c6,8g.,16g,g6,e6,c6,b,a,8f.6,16f6,e6,c6,d6,2c6";

//char song1[] = "Looney:d=4,o=5,b=140:32p,c6,8f6,8e6,8d6,8c6,a.,8c6,8f6,8e6,8d6,8d#6,e.6,8e6,8e6,8c6,8d6,8c6,8e6,8c6,8d6,8a,8c6,8g,8a#,8a,8f";
//char song2[] = "The Simpsons:d=4,o=5,b=160:c.6,e6,f#6,8a6,g.6,e6,c6,8a,8f#,8f#,8f#,2g,8p,8p,8f#,8f#,8f#,8g,a#.,8c6,8c6,8c6,c6";
//char song3[] = "MahnaMahna:d=16,o=6,b=125:c#,c.,b5,8a#.5,8f.,4g#,a#,g.,4d#,8p,c#,c.,b5,8a#.5,8f.,g#.,8a#.,4g,8p,c#,c.,b5,8a#.5,8f.,4g#,f,g.,8d#.,f,g.,8d#.,f,8g,8d#.,f,8g,d#,8c,a#5,8d#.,8d#.,4d#,8d#.";

//char song1[] = "StarWars:d=4,o=5,b=45:32p,32f#,32f#,32f#,8b.,8f#.6,32e6,32d#6,32c#6,8b.6,16f#.6,32e6,32d#6,32c#6,8b.6,16f#.6,32e6,32d#6,32e6,8c#.6,32f#,32f#,32f#,8b.,8f#.6,32e6,32d#6,32c#6,8b.6,16f#.6,32e6,32d#6,32c#6,8b.6,16f#.6,32e6,32d#6,32e6,8c#6";
//char song2[] = "Muppets:d=4,o=5,b=250:c6,c6,a,b,8a,b,g,p,c6,c6,a,8b,8a,8p,g.,p,e,e,g,f,8e,f,8c6,8c,8d,e,8e,8e,8p,8e,g,2p,c6,c6,a,b,8a,b,g,p,c6,c6,a,8b,a,g.,p,e,e,g,f,8e,f,8c6,8c,8d,e,8e,d,8d,c";
//char song3[] = "PinkPanther:d=4,o=5,b=160:8d#,8e,2p,8f#,8g,2p,8d#,8e,16p,8f#,8g,16p,8c6,8b,16p,8d#,8e,16p,8b,2a#,2p,16a,16g,16e,16d,2e";

//char *song = "Indiana:d=4,o=5,b=250:e,8p,8f,8g,8p,1c6,8p.,d,8p,8e,1f,p.,g,8p,8a,8b,8p,1f6,p,a,8p,8b,2c6,2d6,2e6,e,8p,8f,8g,8p,1c6,p,d6,8p,8e6,1f.6,g,8p,8g,e.6,8p,d6,8p,8g,e.6,8p,d6,8p,8g,f.6,8p,e6,8p,8d6,2c6";
//char *song = "Muppets:d=4,o=5,b=250:c6,c6,a,b,8a,b,g,p,c6,c6,a,8b,8a,8p,g.,p,e,e,g,f,8e,f,8c6,8c,8d,e,8e,8e,8p,8e,g,2p,c6,c6,a,b,8a,b,g,p,c6,c6,a,8b,a,g.,p,e,e,g,f,8e,f,8c6,8c,8d,e,8e,d,8d,c";
//char *song2 = "The Simpsons:d=4,o=5,b=160:c.6,e6,f#6,8a6,g.6,e6,c6,8a,8f#,8f#,8f#,2g,8p,8p,8f#,8f#,8f#,8g,a#.,8c6,8c6,8c6,c6";
//char *song1 = "MahnaMahna:d=16,o=6,b=125:c#,c.,b5,8a#.5,8f.,4g#,a#,g.,4d#,8p,c#,c.,b5,8a#.5,8f.,g#.,8a#.,4g,8p,c#,c.,b5,8a#.5,8f.,4g#,f,g.,8d#.,f,g.,8d#.,f,8g,8d#.,f,8g,d#,8c,a#5,8d#.,8d#.,4d#,8d#.";
//char *song = "LeisureSuit:d=16,o=6,b=56:f.5,f#.5,g.5,g#5,32a#5,f5,g#.5,a#.5,32f5,g#5,32a#5,g#5,8c#.,a#5,32c#,a5,a#.5,c#.,32a5,a#5,32c#,d#,8e,c#.,f.,f.,f.,f.,f,32e,d#,8d,a#.5,e,32f,e,32f,c#,d#.,c#";
//char *song = "PinkPanther:d=4,o=5,b=160:8d#,8e,2p,8f#,8g,2p,8d#,8e,16p,8f#,8g,16p,8c6,8b,16p,8d#,8e,16p,8b,2a#,2p,16a,16g,16e,16d,2e";
//char *song = "Rikasmiesjos:d=4,o=5,b=160:8g,8f,8g,8f,e,c,p,8e,8f,8g,8f,8g,8f,8e,8f,8g,8a,8a#,8a,8a#,8a,g,p,g#,g,f#,f,8d#,8d,8c,8d,d#,p,8d#,8d,8c,8d,d#,c,g,p";
//char *song = "Bogey:d=4,o=5,b=140:8g,8e,p,8p,8e,8f,8g,e6,e6,2c6,8g,8e,p,8p,8e,8f,8e,g,g,2f,8f,8d,p,8p,8d,8e,8f,8g,8e,p,8p,8e,8f#,8e,8d,8g,8p,8e,8f#,8d,8p,8a,8g.,16f#,8g,8a,8g,8f,8e,8d,8c";
//char *song1 = "Rick Ashley:d=8,o=5,b=150:c,d,f,d,a,4p,4a,2g,p,c,d,f,d,g,4p,4g,2f";
//char *song1 = "RickAstley:d=16,o=5,b=100:g,a,c,a, 8e.,8e.,4d.,g,a,c, 8d.,8d.,4c.,g.,a.,c.,a., 4c,8d,4b,4b,8g,4d,2c";

//char *song1 = "RickAstley:d=4,o=5,b=400:8g, 8a, 8c6, 8a, e6, 8p, e6, 8p, d., p, 8p, 8g, 8a, 8c6, 8a, d6, 8p, d6, 8p, c6, 8b, a., 8g, 8a, 8c6, 8a, 2c6, d6, b, a, g., 8p, g, 2d6, 2c., p, 8g, 8a, 8c6, 8a, e6, 8p, e6, 8p, d., p, 8p, 8g, 8a, 8c6, 8a, 2g6, b, c., 8b, a, 8g, 8a, 8c6, 8a, 2c6, d6, b, a, g., 8p, g, 2d6, 2c.";
//char song2 = "Angry Birds:d=8,o=4,b=150:16e4,16f4,g.4,e.4,p.4,16e4,16f4,g.4,b.4,4b.4,p.,16e4,16c5,16e4,16a4,g.,16g,16f,4e,4p,16e,16f,g.4,e.4,p.,16g4,16a4,d.4,e.4,p.,16d.4,16c#.5, 16d5,16c#.5,16d5,16c5,16d5,16e5,16d5,16c5,4d.4";
//char *song2 = "Lavender Town:d=4,o=5,b=180:c.,g.,b.,f#.,c.,g.,b.,f#.,c.,g.,b.,f#.,c.,g.,b.,f#.,2g5,2g5,2c5,2c5,4g,4f,4e,b,2c#4,2c4,2g4,2g4,2f4,2f4,b,g4,f4,b,2c,2c";



void setup() {
  // initialize serial and wait for port to open:
  EEPROM.setMaxAllowedWrites(500);
  #if ARDUINO
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }

  Serial.println(sizeof(song1)); 
  Serial.println(sizeof(song2));
  Serial.println(sizeof(song3));
  #endif
  
  // write blocks of 150 at 50, 200, 350

  EEPROM.writeBlock<char>(50, song1, sizeof(song1));
  delay(100);
  EEPROM.write((50 + sizeof(song1)), 255);
  delay(100);

  EEPROM.writeBlock<char>(200, song2, sizeof(song2));
  delay(100);
  EEPROM.write((200 + sizeof(song2)), 255);
  delay(100);

  EEPROM.writeBlock<char>(350, song3, sizeof(song3));
  delay(100);
  EEPROM.write((350 + sizeof(song3)), 255);  
  
  // read them back
  int charLength = 150;
  char input[charLength];
  #if ARDUINO
  for(int x=0; x<3; x++){  
    EEPROM.readBlock<char>(50 + x * charLength, input, charLength);
    Serial.print("song");
    Serial.print(x);
    Serial.print(" = ");
    for(int i=0; i<charLength; i++) { 
      if (input[i] != char(255)){  
        Serial.print(input[i]); 
      }
    }
    Serial.println("");
  }
  #endif

}

void loop() {
  // read a byte from the current address of the EEPROM
  

   
  value = EEPROM.read(address);
  #if ARDUINO
    Serial.print(address);
    Serial.print("\t");
    Serial.print(value, DEC);
    Serial.println();
  #endif
  /***
    Advance to the next address, when at the end restart at the beginning.

    Larger AVR processors have larger EEPROM sizes, E.g:
    - Arduno Duemilanove: 512b EEPROM storage.
    - Arduino Uno:        1kb EEPROM storage.
    - Arduino Mega:       4kb EEPROM storage.

    Rather than hard-coding the length, you should use the pre-provided length function.
    This will make your code portable to all AVR processors.
  ***/
  address = address + 1;
  if (address == 512) {
    address = 0;
  }

  /***
    As the EEPROM sizes are powers of two, wrapping (preventing overflow) of an
    EEPROM address is also doable by a bitwise and of the length - 1.

    ++address &= EEPROM.length() - 1;
  ***/

  delay(500);
}
