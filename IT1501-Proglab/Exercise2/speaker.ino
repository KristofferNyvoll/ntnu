const int button = 3;
const int touchId= 5;
const int buzzer = 8;
const int echoPin = 12;
const int triggerPin = 13;

void setup() {
  Serial.begin(9600);
  pinMode(buzzer, OUTPUT);
  pinMode(button,INPUT);
  pinMode(triggerPin, OUTPUT);
  pinMode(echoPin,INPUT);
  noTone(buzzer);
  pinMode(touchId, INPUT);
}

void loop() {
  // Sends the echo shit
  digitalWrite(triggerPin, LOW);
  delay(2);   
  digitalWrite(triggerPin, HIGH);
  delay(10);
  digitalWrite(triggerPin, LOW);
  // Calculates the the return time echo shit
  long duration = pulseIn(echoPin, HIGH);
  // Caluclates distance shit
  float distance = duration * 0.00017;  
  Serial.println(distance); 

  
  if (digitalRead(button) == LOW) { 
    Serial.println("beep");
    // Plays that tone boi
    tone(buzzer, 1760, 1000);
    delay(1000);

  } else if (distance < 0.1) {
    tone(buzzer,1000*distance,1000);
    
  } else if (digitalRead(touchId) == HIGH) {
    tone(buzzer,4000,1000);
    delay(1000);
  }
  
  else {
    noTone(buzzer);
  }
}
