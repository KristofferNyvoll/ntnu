const int soundPin = 8;
const int toneLen = 500;
const int echoPin = 12;
const int triggerPin = 13;

void setup() {
  Serial.begin(9600);

  pinMode(triggerPin, OUTPUT);
  pinMode(echoPin, INPUT);
}

void loop() {
  digitalWrite(triggerPin, LOW);
  delayMicroseconds(2);

  digitalWrite(triggerPin, HIGH);
  delayMicroseconds(10);
  
  digitalWrite(triggerPin, LOW);
  long duration = pulseIn(echoPin, HIGH);
  float distance = duration * 0.00017;

  Serial.println(distance);
  delay(1000);

  
  
//  tone(soundPin, 440, toneLen);
//  delay(toneLen);
//  delay(toneLen);
//
//  tone(soundPin, 1000, toneLen);
//  delay(toneLen);
//
//  tone(soundPin, 2500, toneLen);
//  delay(toneLen);

}
