#include <Wire.h>

//variables for ADC
uint8_t mcp3021Address = 0b01001000; //base address for mcp3021
uint8_t adcDeviceId =  0b00000101;   //the deviceID
uint8_t deviceAddress = (mcp3021Address|adcDeviceId);


void setup() {

  //enable serial communication
  Serial.begin(9600);

  //setup i2c communication
  Wire.begin();

  //begin communication with mcp3021
  //mcp3021.begin(adcDeviceId);

}

void loop() {

  uint16_t val = readADC();
  float Vout = val / 1023.0 * 3.3;   
  //Vout = VS x (0.09 x P + 0.08)
  float kPa = (Vout - 0.08 * 3.3) / (0.09 * 3.3);
  float psi = kPa * 0.145038;
  Serial.print(val);
  Serial.print(" ");
  Serial.print(Vout);
  Serial.print("v ");
  Serial.print(kPa);
  Serial.print("kPa ");
  Serial.print(psi);
  Serial.println("psi");
  delay(1000);
}


uint16_t readADC(){
    // store dataRead from ADC in an array
    uint8_t dataRead[2];
    dataRead[0] = 0b00000000; // set array to 0 at creation
    dataRead[1] = 0b00000000; // set array to 0 at creation
    
    uint16_t value; // declare the variable to store and then return the reading

    Wire.requestFrom(deviceAddress, 2);// request 2 bytes from mcp3021
    for(int i =0; Wire.available() > 0;i++)//while device is available (should count to 2)
    {
        dataRead[i] = Wire.read();
    }
    value = (value | dataRead[0]) << 6; // we take the first byte and shift left 6 places since Value is 2 bytes
    dataRead[1] = dataRead[1] >> 2; //we take the second byte and shift it to the right 2 places,  this drops the 00 off the end
    value = value | dataRead[1]; // we OR both bytes to add them togeather

    return value;
}
