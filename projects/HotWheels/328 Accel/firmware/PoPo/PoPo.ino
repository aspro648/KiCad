// https://github.com/sparkfun/SparkFun_LIS331_Arduino_Library
// https://learn.sparkfun.com/tutorials/h3lis331dl-accelerometer-breakout-hookup-guide

// Download  "breadboard-1-6-x.zip" from
// https://www.arduino.cc/en/Tutorial/ArduinoToBreadboard

// Change hardware/breadboard/avr/boards.txt to
// atmega328bb.build.mcu=atmega328

#include "SparkFun_LIS331.h"
#include <Wire.h>

LIS331 xl;

boolean DEBUG = false;

int HL = 10;
int TL = 5;
int BL = 6;
int DL = 9;
int UL = 11;
int intensity = 75;
float lvl_set = 0.2;
float lvl_rst = 0.1;
int i = 0;

bool brakes = false;
bool still = false;

int16_t data[25];
int16_t last_ave;
long stillTime = 0;
long blinkTime = 0;
boolean blinkFlag = false;


int HLD = 75;
bool HLF = true;
long HLT = 0;
int TLD = 200;
bool TLF = true;
long TLT = 0;
int ULD = 150;
bool ULF = true;
long ULT = 0;
int DLD = 100;
bool DLF = true;
long DLT = 0;

void setup(){

  pinMode(HL, OUTPUT);
  pinMode(TL, OUTPUT);
  //pinMode(BL, OUTPUT);
  pinMode(DL, OUTPUT);
  pinMode(UL, OUTPUT);

  digitalWrite(HL, HIGH);
  delay(100);
  digitalWrite(HL, LOW);
  digitalWrite(UL, HIGH);
  delay(100);
  digitalWrite(UL, LOW);
  digitalWrite(DL, HIGH);
  delay(100);
  digitalWrite(DL, LOW);
  digitalWrite(TL, HIGH);
  delay(100);
  digitalWrite(TL, LOW);

  
  // put your setup code here, to run once:
  //pinMode(9,INPUT);       // Interrupt pin input
  Wire.begin();
  xl.setI2CAddr(0x18);    // This MUST be called BEFORE .begin() so 
                          //  .begin() can communicate with the chip
  xl.begin(LIS331::USE_I2C); // Selects the bus to be used and sets
                          //  the power up bit on the accelerometer.
                          //  Also zeroes out all accelerometer
                          //  registers that are user writable.
  // This next section configures an interrupt. It will cause pin
  //  INT1 on the accelerometer to go high when the absolute value
  //  of the reading on the Z-axis exceeds a certain level for a
  //  certain number of samples.
  xl.intSrcConfig(LIS331::INT_SRC, 1); // Select the source of the
                          //  signal which appears on pin INT1. In
                          //  this case, we want the corresponding
                          //  interrupt's status to appear. 
  xl.setIntDuration(50, 1); // Number of samples a value must meet
                          //  the interrupt condition before an
                          //  interrupt signal is issued. At the
                          //  default rate of 50Hz, this is one sec.
  xl.setIntThreshold(2, 1); // Threshold for an interrupt. This is
                          //  not actual counts, but rather, actual
                          //  counts divided by 16.
  xl.enableInterrupt(LIS331::Z_AXIS, LIS331::TRIG_ON_HIGH, 1, true);
                          // Enable the interrupt. Parameters indicate
                          //  which axis to sample, when to trigger
                          //  (in this case, when the absolute mag
                          //  of the signal exceeds the threshold),
                          //  which interrupt source we're configuring,
                          //  and whether to enable (true) or disable
                          //  (false) the interrupt.
  
  xl.setFullScale(LIS331::LOW_RANGE);  //(LOW_RANGE 2g, MID_RANGE 4g, HIGH_RANGE 8g)

  
  // load array
  int16_t x, y, z;
  long total = 0;
  for(int j=0; j<25; j++){
    xl.readAxes(x, y, z);  // The readAxes() function transfers the
    data[j] = x;
    total = total + x;
  }
  last_ave = total / 25;
  if(DEBUG){
    Serial.begin(115200);
  }


  for(int j=0; j<0; j++){
    digitalWrite(HL, HIGH);
    delay(250);
    digitalWrite(HL, LOW);
    delay(250);
  }
}





void loop(){

  
  static long loopTimer = 0;
  int16_t x, y, z, ave;
  xl.readAxes(x, y, z);  // The readAxes() function transfers the
                           //  current axis readings into the three
                           //  parameter variables passed to it.


  data[i] = x;
  i = i+ 1;
  if (i > 24){
    i=0;

    long total = 0;
    for(int j=0; j<25; j++){
      total += data[j];
    }
    ave = total / 25;
    if(abs(ave - last_ave) < 50){
      if (!still){
        stillTime = millis();
      }
      still = true;
    }
    else {
      still = false;
      brakes = false;
    }
    if(DEBUG){
      Serial.print(" last ave=");
      Serial.print(last_ave);
      Serial.print("  ave=");
      Serial.print(ave);
      Serial.print("  diff:");
      Serial.print(abs(ave - last_ave));
    }
    last_ave = ave;
  }
 
  
  float valx = xl.convertToG(2, x);
  float valz = xl.convertToG(2, z);
  /*
  if (!brakes){
    if (val > lvl_set || val < -lvl_set){
      brakes = true;
    }
  }
  else if (val < lvl_rst && val > -lvl_rst){
   brakes = false;
  }
  */

  if(i==0 && DEBUG){
    Serial.print(" s=");
    Serial.print(still);
    Serial.print(" b=");
    Serial.println(brakes);
    delay(25);
  }

  if (!brakes){
    long curTime = millis();

    if (curTime > HLT){
      HLF = !HLF;
      HLT = curTime + HLD;
    }

    if (curTime > TLT){
      TLF = !TLF;
      TLT = curTime + TLD;
    }

    if (curTime > ULT){
      ULF = !ULF;
      ULT = curTime + ULD;
    }
    
    if (curTime > DLT){
      DLF = !DLF;
      DLT = curTime + DLD;
    }

    digitalWrite(HL, HLF);
    digitalWrite(TL, TLF);
    digitalWrite(UL, ULF);
    digitalWrite(DL, DLF);
            
    if ((millis() - stillTime) > 4000){
      if(still){
        brakes = true;
      }
    }
    else {
      brakes = false;
    }

    /*
    if (brakes){
      analogWrite(BL, intensity);
    }
    else{
      digitalWrite(BL, LOW);
    }*/
  }
  else{
    digitalWrite(HL, LOW);
    digitalWrite(TL, LOW);
    digitalWrite(UL, LOW);
    digitalWrite(DL, LOW);
    
  }
    if ((millis() - stillTime) > 60000){
      stillTime = millis();
      still = false;
      brakes = false;
    }

  /*
  if (still){
    digitalWrite(HL, LOW);
  }
  else{
    digitalWrite(HL, HIGH);
  }
  */


  /*
  if (millis() - loopTimer > 1000)
  {
    loopTimer = millis();

    Serial.println(x);
    Serial.println(y);
    Serial.println(z);
    Serial.println(xl.convertToG(6,x)); // The convertToG() function
    Serial.println(xl.convertToG(6,y)); // accepts as parameters the
    Serial.println(xl.convertToG(6,z)); // raw value and the current
    Serial.println(" ");                // maximum g-rating.
  }
  if (digitalRead(9) == HIGH)
  {
    Serial.println("Interrupt");
  }
  */
}
