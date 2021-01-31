int led = 9;           // the PWM pin the LED is attached to
int valor;

// the setup routine runs once when you press reset:
void setup() {
  // declare pin 9 to be an output:
  pinMode(led, OUTPUT);
  Serial.begin(9600);
}

// the loop routine runs over and over again forever:
void loop() {

  while (Serial.available()){
    valor = Serial.read();
    analogWrite(led, valor);
    }
  
}
