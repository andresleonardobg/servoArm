class potenciometro{
  boolean overBox = false;
  boolean locked = false;
  int posX = 20;
  int posY;
  int sizeX = 20;
  int sizeY = 50;
  int colorRect = 120;
  boolean canMove = false;

  potenciometro(int pos){
    posY = pos;
  }

  void slider(){
    float val = map(posX, 10, 470, 0, 100);
    int val2 = int(val);
    String str = str(val2);
    
    textSize(20);
    text(str, posX, posY + 70);

    //Condicional para detectar rectangulo creado
    if ((mouseX > posX) && (mouseX < posX + sizeX) && (mouseY > posY) && (mouseY < posY + sizeY)){
        overBox = true;
    }
    else{
        overBox = false;
    }

    //Barra guia
    fill(0);
    rect(10, posY + 20, 480, 10);

    fill(colorRect);
    rect(posX, posY, sizeX, sizeY, 10);

    }

    public void mousePressed() {
        if(overBox){
            locked = true;
            colorRect = 74;
        }else{
            locked = false;
        }
    }

    public void mouseReleased() {
        locked = false;
        colorRect = 120;
    }

    public void mouseDragged() {
        if((mouseX < 10) || (mouseX > 490 - sizeX)){
            canMove = false;
        }else{
            canMove = true;
    }

        if(locked && canMove){
            posX = mouseX;
        }
    }
}