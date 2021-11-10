
// #include <Wire.h>;
// #include <inttypes.h>;

/*  Port, bit
S1  1-5   0-0
S2  1-1   0-1

Y1  1-0   0-2
Y2  1-2   0-3
Y3  1-4   0-4

G   1-3   0-5
R   0-7   0-6


*/


#define NUM_MCP2301x_ICs   1

#include <MCP2301x.h>

#ifdef _DEBUG_

void errorFunction(String errMessg) {
    Serial.println(errMessg);
}

MCP2301x IOexp(errorFunction);

#else

MCP2301x IOexp;

#endif // _DEBUG_

#define IOEXP_MODE  (IOCON_INTCC | IOCON_INTPOL | IOCON_ODR | IOCON_MIRROR)
#define ADDRESS      (MCP2301X_CTRL_ID)
#define LED_PIN      4   // WeMOS D1 & D1 mini
#define PORT0      0
#define PORT1      1

byte LED[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14};


void setup(){
  Serial.begin(9600);
  while( ! Serial) delay(1);
  Serial.println("\n\nIOexpander example");
  
  if(IOexp.init(ADDRESS, IOEXP_MODE, I2C_FREQ100K)) { 
    Serial.println("Communication with IOexpander works!");
  } else {
    Serial.print("No communication with the IOexpander!!");
  }    

  IOexp.pinPolarityPort(PORT0, ALL_INVERTED);
  IOexp.pinPolarityPort(PORT1, ALL_INVERTED);
  IOexp.pinModePort(PORT0, ALL_OUTPUT); 
  IOexp.pinModePort(PORT1, ALL_OUTPUT);
  //IOexp.pinPullupPort(OUT_PORT, ALL_HIGH);
  //IOexp.pinPullupPort(IN_PORT, ALL_HIGH);

  while(0){
    IOexp.digitalWritePort(PORT0, ALL_HIGH);
    IOexp.digitalWritePort(PORT1, ALL_HIGH);
    delay(1000) ; 
    IOexp.digitalWritePort(PORT0, ALL_LOW);
    IOexp.digitalWritePort(PORT1, ALL_LOW);    
    delay(1000);
  }
  Serial.println("exit setup");
}


void loop(){
  Serial.println("enter loop");
  IOexp.digitalWritePort(PORT0, ALL_HIGH);
  IOexp.digitalWritePort(PORT1, ALL_HIGH);  
  for(int x=0; x<8; x++){
    Serial.println(x);
    IOexp.digitalWrite(PORT1, x, LOW);
    delay(3000);
    IOexp.digitalWrite(PORT1, x, HIGH);    
  }
  
}
