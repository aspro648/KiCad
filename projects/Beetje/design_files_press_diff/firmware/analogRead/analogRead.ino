
// MP3V510 attached to pin A0
// 0 - 1.45 psi range
// 3V device!


int pressPin = A0;


// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(pressPin, INPUT);
  Serial.begin(9600);
}


// the loop function runs over and over again forever
void loop() {
  int val = analogRead(pressPin);
  float Vout = val / 1023.0 * 5;    // using Leonardo, Aref is 5 volts!
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
