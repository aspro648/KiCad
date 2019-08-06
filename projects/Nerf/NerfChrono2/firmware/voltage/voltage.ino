
int voltagePin = A3;
float vcc = 5.0;
float vd_factor = 3.09;


void setup() {                  
  Serial.begin(9500);
  pinMode(voltagePin, INPUT);
   
}




void loop() {

    int voltValue = analogRead(voltagePin); 
    int val = 0;
    for (int x=0; x<10; x++){
      val = val + analogRead(voltagePin);
    }
    voltValue = val / 10;
    float voltage = voltValue / 1023.0 * vcc * vd_factor; 

    Serial.print(voltage, 2);
    Serial.println(" v");
    delay(100);

}
