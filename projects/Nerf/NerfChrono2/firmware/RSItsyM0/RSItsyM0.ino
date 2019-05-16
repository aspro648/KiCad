/*

M0 is faster 48 Mhz verse 16 Mhz
All pins can be interupts (compare to only 2 on a 328 and 5 on a 32U4)
Allows us to do analogRead() on interupt pin for troubleshooting

*/


#include <Wire.h> // Enable this line if using Arduino Uno, Mega, etc.
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#if defined(ARDUINO_SAMD_ZERO) && defined(SERIAL_PORT_USBVIRTUAL)
  // Required for Serial on Zero based boards
  #define Serial SERIAL_PORT_USBVIRTUAL
#endif

#define OLED_RESET 4
Adafruit_SSD1306 display(OLED_RESET);

#define LOGO16_GLCD_HEIGHT 16 
#define LOGO16_GLCD_WIDTH  16 
static const unsigned char PROGMEM logo16_glcd_bmp[] =
{ B00000000, B11000000,
  B00000001, B11000000,
  B00000001, B11000000,
  B00000011, B11100000,
  B11110011, B11100000,
  B11111110, B11111000,
  B01111110, B11111111,
  B00110011, B10011111,
  B00011111, B11111100,
  B00001101, B01110000,
  B00011011, B10100000,
  B00111111, B11100000,
  B00111111, B11110000,
  B01111100, B11110000,
  B01110000, B01110000,
  B00000000, B00110000 };

#if (SSD1306_LCDHEIGHT != 64)
#error("Height incorrect, please fix Adafruit_SSD1306.h!");
#endif

int z = 0;
int m = 1;

int led = 13;
int flashPin = 10;
int sensor1pin = A1;
int sensor2pin = A3;
int buttonPin = A2;
int shot_count = 0;
long time1_us = 0;
long time2_us = 0;
long interval_us;       // flight time between sensors
float trapDist_mm = 72; // mm
float speed_fps = 0;    // feet per second
float speed_mps = 0;    // meters per second
float speed_mph = 0;    // miles per hour
bool flag = false;      // dart passes second sensor
int flash_time_ms = 100;


void setup() {                  
  Serial.begin(9600);
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);  // initialize with the I2C addr 0x3D (for the 128x64)
  
  pinMode(led, OUTPUT);  
  pinMode(flashPin, OUTPUT);   
  pinMode(sensor1pin, INPUT);
  pinMode(sensor2pin, INPUT);
  pinMode(buttonPin, INPUT_PULLUP);
  attachInterrupt(sensor1pin, sensor1_interrupt, CHANGE);
  //attachInterrupt(sensor2pin, sensor2_interrupt, RISING);
  attachInterrupt(buttonPin, button_interrupt, FALLING);
  digitalWrite(flashPin, LOW);
  Serial.begin(9600);
  Serial.println("Nerf Chronos, waiting for shot . . .");
  writeDisplay();
}


void sensor1_interrupt(){
  if (!digitalRead(sensor1pin)) {
    time2_us = micros();
    flag = true;
  }
  else {
    time1_us = micros();  
  }
}


void sensor2_interrupt(){
  time2_us = micros();
  flag = true;
}


void button_interrupt(){
  shot_count = 0;
  speed_fps = 0;
  writeDisplay();
}

void writeDisplay(){
    display.clearDisplay();
    display.setTextSize(2);
    display.setTextColor(WHITE);
    display.setCursor(10,0);
    if(speed_fps < 10){
      display.print(" ");
    }
    display.print(speed_fps, 1);
    display.println(" fps");
    display.setTextSize(6);
    display.setCursor(32, 16);
    if(shot_count < 10){
      display.print(" ");
    }
    display.println(shot_count);

    display.display();
}


void loop() {
  
  if (flag){ // traps detected a pass
    digitalWrite(flashPin, HIGH);
    shot_count += 1;
    interval_us = time2_us - time1_us;
    speed_fps = trapDist_mm / interval_us / 25.4 / 12 * 1E+6; // feet per second
    speed_mps = trapDist_mm / interval_us / 1000 * 1E+6;      // meter per second
    speed_mph = trapDist_mm / interval_us / 25.4 / 12 * 1E+6 / 5280 * 3600; // miles per hour
    /*
    // speed test M0 micros() = 1us, digitalRead() = 1us
    //           328 micros() = 2us, digitalRead() = 5us
    long z1 = micros();
    //int x = digitalRead(pin1);
    //int y = digitalRead(pin2);
    //int z = digitalRead(pin2);
    long z2 = micros();
    long z3 = z2 - z1;   
    Serial.print(z3);
    Serial.print(" us  ");
    */
    
    
    if (speed_fps > 0){
      Serial.print("Shot #");
      Serial.print(shot_count);
      Serial.print("  ");
      Serial.print(interval_us);
      Serial.print(" us  ");
      Serial.print(speed_fps, 1);
      Serial.print(" fps  ");
      Serial.print(speed_mps, 1);
      Serial.print(" m/s  ");
      Serial.print(speed_mph, 1);
      Serial.println(" mph  "); 
    }
    else{ // bad data or backward traps
      Serial.println(interval_us);
    }
    writeDisplay();
    flag = false;
  }

}
