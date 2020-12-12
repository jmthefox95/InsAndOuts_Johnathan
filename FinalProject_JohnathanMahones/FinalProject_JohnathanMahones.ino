const int LED1 = 4; // variable for which pin
const int LED2 = 5; // variable for which pin
const int buttonPin = 6;
const int potPin = A0;

int potVal = 0;
int buttonVal = 0;


void setup() {
  pinMode(LED1, OUTPUT); // set pin as output
  pinMode(LED2, OUTPUT); // set pin as output
  pinMode(potPin, INPUT);
  pinMode(buttonPin, INPUT);
  Serial.begin(9600); // Start serial communication at 9600 bps
}

void loop() {
  buttonVal = analogRead(potPin);
  delay(10);

  potVal = analogRead(potPin);
  potVal = map(potVal, 0, 1023, 2, 255);
  buttonVal = digitalRead(buttonPin);
  delay(100);
  
  
  Serial.println (potVal);
  Serial.println (buttonVal);
}
