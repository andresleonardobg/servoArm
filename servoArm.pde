import processing.serial.*;
Serial myPort;

potenciometro p;
potenciometro p2;
potenciometro p3;

void setup(){
  //Tamaño de la ventana
  size(500, 500);

  //Serial
  String portName = Serial.list()[0];
  println(Serial.list());
  myPort = new Serial(this, "COM3", 9600);

  //Objetos
  p = new potenciometro(20);
  p2 = new potenciometro(100);
  p3 = new potenciometro(200);
}

void draw(){
  //Color de fondo
  background(255);
  
  p.slider();
  p2.slider();
  p3.slider();

  float m = map(p.posX, 10, 470, 0, 255);
  int m2 = int(m);
  textSize(20);
  text(m2, 200, 300);
  myPort.write(m2);
}

void mousePressed() {
  p.mousePressed();
  p2.mousePressed();
  p3.mousePressed();
}
void mouseReleased() {
    p.mouseReleased();
    p2.mouseReleased();
    p3.mouseReleased();
}

void mouseDragged() {
  p.mouseDragged();
  p2.mouseDragged();
  p3.mouseDragged();
}


