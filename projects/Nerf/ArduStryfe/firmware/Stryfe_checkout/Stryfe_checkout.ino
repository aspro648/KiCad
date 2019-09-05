


#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define OLED_RESET -1
Adafruit_SSD1306 display(OLED_RESET);

int voltagePin = A3;
float vcc = 5.0;
float vd_factor = 11;
int SPKR = 4;
int DART_IR = A1;
int DSP_PWR = A2;
int buttonPin = A0;
int revSwitch = 3;
int CLIP = 7;
int flywheelPWM = 9;

uint8_t clipU3pin = 10;
uint8_t clipU4pin = 11;
uint8_t clipU6pin = 12;




void setup() {                  
  Serial.begin(9500);
  pinMode(voltagePin, INPUT);
  pinMode(revSwitch, INPUT); 
  pinMode(buttonPin, INPUT);   
  pinMode(CLIP, INPUT);
  pinMode(DART_IR, INPUT);

  pinMode(clipU3pin, INPUT);          // Hall sensors have internal pullups
  pinMode(clipU4pin, INPUT);
  pinMode(clipU6pin, INPUT);

  pinMode(flywheelPWM, OUTPUT);
  pinMode(SPKR, OUTPUT); 
  pinMode(DSP_PWR, OUTPUT); 
  digitalWrite(DSP_PWR, HIGH);
  delay(50);


  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3D (for the 128x64)
  display.display();  
  tone(SPKR, 400, 100);
  delay(100);
  tone(SPKR, 800, 100);

  analogWrite(flywheelPWM, 255);
  delay(500);  // splash screen
  digitalWrite(flywheelPWM, LOW);
}




void loop() {

  int voltValue = analogRead(voltagePin); 
  int val = 0;
  for (int x=0; x<10; x++){
    val = val + analogRead(voltagePin);
  }
  voltValue = val / 10;
  float voltage = voltValue / 1023.0 * vcc * vd_factor; 

  display.clearDisplay();

  display.drawLine(0, 0, 127, 0, WHITE);
  display.drawLine(0, 0, 0, 63, WHITE);
  display.drawLine(0, 63, 127, 63, WHITE);
  display.drawLine(127, 0, 127, 63, WHITE);
  
  display.setTextSize(1);
  display.setTextColor(WHITE);
  display.setCursor(7, 3);
  display.print(voltage, 2);
  display.println(" v");
  display.println("");
  display.print("  rev: ");
  display.print(digitalRead(revSwitch));
  display.print(F("    MAG:"));
  display.print(digitalRead(clipU6pin));
  display.print(digitalRead(clipU4pin));  
  display.println(digitalRead(clipU3pin));
  
  
  display.print(" butn: ");  
  display.println(digitalRead(buttonPin));
  display.print("   CLP:");
  display.println(digitalRead(CLIP));
  display.print("  DART:");
  display.println(analogRead(DART_IR));
  display.display();

  if (!digitalRead(revSwitch)){
    analogWrite(flywheelPWM, 255);
  }
  else{
    digitalWrite(flywheelPWM, LOW);
  }
  
  Serial.print(voltage, 2);
  Serial.println(" v");
  delay(100);

}
