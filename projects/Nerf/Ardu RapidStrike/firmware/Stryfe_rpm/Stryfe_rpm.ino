#include <Adafruit_INA260.h>

Adafruit_INA260 ina260 = Adafruit_INA260();

float maxAmp = 0; 
float curAmp = 0;
long showTime = 0;


int DART_IR = A0;
int flyWheelPin = 2;

volatile int shot_count = 0;
volatile long dart_time1_us = 0;
volatile long dart_time2_us = 0;
volatile bool dart_flag = false;
float dart_speed_fps = 0;
float dartLength_mm = 72;
long dart_interval_us = 0;

volatile long mtr_time1_us = 0;
volatile long mtr_time2_us = 0;
volatile byte cnt = 0;
long rpm = 0;

bool start_flag = false;
float lastAmp = 0;
int lastRPM = 0;
long lastTime = 0;


void pciSetup(byte pin){
  // https://playground.arduino.cc/Main/PinChangeInterrupt/
  *digitalPinToPCMSK(pin) |= bit (digitalPinToPCMSKbit(pin));  // enable pin
  PCIFR  |= bit (digitalPinToPCICRbit(pin)); // clear any outstanding interrupt
  PCICR  |= bit (digitalPinToPCICRbit(pin)); // enable interrupt for the group
}


ISR (PCINT1_vect) {  // handle pin change interrupt for A0 to A5 here
  if (digitalRead(DART_IR)) { // HIGH if dart present
    dart_time1_us = micros(); 
  }
  else {                        // LOW when dart exits
    dart_time2_us = micros();
    dart_flag = true;     
  }
}


void flywheel_interrupt(){
  mtr_time2_us = mtr_time1_us;
  mtr_time1_us = micros(); 
}


void setup() {
  Serial.begin(57600);
  // Wait until serial port is opened
  while (!Serial) { delay(10); }

  
  pinMode(flyWheelPin, INPUT);
  attachInterrupt(digitalPinToInterrupt(flyWheelPin), flywheel_interrupt, RISING);
  Serial.println("time (ms), rpm, mA, mA max");

}


void loop() {
  //detachInterrupt(digitalPinToInterrupt(flyWheelPin));
  long mtr_interval_us = mtr_time1_us - mtr_time2_us;
  //attachInterrupt(digitalPinToInterrupt(flyWheelPin), flywheel_interrupt, RISING);
  if (mtr_interval_us > 0){
    rpm = 1E+6 * 60 / mtr_interval_us;
  }
  if ((micros() - mtr_time1_us) > 1E+4){
    rpm = 0;
    //start_flag = false;
  }


  long mark = millis();
  if (mark > showTime){
    Serial.print(mtr_interval_us);
    //Serial.print(mark);
    Serial.print(", ");
    Serial.println(rpm);
    showTime = mark + 250;
  }

}
