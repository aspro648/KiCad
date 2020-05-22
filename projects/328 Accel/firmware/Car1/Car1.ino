// https://github.com/sparkfun/SparkFun_LIS331_Arduino_Library
// https://learn.sparkfun.com/tutorials/h3lis331dl-accelerometer-breakout-hookup-guide


#include "SparkFun_LIS331.h"
#include <Wire.h>

LIS331 xl;


int HL = 10;
int TL = 5;
int BL = 6;
int DL = 9;
int UL = 11;
float lvl_set = 0.2;
float lvl_rst = 0.1;
int i = 0;

bool brakes = false;
bool still = false;

int16_t data[25];
int16_t last_ave;


void setup(){

  pinMode(HL, OUTPUT);
  pinMode(TL, OUTPUT);
  pinMode(BL, OUTPUT);
  pinMode(DL, OUTPUT);
  pinMode(UL, OUTPUT);

  digitalWrite(UL, HIGH);
  delay(1000);
  digitalWrite(UL, LOW);
  delay(1000);
  

  // put your setup code here, to run once:
  pinMode(9,INPUT);       // Interrupt pin input
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

  
  digitalWrite(HL, HIGH);
  digitalWrite(TL, HIGH);

  // load array
  int16_t x, y, z;
  long total = 0;
  for(int j=0; j<25; j++){
    xl.readAxes(x, y, z);  // The readAxes() function transfers the
    data[j] = x;
    total = total + x;
  }
  last_ave = total / 25;
  //Serial.begin(115200);
  //Serial.println(last_ave);
}





void loop(){
  static long loopTimer = 0;
  int16_t x, y, z;
  xl.readAxes(x, y, z);  // The readAxes() function transfers the
                           //  current axis readings into the three
                           //  parameter variables passed to it.

/*
  data[i] = x;
  i = i+ 1;
  if (i > 24){
    i=0;


    long total = 0;
    for(int j=0; j<25; j++){
      total += data[j];
    }
    int16_t ave = total / 25;
    Serial.print("last ave=");
    Serial.print(last_ave);
    Serial.print("  ave=");
    Serial.print(ave);
    Serial.print("  diff:");
    Serial.println(abs(ave - last_ave));
    delay(100);
    if(abs(ave - last_ave) < 5){
      still = true;
    }
    else {
      still = false;
    }
    last_ave = ave;
  }
  */  
  
  float val = xl.convertToG(2, y);

  if (!brakes){
    if (val > lvl_set || val < -lvl_set){
      brakes = true;
    }
  }

  else if (val < lvl_rst && val > -lvl_rst){
   brakes = false;
  }
  
  if (brakes){
    digitalWrite(BL, HIGH);
  }
  else{
    digitalWrite(BL, LOW);
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
