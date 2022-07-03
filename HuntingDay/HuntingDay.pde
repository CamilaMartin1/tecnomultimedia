PImage [] personajes  = new PImage[7];
PImage arbol1, pasto1, nube1;
float x, y, w, h;
//PFont font;
int pantalla, cant, mov = 0;
int posX, posY;
PFont font;
void setup() {
  size(500, 500);
  background(255);
  x = 200;
  y = 300;
  w = 100;
  h = 50;
  posY =10;
  personajes [0] = loadImage("P1.png");
  personajes [1] = loadImage("P12.jpg");
  personajes [2] = loadImage("P2.png");
  personajes [3] = loadImage("P3.png");
  personajes [4] = loadImage("P32.jpg");
  personajes [5] = loadImage("PERRO.jpg");
  personajes [6] = loadImage("PERRO2.png");
  pasto1 = loadImage("pasto2.png");
  arbol1 =loadImage("arbol1.png");
  nube1=loadImage("nube1.png");

  font = createFont("m29.TTF", 20);
  textFont(font);
}

void draw() {

  //Pantalla de inicio
  background(0, 153, 153);
  fill(255);
  rect(x, y, w, h);
  fill(0);
  textSize(20);

  text("Play", 215, 335);
  fill(0);
  textSize(50);
  text("HUNTING\n   DAY", 100, 100);
  image(pasto1, -30, 430, 600, 100); 



  //Pantalla de instrucciones
  if (pantalla == 1) {
    posX ++;
    background(0);
    fill(255);
    textSize(30);
    text("Como Jugar", 100, 80);
    textSize(15);
    text("Dispara a los pajaros\n utilizando el mouse \npara sumar puntaje!", 120, 230, 20);
    fill(255);
    rect(0, 490, posX, 10);
  }
  //Pantalla de juego
  if (posX == 500) {
    pantalla = 2;
  }
  if (pantalla == 2) {
    mov+=5;
    background(0, 153, 153);
    image(personajes[cant], mov, posY, 100, 100);
    image(pasto1, -30, 430, 600, 100);
    image(arbol1, 0, 220, 300, 250);
  }
  if (mov >=510) {
    mov+=-mov;
    posY+=20;
    cant++;
    image(personajes[cant], mov, posY, 100, 100);
  }

  //Pantalla de Perder




  if (mousePressed) {
    if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
      pantalla = 1;
    }
  }
}
