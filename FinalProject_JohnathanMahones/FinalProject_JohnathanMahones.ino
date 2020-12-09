const int LED1 = 3; // variable for which pin
const int LED2 = 4; // variable for which pin
const int LED3 = 8;
const int potPin = A0;
int reading = 0;

void setup() {
  pinMode(LED1, OUTPUT); // set pin as output
  pinMode(LED2, OUTPUT); // set pin as output
  pinMode(LED3, OUTPUT);
  Serial.begin(9600); // Start serial communication at 9600 bps
}

void loop() {
  reading = analogRead(potPin);        
  analogWrite (LED1, reading/4);
  analogWrite (LED2, reading/4);
  analogWrite (LED3, reading/4);
  //Serial.println (reading/4);
}
