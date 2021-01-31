#include <Servo.h>

Servo myServo;
int valor;


// the setup routine runs once when you press reset:
void setup() {
  Serial.begin(9600);
  myServo.attach(10);
}

// the loop routine runs over and over again forever:
void loop(){


  if(Serial.available()) //Detecta si hay alguna entrada por serial
   {
      valor = Serial.read();
      
      myServo.write(valor); //Mueve el servo a la posición entrada
   }
   
   delay(15);
}
