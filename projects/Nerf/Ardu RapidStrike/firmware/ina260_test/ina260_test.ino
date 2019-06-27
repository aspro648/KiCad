#include <Adafruit_INA260.h>

Adafruit_INA260 ina260 = Adafruit_INA260();

float maxAmp = 0; 
float curAmp = 0;
long showTime = 0;


void setup() {
  Serial.begin(9600);
  // Wait until serial port is opened
  while (!Serial) { delay(10); }

  Serial.println("Adafruit INA260 Test");

  if (!ina260.begin()) {
    Serial.println("Couldn't find INA260 chip");
    while (1);
  }
  Serial.println("Found INA260 chip");
}

void loop() {
  float total = 0;
  for(int x=0; x<25; x++){
    curAmp = ina260.readCurrent();
    delay(1);
    total = total + curAmp;
    if (curAmp > maxAmp){
      maxAmp = curAmp;
    }
  }
  curAmp = total / 25.0;

  if (millis() > showTime){
    Serial.print(total);
    Serial.print("  ");
    Serial.print(curAmp);
    Serial.print(" mA  ");
    Serial.print(maxAmp);
    Serial.println(" mA Max");
    showTime = showTime + 250;
  }
}
