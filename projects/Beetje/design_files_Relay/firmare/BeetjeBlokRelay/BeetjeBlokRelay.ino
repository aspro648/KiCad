/* 

Beetje 32U4 V0.3 with Relay Blok
https://github.com/aspro648/KiCad/tree/master/projects/Beetje
648.ken@gmail.com

*/

int relay = 6;
int button = 4;
int state = false;
int led = 13;


String inputString = "";         // a String to hold incoming data
boolean stringComplete = false;  // whether the string is complete


void setup() {
  pinMode(relay, OUTPUT);
  digitalWrite(relay, LOW);
  pinMode(button, INPUT_PULLUP);
  pinMode(led, OUTPUT);

  Serial.begin(115200);       
  while(!Serial && digitalRead(button));
  Serial.println("Send '1' to turn on, '0' to turn off.");  
}


void loop() {

  if (!digitalRead(button)){
    while(!digitalRead(button)){
      digitalWrite(led, HIGH);
    }
    digitalWrite(led, LOW);
    delay(100);
    state = !state;
    digitalWrite(relay, state);
  }


  if(Serial.available()){
    int inByte = Serial.read();
    //Serial.println(inByte);
    if(inByte == 49){  // ascii 1
      state = true;
      Serial.println("ON");
    }
    if(inByte == 48){  // ascii 0
      state = false;
      Serial.println("OFF");
    }
    digitalWrite(relay, state);
  }

}


