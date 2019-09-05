#include <Adafruit_INA260.h>

Adafruit_INA260 ina260 = Adafruit_INA260();

float maxAmp = 0; 
float curAmp = 0;
long showTime = 0;
float voltage = 0;
float maxVoltage = 0;
int count = 0;
float totAmp = 0;
float totVolt = 0;

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
  /*
  float total = 0;
  for(int x=0; x<225; x++){
    curAmp = ina260.readCurrent();
    delay(1);
    total = total + curAmp;
    if (curAmp > maxAmp){
      maxAmp = curAmp;
    }
  }
  curAmp = total / 225.0;
  */
  curAmp = ina260.readCurrent();
  if (curAmp < 0) {curAmp = 0;}
  totAmp = totAmp + curAmp;
  if (curAmp > maxAmp){
    maxAmp = curAmp;
  }
  voltage = ina260.readBusVoltage();
  totVolt = totVolt + voltage;
  if (voltage > maxVoltage){
    maxVoltage = voltage;
  }
  count += 1;
  if (millis() > showTime){
    Serial.print(totVolt/1000/count, 2);
    Serial.print("  ");
    Serial.print(maxVoltage/1000, 2);
    Serial.print(" max,  ");
    Serial.print(totAmp / count, 0);
    Serial.print(" ");
    Serial.print(int(maxAmp));
    Serial.print(" max, ");
    Serial.println(count);
    showTime = showTime + 100;
    count = 0;
    totVolt = 0;
    totAmp = 0;
  }

  if (0 && millis() > showTime){
    Serial.print(millis() / 1000.0, 1);
    Serial.print(" s, ");
    Serial.print(ina260.readBusVoltage()/1000, 2);
    Serial.print(" V, ");
    Serial.print(int(curAmp));
    Serial.print(" mA  ");
    Serial.print(int(maxAmp));
    Serial.println(" mA Max");
    showTime = showTime + 250;
  }
}
