/*
Photo transistor connected to A0 with external 10K ohm pull-up
*/

int sensorPin = A0;        // must be pin A0 to A5 for interrupt PCINT1_vect signal
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
  
  // Open serial coms to console
  Serial.begin(9600);
  Serial.println("shot, seconds, fps");
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

void loop() {
  if (flag){ // dart has exited gate
    shot_count += 1;
    interval_us = time2_us - time1_us;
    speed_fps = dartLength_mm / interval_us / 25.4 / 12 * 1E+6;               // feet per second
    speed_mps = dartLength_mm / interval_us / 1000 * 1E+6;                    // meter per second
    speed_mph = dartLength_mm / interval_us / 25.4 / 12 * 1E+6 / 5280 * 3600; // miles per hour  
    
    //Serial.print("Shot #");
    Serial.print(shot_count);
    Serial.print(", ");
    Serial.print(millis()/1000.0, 3);
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
}
