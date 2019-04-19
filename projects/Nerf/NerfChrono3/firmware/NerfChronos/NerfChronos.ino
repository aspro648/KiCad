/*


 */
 

int led = 13;
int pin1 = 3;
int pin2 = 2;
long t1 = 0;
long t2 = 0;
bool flag = false;  // value to print
int shot = 0;
float trapDist = 147; // mm
long interval;  // us between trap catches


void setup() {                
  // initialize the digital pin as an output.
  pinMode(led, OUTPUT);     
  pinMode(pin1, INPUT_PULLUP);
  pinMode(pin2, INPUT_PULLUP);
  attachInterrupt(0, trap1, RISING);
  attachInterrupt(1, trap2, RISING);
  Serial.begin(9600);
  Serial.println("Nerf Chronos, waiting for shot . . .");
}


void trap1(){
  t1 = micros();
}


void trap2(){
  t2 = micros();
  flag = true;
}


void loop() {
  if (flag){ // traps detected a pass
    shot += 1;
    interval = t2 - t1;
    float speed = trapDist / interval / 25.4 / 12 * 1E+6; // fps
    if (speed > 0){
      Serial.print("Shot ");
      Serial.print(shot);
      Serial.print("  ");
      Serial.print(float(interval) / 1000);
      Serial.print(" ms  ");
      Serial.print(speed);
      Serial.println(" fps");
    }
    else{ // bad data or backward traps
      Serial.println(interval);
    }
    flag = false;
  } 

}
