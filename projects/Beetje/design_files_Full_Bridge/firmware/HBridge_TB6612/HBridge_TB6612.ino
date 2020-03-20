/*

 */
 


int led = 13;
int Ain1 = 14; // MISO
int Ain2 = 16;  // MOSI
int Bin1 = 10;
int Bin2 = 9;


int button = 4;
int state = 0;  // 0 = off, 1 = forward, 2 =backward


// the setup routine runs once when you press reset:
void setup() {                
  // initialize the digital pin as an output.
  pinMode(led, OUTPUT);
  pinMode(Ain1, OUTPUT);
  pinMode(Ain2, OUTPUT); 
  pinMode(Bin1, OUTPUT);
  pinMode(Bin2, OUTPUT); 
  pinMode(button, INPUT_PULLUP);    
}


// the loop routine runs over and over again forever:
void loop() {
  int val = digitalRead(button);
  if (!val){
    digitalWrite(led, HIGH);
    while(!digitalRead(button)){
      delay(10);
    }
    digitalWrite(led, LOW);
    state += 1;
    if (state > 2){
      state = 0;
    }
  }
 switch(state){
  case 0:
    digitalWrite(Ain1, LOW);
    digitalWrite(Ain2, LOW);
    digitalWrite(Bin1, LOW);
    digitalWrite(Bin2, LOW);
    digitalWrite(led, LOW);
    break;
  case 1:
    digitalWrite(Ain1, HIGH);
    digitalWrite(Ain2, LOW);
    digitalWrite(Bin1, HIGH);
    digitalWrite(Bin2, LOW);
    digitalWrite(led, HIGH);
    break;  
  case 2:
    digitalWrite(Ain1, LOW);
    digitalWrite(Ain2, HIGH);
    digitalWrite(Bin1, HIGH);
    digitalWrite(Bin2, LOW);
    digitalWrite(led, HIGH);
    break;  
  }
}
