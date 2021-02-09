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


static byte outs[] = {8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2};
static byte ins[] =  {8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2};
static byte LEDs[] = {8, 9, 10, 11, 12, 13, 14, 15, 0, 1, 2, 3};
static byte desired[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};

bool printFlag = true;


void setup() {
    Wire.begin();
    Serial.begin(9600);

    // setup mcpLED
    mcpLED.init();
    mcpLED.portMode(MCP23017Port::A, 0);          //Port A as output
    mcpLED.portMode(MCP23017Port::B, 0);          //Port A as output
    mcpLED.writeRegister(MCP23017Register::GPIO_A, 0x00);  //Reset port A 
    mcpLED.writeRegister(MCP23017Register::GPIO_B, 0x00);  //Reset port B
    mcpLED.writeRegister(MCP23017Register::IPOL_A, 0x0); // GPIO_A reflects the same logic as the input pins state
    mcpLED.writeRegister(MCP23017Register::IPOL_B, 0x0); // GPIO_B reflects the same logic as the input pins state
    
    // setup mcpIN
    mcpIN.init();
    mcpIN.portMode(MCP23017Port::A, 0b11111111); //Port A as input
    mcpIN.portMode(MCP23017Port::B, 0b11111111); //Port B as input
    mcpIN.writeRegister(MCP23017Register::GPIO_A, 0x00);  //Reset port A 
    mcpIN.writeRegister(MCP23017Register::GPIO_B, 0x00);  //Reset port B
    mcpIN.writeRegister(MCP23017Register::IPOL_A, 0x0); // GPIO_A reflects the same logic as the input pins state
    mcpIN.writeRegister(MCP23017Register::IPOL_B, 0x0); // GPIO_B reflects the same logic as the input pins state
    // Uncomment this line to invert inputs (press a button to lit a led)
    //mcpIN.writeRegister(MCP23017Register::IPOL_B, 0xFF);

    // setup mcpOUT
    mcpOUT.init();
    mcpOUT.portMode(MCP23017Port::A, 0);          //Port A as output
    mcpOUT.portMode(MCP23017Port::B, 0);          //Port A as output
    mcpOUT.writeRegister(MCP23017Register::GPIO_A, 0x00);  //Reset port A 
    mcpOUT.writeRegister(MCP23017Register::GPIO_B, 0x00);  //Reset port B

    mcpOUT.writePort(MCP23017Port::A, 255);
    mcpOUT.writePort(MCP23017Port::B, 255);

    pinMode(A0, INPUT_PULLUP);
    pinMode(A1, INPUT_PULLUP);
    pinMode(A2, INPUT_PULLUP);
    pinMode(A3, OUTPUT);
    digitalWrite(A3, LOW);

    // check jumpert for board installed
    byte board = 0;  
    if(!digitalRead(A0)){
      board = 1;  
    }
    if(!digitalRead(A1)){
      board = board | 0b10;
    }
    if(!digitalRead(A2)){
      board = board | 0b100;
    } 

      
    Serial.begin(9600);
    Serial.println("\nUniversal Cable Tester");
    Serial.print("Board detected = ");
    Serial.println(board);
    Serial.println("Cable under test: 500-044337 Rev D");
    Serial.println("\n    JP2   JP1");

    mcpLED.writePort(MCP23017Port::A, 255);
    mcpLED.writePort(MCP23017Port::B, 255);
    
    pinMode(A0, OUTPUT);
    digitalWrite(A0, HIGH);
    pinMode(A2, OUTPUT);
    digitalWrite(A2, LOW);

}



