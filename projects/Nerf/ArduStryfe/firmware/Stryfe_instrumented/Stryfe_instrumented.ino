#include <Adafruit_INA260.h>

Adafruit_INA260 ina260 = Adafruit_INA260();

float maxAmp = 0; 
float curAmp = 0;
long showTime = 0;


int DART_IR = A0;
int flyWheelPin = 2;
int voltagePin = A3;
float voltage = 0;
float vcc = 5.0;
float vd_factor = 1; //3.09;  //(9.76 + 4.42) / 4.42
float voltage_low = 6.5; //5.0; //6.5;
float voltage_high = 8.4; //6.0; //8.4;
float minVoltage = 100;

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
int loopCount = 0;


bool start_flag = false;

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

  pinMode(DART_IR, INPUT_PULLUP);            // external pullup
  pciSetup(DART_IR);
  
  pinMode(flyWheelPin, INPUT);
  pinMode(voltagePin, INPUT);
  attachInterrupt(digitalPinToInterrupt(flyWheelPin), flywheel_interrupt, RISING);
  Serial.println("time (ms), rpm, mA, mA max");
  Serial.println("shot, time (s), fps, rpm");
}


void loop() {
  //detachInterrupt(digitalPinToInterrupt(flyWheelPin));
  long mtr_interval_us = mtr_time1_us - mtr_time2_us;
  //attachInterrupt(digitalPinToInterrupt(flyWheelPin), flywheel_interrupt, RISING);
  if (mtr_interval_us > 0){
    rpm = 1E+6 * 60 / mtr_interval_us;
  }
  if (rpm < 10){
    rpm = 0;
  }
  //if ((micros() - mtr_time1_us) > 1E+4){
  //  rpm = 0;
  //  //start_flag = false;
  //}

  //voltage = analogRead(voltagePin) / 1023.0 * vcc *vd_factor;
  voltage = ina260.readBusVoltage()/1000;
  if (voltage < minVoltage){
    minVoltage = voltage;
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
  }
  
  if (curAmp < 0){ curAmp = 0;}

  if (dart_flag){ // dart has exited gate
    shot_count += 1;
    dart_interval_us = dart_time2_us - dart_time1_us;
    dart_speed_fps = dartLength_mm / dart_interval_us / 25.4 / 12 * 1E+6;      // feet per second
    dart_flag = false;
    /*
    Serial.print(shot_count);
    Serial.print(", ");
    Serial.print(millis()/1000.0, 1);
    Serial.print(",  ");
    Serial.print(dart_speed_fps, 1);      
    Serial.print(", ");
    Serial.println(rpm);
   */
  }

  loopCount += 1;
  long mark = millis();
  if (mark > showTime){

    //Serial.print(mtr_interval_us);
    Serial.print(mark);
    Serial.print(", ");
    Serial.print(rpm);
    Serial.print(", ");
    Serial.print(maxAmp);
    Serial.print(", ");
    //Serial.print(minVoltage, 2);
    Serial.print(voltage, 2);    
    //Serial.print(", ");
    //Serial.print(loopCount);
    if (dart_speed_fps > 0){
      Serial.print(", ");
      Serial.println(dart_speed_fps);
      dart_speed_fps = 0;
    }
    else{
      Serial.println(",");
    }
    
    //Serial.println(", ");
    if (mark < 2000){
      showTime = mark + 10;
    }
    else{
      showTime = mark + 10;
    }
    loopCount = 0;
    maxAmp = 0;
    minVoltage = 100;
  }

}
