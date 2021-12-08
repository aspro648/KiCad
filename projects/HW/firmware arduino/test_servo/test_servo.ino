/* 

*/

#include <Servo.h>

Servo servo1;  // create servo object to control a servo
Servo servo2;

int pos = 0;    // variable to store the servo position

int servoPin1 = 9;
int servoPin2 = 10;

int POS1UP = 80;  // assume horn is level at 90 degrees
int POS1DN = 100;
int POS2UP = 85;  // assume horn is level at 90 degrees
int POS2DN = 95;


void setup() {
  servo1.attach(servoPin1);
  servo2.attach(servoPin2);  // attaches the servo on pin 9 to the servo object
  servo1.write(90);
  servo2.write(90);
  delay(5000);
}


void loop() {
  servo2.write(POS1UP);
  delay(2000);
  servo2.write(POS1DN);
  delay(1000);
}
