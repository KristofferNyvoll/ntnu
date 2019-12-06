const int button = 3;
const int touchId= 5;
const int buzzer = 8;
const int led = 9;

void setup() {
  Serial.begin(9600);
  pinMode(buzzer, OUTPUT);
  pinMode(led, OUTPUT);
  noTone(buzzer);
  pinMode(touchId, INPUT);
}

void loop() {
    noTone(buzzer);
    digitalWrite(led, LOW);
    if (digitalRead(button) == HIGH) { 
      delay(3000);
      while (digitalRead(touchId) == LOW){
        tone(buzzer,4000,1000);
        digitalWrite(led, HIGH); 
    }
    }
}