void loop(){
  byte results[] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};   //0 = no contact, x = pin connected to
  int val;
  for (int x=0; x < sizeof(ins); x++){
    if (printFlag){
      Serial.print("Pin # ");
      Serial.print(x + 1);
      Serial.print(" = ");
    }
    val = mcpIN.digitalRead(ins[x]);
    if (!val){
         if (printFlag){Serial.print("short");}
     results[11 - x] = 255;
    }
    else{
      for (int y=0; y < sizeof(ins); y++){
         mcpOUT.digitalWrite(outs[y], LOW);
         val = mcpIN.digitalRead(ins[x]);
         if (!val){
            results[11 - x] = y + 1;
            if (printFlag){
              Serial.print(y + 1);
              Serial.print(" ");
            }
         }
         mcpOUT.digitalWrite(outs[y], HIGH);        
      }
    }
    if (printFlag){Serial.println();}   
  }


  for (int x=0; x < sizeof(results); x++){
    if (printFlag){
      //Serial.print(results[x]);
      //Serial.print(" ");
    }   
    if(results[x] == desired[x]){
      mcpLED.digitalWrite(LEDs[x], LOW);  // correct
    }
    else if(results[x] == 0){
      mcpLED.digitalWrite(LEDs[x], HIGH); // no contact
    }
    else{           // crossed
      if ((millis()/1000) % 2){
        mcpLED.digitalWrite(LEDs[x], HIGH);
      }
      else{
        mcpLED.digitalWrite(LEDs[x], LOW);
      }        
    }
  } 
  if (printFlag){
    Serial.println("\nDone");
  }
  printFlag = false;  // don't print remaining loops
  
}




/*  ----- Unused utilities ---------    */
void printPorts(){
    Serial.print("LEDS: ");
    print_binary(mcpLED.readPort(MCP23017Port::A));
    Serial.print(" ");
    print_binary(mcpLED.readPort(MCP23017Port::B));
    Serial.println();
    Serial.print("IN:   ");
    print_binary(mcpIN.readPort(MCP23017Port::A));
    Serial.print(" ");
    print_binary(mcpIN.readPort(MCP23017Port::B));
    Serial.println();
    Serial.print("OUT:  "); 
    print_binary(mcpOUT.readPort(MCP23017Port::A));
    Serial.print(" ");
    print_binary(mcpOUT.readPort(MCP23017Port::B));   
    Serial.println();
}


void printPort(){
    Serial.print("OUT:  "); 
    print_binary(mcpOUT.readPort(MCP23017Port::A));
    Serial.print(" ");
    print_binary(mcpOUT.readPort(MCP23017Port::B));   
    Serial.println();
}


byte readChannel(byte channel){
  // return boolean for given channel (0 - 15)
  bool val;
  byte mask = 0b00000001;
  if (channel < 7){
    mask = mask << channel;
  }
  else{
    mask = mask << (channel - 8);
  }
}


void writeChannel(byte channel, bool val){
  Serial.print(" ");
  print_binary(mcpLED.readPort(MCP23017Port::A));
  Serial.print(" ");
  print_binary(mcpLED.readPort(MCP23017Port::B));

  byte portA = mcpOUT.readPort(MCP23017Port::A);
  byte portB = mcpOUT.readPort(MCP23017Port::B);
  byte mask = 0b00000001;

  if (channel < 8){
    mask = mask << channel;
    if(val){//set bit
      //portB |= 1 << channel;
      portB &= ~(1 << channel);
    }
    else{//clear bit
      //portB &= ~(1 << channel);
      portB |= 1 << channel;
    }
    mcpLED.writePort(MCP23017Port::B, portB);
  }
  else{
    mask = mask << (channel - 8);
    if(val){//set bit
      //portA |= 1 << (channel - 8);
      portA &= ~(1 << (channel - 8));
    }
    else{//clear bit
      //portA &= ~(1 << (channel - 8));
      portA |= 1 << (channel - 8);
    }
    mcpLED.writePort(MCP23017Port::A, portA);
  }
  
  Serial.print(" channel = ");
  Serial.print(channel, HEX);
  Serial.print("  mask = ");
  print_binary(mask);

  Serial.print(" PORT = ");
  print_binary(mcpLED.readPort(MCP23017Port::A));
  Serial.print(" ");
  print_binary(mcpLED.readPort(MCP23017Port::B));
  Serial.println();
}


void print_binary(int var) {
  //https://forum.arduino.cc/index.php?topic=475435.0
  for (unsigned int test = 0x80; test; test >>= 1) {
    Serial.write(var  & test ? '1' : '0');
  }
}
