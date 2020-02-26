/*

 */
 


int led = 6;
int in1 = 10;
int in2 = 9;


int button = A2;
int state = 0;  // 0 = off, 1 = forward, 2 =backward
int speed = 255;

// the setup routine runs once when you press reset:
void setup() {                
  // initialize the digital pin as an output.
  pinMode(led, OUTPUT);
  pinMode(in1, OUTPUT);
  pinMode(in2, OUTPUT); 
  pinMode(button, INPUT_PULLUP);    
  Serial.begin(9600);
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
    Serial.println(state);
  }
 switch(state){
  case 0:
    digitalWrite(in1, LOW);
    digitalWrite(in2, LOW);
    digitalWrite(led, LOW);
    break;
  case 1:
    digitalWrite(in1, HIGH);
    digitalWrite(in2, LOW);
    digitalWrite(led, HIGH);
    break;  
  case 2:
    digitalWrite(in1, LOW);
    digitalWrite(in2, HIGH);
    digitalWrite(led, HIGH);
    break;  
  }
}
