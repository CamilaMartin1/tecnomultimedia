/* Camila Irene Martín
   91552/0
   Comision 3 */
int estado = 0;
PImage sonic1; 
PImage sonic2;
PImage sonic3, sonic4, sonic5;
PFont font;
int posY;
int posX;
void setup() {
  size(600, 600);
 sonic1 = loadImage("sonic1.jpg");
 sonic2 = loadImage("sonic2.jpg");
 sonic3 = loadImage("sonic3.png");
 sonic4= loadImage("sonic4.png");
 sonic5=loadImage("sonic5.png");
font = createFont("mania.ttf",20);
textFont(font);
posY = 1;
}
void draw(){
posY = frameCount;
posX = frameCount;

//ESCENA 1
if (estado==0){
 image(sonic1,0,0,900,900);
 strokeWeight(3);
 fill(255,200);
 rect(95,650-posY,420,95,50,50,50,50);
 fill(0);
 textAlign(CENTER,CENTER);
 textSize(40);
 text("Aventura en la ciudad",width/2, 690-posY);
  posY ++;
}
if (posY == 500){
  estado = 1;
}

 //ESCENA 2
 if (estado== 1){
   frameRate(200);
  image(sonic2,0,0);
  fill(255);
 text("Malik Bentalha as Matt",-600+posX,100);
 text("Adam Pally as Billy", 2000-posX,300);
 text("Ben Schwartz as Dave", -2300+posX,500);
}
 if  ( posX==3200){
   estado = 2;
}


//ESCENA 3
if (estado == 2){ 
  frameRate(200);
 image(sonic3,0,0); 
 fill(255);
 text("Bill Hader as Mike",-3300+posX,100);
 text("Rebel Wilson as Amanda",4500-posX,300);
 text("Amy Adams as Hannah",  -4500+posX,500);
} 
if (posX == 5200){
  estado = 3;
}


//ESCENA 4
if (estado == 3){
 frameRate(150);
image(sonic4,0,0);
fill(255,200);
 rect(95,5400-posY,380,450
,50,50,50,50);
 fill(0);
 text("Music By",width/2, 5500-posY);
 text("Yuzo Koshiro\nKeiko Utoku\nSpencer Nilsen\nDavid Young",width/2, 5700-posY);
}
if (posY== 5900){
  estado = 4;
}



//ESCENA 5
if (estado == 4){
  image(sonic5,0,0);
  fill(255);
  textSize(30);
   text("Trevor Waterson\nRussell Allen\nChrista Munro\nMosako Masuda",450, 6600-posY);
   fill(150);
  text("Co-Producer\nProduction Supervisor\nArt Director\nDigital Set Designer",160, 6600-posY);
   fill(255,200);
 rect(95,7360-posY,420,95,50,50,50,50);
  fill(255,0,0);
  text( "Press ENTER to restart",width/2, 7400-posY);
 }  
}


void keyPressed(){
println ("enter" + estado);
  setup();
  if (estado == 4){
  estado = 0;
}
if (estado==0){
frameCount = 0;
}
}
void mousePressed(){
println (mouseX,mouseY);
}
