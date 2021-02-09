/**



 */
#include <Wire.h>
#include <MCP23017.h>   //https://github.com/blemasle/arduino-mcp23017

#define MCP23017_OUT 0x20
#define MCP23017_IN 0x21
#define MCP23017_LED 0x23


MCP23017 mcpLED = MCP23017(MCP23017_LED);
MCP23017 mcpIN = MCP23017(MCP23017_IN);
MCP23017 mcpOUT = MCP23017(MCP23017_OUT);


void setup() {
    Wire.begin();
    Serial.begin(9600);

    // setup mcpLED
    mcpLED.init();
    mcpLED.portMode(MCP23017Port::A, 0);          //Port A as output
    //mcp.portMode(MCP23017Port::B, 0b11111111); //Port B as input
    mcpLED.portMode(MCP23017Port::B, 0);          //Port A as output
    mcpLED.writeRegister(MCP23017Register::GPIO_A, 0x00);  //Reset port A 
    mcpLED.writeRegister(MCP23017Register::GPIO_B, 0x00);  //Reset port B

    // setup mcpIN
    mcpIN.init();
    mcpIN.portMode(MCP23017Port::B, 0b11111111); //Port B as input
    mcpIN.portMode(MCP23017Port::B, 0);          //Port A as output
    mcpIN.writeRegister(MCP23017Register::GPIO_A, 0x00);  //Reset port A 
    mcpIN.writeRegister(MCP23017Register::GPIO_B, 0x00);  //Reset port B
    mcpIN.writeRegister(MCP23017Register::IPOL_A, 0x00); // GPIO_B reflects the same logic as the input pins state
    mcpIN.writeRegister(MCP23017Register::IPOL_B, 0x00); // GPIO_B reflects the same logic as the input pins state
    // Uncomment this line to invert inputs (press a button to lit a led)
    //mcpIN.writeRegister(MCP23017Register::IPOL_B, 0xFF);

    // setup mcpOUT
    mcpOUT.init();
    mcpOUT.portMode(MCP23017Port::A, 0);          //Port A as output
    mcpOUT.portMode(MCP23017Port::B, 0);          //Port A as output
    mcpOUT.writeRegister(MCP23017Register::GPIO_A, 0x00);  //Reset port A 
    mcpOUT.writeRegister(MCP23017Register::GPIO_B, 0x00);  //Reset port B
   
}

void loop() {
  uint8_t currentB;

  //currentB = mcp.readPort(MCP23017Port::B);
  //mcp.writePort(MCP23017Port::A, currentB);
  
  for (byte a=0; a<256; a++)  {
    mcpLED.writePort(MCP23017Port::A, a);
    mcpLED.writePort(MCP23017Port::B, a);
    delay(25);
  }


}
