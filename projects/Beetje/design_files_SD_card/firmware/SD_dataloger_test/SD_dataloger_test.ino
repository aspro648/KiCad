/*
  SD card datalogger

 This example shows how to log data from three analog sensors
 to an SD card using the SD library.

 The circuit:
 * analog sensors on analog ins 0, 1, and 2
 * SD card attached to SPI bus as follows:
 ** MOSI - pin 11
 ** MISO - pin 12
 ** CLK - pin 13
 ** CS - pin 4 (for MKRZero SD: SDCARD_SS_PIN)

 created  24 Nov 2010
 modified 9 Apr 2012
 by Tom Igoe

 This example code is in the public domain.


23 seconds to write 1000 lines,
43 lines per second
23 ms per write


 */

#include <SPI.h>
#include <SD.h>

const int chipSelect = 10;
int led = 13;

void setup() {
  // Open serial communications and wait for port to open:
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  pinMode(led, OUTPUT);
  }

  
  Serial.print("Initializing SD card...");

  // see if the card is present and can be initialized:
  if (!SD.begin(chipSelect)) {
    Serial.println("Card failed, or not present");
    // don't do anything more:
    return;
  }
  Serial.println("card initialized.");
  digitalWrite(led, HIGH);
  delay(1000);
  digitalWrite(led, LOW);
}

void loop() {
  // make a string for assembling the data to log:
  long timeStamp;
  


  for(int x=0; x<=1000; x++){
    String dataString = "";
    // read three sensors and append to the string:
    timeStamp = millis();
    dataString += String(timeStamp);
    dataString += ",";
    for (int analogPin = 0; analogPin < 3; analogPin++) {
      int sensor = random(255);
      dataString += String(sensor);
      if (analogPin < 2) {
        dataString += ",";
      }
    }

    //Serial.println(dataString);
    // open the file. note that only one file can be open at a time,
    // so you have to close this one before opening another.
    File dataFile = SD.open("datalog.txt", FILE_WRITE);
  
    // if the file is available, write to it:
    if (dataFile) {
      dataFile.println(dataString);
      dataFile.close();
      // print to the serial port too:
      //Serial.println(dataString);
    }
    // if the file isn't open, pop up an error:
    else {
      Serial.println("error opening datalog.txt");
      while(1){;}
    }
  }
  Serial.println(millis());
  digitalWrite(led, HIGH);
  delay(1000);
  digitalWrite(led, LOW);
  while(1){;}
}









