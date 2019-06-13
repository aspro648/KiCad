/*
Photo transistor connected to A0 with external 10K ohm pull-up
*/

int sensorPin = A1;        // must be pin A0 to A5 for interrupt PCINT1_vect signal
int flyWheelPin = 2;
int shot_count = 0;
long time1_us = 0;         // dart enters gate
long time2_us = 0;         // dart exits gate
long interval_us;          // flight time between entrance and exit
float dartLength_mm = 72;  // mm
float speed_fps = 0;       // feet per second
float speed_mps = 0;       // meters per second
float speed_mph = 0;       // miles per hour
float ave_fps = 0;         // average feet per second
bool flag = false;         // dart exits gate
volatile long mtr_time1_us = 0;
volatile long mtr_time2_us = 0;
volatile byte cnt = 0;
int rpm = 0;
long nextTime = 0;
int curPin = A1;
int mVperAmp = 185; // use185 for 5A, 100 for 20A Module and 66 for 30A Module
int RawValue= 0;

int ACSoffset = 2530; 
double Voltage = 0;
double Amps = 0;
double maxA = 0;

void pciSetup(byte pin){
  // https://playground.arduino.cc/Main/PinChangeInterrupt/
  *digitalPinToPCMSK(pin) |= bit (digitalPinToPCMSKbit(pin));  // enable pin
  PCIFR  |= bit (digitalPinToPCICRbit(pin)); // clear any outstanding interrupt
  PCICR  |= bit (digitalPinToPCICRbit(pin)); // enable interrupt for the group
}

void setup() {                  
  // pin setup
  pinMode(sensorPin, INPUT_PULLUP);  // should have external pull-up or use INPUT_PULLUP
  pciSetup(sensorPin);
  pinMode(flyWheelPin, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(flyWheelPin), flywheel_interrupt, FALLING);  
  // Open serial coms to console
  pinMode(curPin, INPUT);
  Serial.begin(9600);
  Serial.println("time(s), rpm, amps, maxAmps");
}


ISR (PCINT1_vect) { // handle pin change interrupt for A0 to A5 here
  if (digitalRead(sensorPin)) { // HIGH if dart present
    time1_us = micros(); 
  }
  else {                        // LOW when dart exits
    time2_us = micros();
    flag = true;     
  }
}


void flywheel_interrupt(){
  cnt += 1;
  if(cnt>100){
    cnt = 0;
    mtr_time2_us = mtr_time1_us;
    mtr_time1_us = micros(); 
  }
}


void loop() {
  long mtr_interval_us = mtr_time1_us - mtr_time2_us;
  if (mtr_interval_us > 0){
    rpm = 1E+6 * 60 / mtr_interval_us;
  }
  if ((micros() - mtr_time1_us) > 1E+4){
    rpm = 0;
  }

  //RawValue = analogRead(curPin);
  //Voltage = (RawValue / 1024.0) * 5000; // Gets you mV
  //Amps = ((Voltage - ACSoffset) / mVperAmp);
  if (Amps > maxA){
    maxA = Amps;
  } 
  
  if (flag){ // dart has exited gate
    shot_count += 1;
    interval_us = time2_us - time1_us;
    speed_fps = dartLength_mm / interval_us / 25.4 / 12 * 1E+6;               // feet per second
    speed_mps = dartLength_mm / interval_us / 1000 * 1E+6;                    // meter per second
    speed_mph = dartLength_mm / interval_us / 25.4 / 12 * 1E+6 / 5280 * 3600; // miles per hour  
    
    //Serial.print("Shot #");
    Serial.print(shot_count);
    Serial.print(", ");
    Serial.print(millis()/1000.0, 1);
    //Serial.print(" us  ");
    Serial.print(", ");
    Serial.println(speed_fps, 1);
    /*
    Serial.print(" fps  ");
    Serial.print(speed_mps, 1);
    Serial.print(" m/s  ");
    Serial.print(speed_mph, 1);
    Serial.println(" mph  "); 
    */

    flag = false; // reset gate
  }
 if (millis() > nextTime && 0){
   nextTime = nextTime + 1000;
   if(true){

   Serial.print(millis() / 1000.0); 
   Serial.print(", " ); // shows pre-scaled value 
   Serial.print(rpm); 
   Serial.print(", "); // shows the voltage measured 
   //Serial.print(Voltage,3); // the '3' after voltage allows you to display 3 digits after decimal point
   //Serial.print(", "); // shows the voltage measured 
   Serial.print(Amps,3); // the '3' after voltage allows you to display 3 digits after decimal point
   Serial.print(", "); // shows the voltage measured 
   Serial.println(maxA,3); // the '3' after voltage allows you to display 3 digits after decimal point
   }
   else{
   Serial.print("rpm = " ); // shows pre-scaled value 
   Serial.print(rpm); 
   //Serial.print("\t mV = "); // shows the voltage measured 
   //Serial.print(Voltage,3); // the '3' after voltage allows you to display 3 digits after decimal point
   //Serial.print("\t Amps = "); // shows the voltage measured 
   //Serial.print(Amps,3); // the '3' after voltage allows you to display 3 digits after decimal point
   //Serial.print("\t max = "); // shows the voltage measured 
   //Serial.println(maxA,3); // the '3' after voltage allows you to display 3 digits after decimal point    
   }
 }
}
