#include <Servo.h>

Servo myServo;
int pos = 0;

const int button = 2;
const int red = 13;
const int yellow = 12;
const int green = 11;
const int pedRed = 9;
const int pedGreen = 8;

int buttonState = 0;

void setup() {
  pinMode(red, OUTPUT);
  pinMode(yellow, OUTPUT);
  pinMode(green, OUTPUT);
  pinMode(pedGreen, OUTPUT);
  pinMode(pedRed, OUTPUT);
  pinMode(button, INPUT);
  Serial.begin(9600);
  myServo.attach(7);
}


void buttonAction() {
  Serial.println("Knapp trykket");
  lightRed();
  delay(1000);
  pedLightGreen();
  myServo.write(0); 
  
  // 6 sekunder til å gå over fotgjengerfeltet
  delay(6000);
  myServo.write(90); 
  
  pedLightRed();
  delay(1000);
  lightGreen();
}

void lightRed() {
  digitalWrite(green, LOW);
  digitalWrite(yellow, HIGH);
  delay(1000);
  digitalWrite(yellow, LOW);
  digitalWrite(red, HIGH);
}

void lightGreen() {
  digitalWrite(red, HIGH);
  digitalWrite(yellow, HIGH);
  delay(1000);
  digitalWrite(yellow, LOW);
  digitalWrite(red, LOW);
  digitalWrite(green, HIGH);
}

void pedLightGreen() {
  digitalWrite(pedGreen, HIGH);
  digitalWrite(pedRed, LOW);
}

void pedLightRed() {
  digitalWrite(pedGreen, LOW);
  digitalWrite(pedRed, HIGH);
}

void loop() {
  buttonState = digitalRead(button);
  
  if (buttonState == 0) {
  Serial.println("Knapp registrert");
  
  buttonAction(); 

}
}
