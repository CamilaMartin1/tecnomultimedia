/*
Camila Irene Martín
 Comision 3
 Trabajo Practico 2
 9/6/2022
 https://youtu.be/ews4UIYvFUY
*/

int cant = 20;
int mov;
float tam;
void setup () {
  size (500, 500);
  noStroke();
  mov = width/cant;
}
void draw () {
  background (255);
  for (int x=0; x<cant; x++) {

    if (x%2==0) {
      fill(240, 128, random(128));
    } else {
      fill(random(218), 165, 32);
    }

    for (int y=0; y<cant; y++) {

      //movimiento con el mouse
      float distan = dist(mouseX, mouseY, x*mov+mov/2, y*mov+mov/2);

      //efecto de cerca y de lejos
      tam = map(distan, 0, dist(0, 0, width, height), 30, mov*2);
      rectMode(CORNER);
      rect(x*tam, y*tam, tam, tam);
    }
  }
}
