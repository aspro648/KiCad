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
int rpm = 0;

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

  Serial.println("Adafruit INA260 Test");

  if (!ina260.begin()) {
    Serial.println("Couldn't find INA260 chip");
    while (1);
  }
  Serial.println("Found INA260 chip");

  pinMode(DART_IR, INPUT);            // external pullup
  pciSetup(DART_IR);
  
  pinMode(flyWheelPin, INPUT);
  attachInterrupt(digitalPinToInterrupt(flyWheelPin), flywheel_interrupt, FALLING);
  Serial.println("time (ms), rpm, mA, mA max");
}


void loop() {
  long mtr_interval_us = mtr_time1_us - mtr_time2_us;
  if (mtr_interval_us > 0){
    rpm = 1E+6 * 60 / mtr_interval_us;
  }
  if ((micros() - mtr_time1_us) > 1E+4){
    rpm = 0;
    //start_flag = false;
  }
  /*
  float total = 0;
  for(int x=0; x<10; x++){
    curAmp = ina260.readCurrent();
    delay(1);
    total = total + curAmp;
    if (curAmp > maxAmp){
      maxAmp = curAmp;
    }
  }
  curAmp = total / 25.0;
  */
  curAmp = ina260.readCurrent();
  if (curAmp > maxAmp){
    maxAmp = curAmp;
    Serial.print( millis());
    Serial.print(", ");
    Serial.print(rpm);
    Serial.print(", ");
    Serial.print(curAmp);
    Serial.print(", ");
    Serial.println(maxAmp);
  }
  if (curAmp < 0){ curAmp = 0;}

  if (dart_flag){ // dart has exited gate
    shot_count += 1;
    dart_interval_us = dart_time2_us - dart_time1_us;
    dart_speed_fps = dartLength_mm / dart_interval_us / 25.4 / 12 * 1E+6;      // feet per second
    dart_flag = false;
    Serial.print("Shot #");
    Serial.print(shot_count);
    Serial.print(" @ ");
    Serial.print(millis()/1000.0, 1);
    Serial.print(" sec,  ");
    Serial.print(dart_speed_fps, 1);      
    Serial.println(" fps");
  }

  if (rpm > 0){
    if (!start_flag){
      start_flag = true;
      Serial.print(lastTime);
      Serial.print(", ");
      Serial.print(lastRPM);
      Serial.print(", ");
      Serial.print(lastAmp);
      Serial.print(", ");
      Serial.println(maxAmp);      
    }
    else{
      long mark = millis();
      if (mark > showTime){
        Serial.print(mark);
        Serial.print(", ");
        Serial.print(rpm);
        Serial.print(", ");
        Serial.print(curAmp);
        Serial.print(", ");
        Serial.println(maxAmp);
        //Serial.println(", ");
        showTime = mark + 10;
      }
    }
  }
  lastTime = millis();
  lastRPM = rpm;
  lastAmp = curAmp;
}
