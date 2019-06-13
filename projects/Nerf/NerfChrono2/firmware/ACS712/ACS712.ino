/*
Measuring Current Using ACS712
http://henrysbench.capnfatz.com/henrys-bench/arduino-current-measurements/acs712-current-sensor-user-manual/
*/

const int analogIn = A1;
int mVperAmp = 185; // use185 for 5A, 100 for 20A Module and 66 for 30A Module
int RawValue= 0;
int ACSoffset = 2485; 
double Voltage = 0;
double Amps = 0;
double maxA = 0;
long nextTime = 0;
void setup(){ 
 Serial.begin(9600);
}

void loop(){
 
 RawValue = analogRead(analogIn);
 Voltage = (RawValue / 1024.0) * 5000; // Gets you mV
 Amps = ((Voltage - ACSoffset) / mVperAmp);
 
if (Amps > maxA){
  maxA = Amps;
}


 
 if (millis() > nextTime){
  nextTime += 1000;
 Serial.print("Raw Value = " ); // shows pre-scaled value 
 Serial.print(RawValue); 
 Serial.print("\t mV = "); // shows the voltage measured 
 Serial.print(Voltage,3); // the '3' after voltage allows you to display 3 digits after decimal point
 Serial.print("\t Amps = "); // shows the voltage measured 
 Serial.print(Amps,3); // the '3' after voltage allows you to display 3 digits after decimal point
 Serial.print("\t max = "); // shows the voltage measured 
 Serial.println(maxA,3); // the '3' after voltage allows you to display 3 digits after decimal point
 }
 
}
