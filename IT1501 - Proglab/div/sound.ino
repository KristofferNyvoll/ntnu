const int soundPin = 8;
const int toneLen = 500;

void setup() {

}

void loop() {
  tone(soundPin, 440, toneLen);
  delay(toneLen);
  delay(toneLen);

  tone(soundPin, 1000, toneLen);
  delay(toneLen);

  tone(soundPin, 2500, toneLen);
  delay(toneLen);

}
