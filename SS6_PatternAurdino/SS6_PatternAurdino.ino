const int LED=13;
const int LED2=12;
const int LED3=11;
const int LED4=10;
const int buttonPin=2;

int buttonState=0;

void setup() {
  // put your setup code here, to run once:
  pinMode(LED, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(buttonPin, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  buttonState = digitalRead(buttonPin);
  delay(20);

  if (buttonState == HIGH) {
    digitalWrite(LED, HIGH);
    delay(10);
    digitalWrite(LED, LOW);
    delay(32);
    digitalWrite(LED2, HIGH);
    delay(5);
    digitalWrite(LED2, LOW);
    delay(59);
    digitalWrite(LED3, HIGH);
    delay(6);
    digitalWrite(LED3, LOW);
    delay(51);
    digitalWrite(LED4, HIGH);
    delay(45);
    digitalWrite(LED4, LOW);
    delay(245);
  } else {
    digitalWrite(LED, HIGH);
    delay(11);
    digitalWrite(LED, LOW);
    delay(79);
    digitalWrite(LED2, HIGH);
    delay(0);
    digitalWrite(LED2, LOW);
    delay(135);
    digitalWrite(LED3, HIGH);
    delay(10);
    digitalWrite(LED3, LOW);
    delay(100);
    digitalWrite(LED4, HIGH);
    delay(66);
    digitalWrite(LED4, LOW);
    delay(1);
  }
}
