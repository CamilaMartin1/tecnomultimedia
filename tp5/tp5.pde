/*Camila Irene Martín (con Dante Nuñez y Ramiro Juarez)
  91552/0
  Comision 3
  Trabajo Practico nº5
  24/11/2022
  Link de youtube: https://youtu.be/QzgQGhiJLoM
*/

//importar biblioteca
import ddf.minim.*;

Estados estados;

Minim minim;
AudioPlayer intro;
AudioPlayer ladrido;
AudioPlayer pierde;
AudioPlayer risa;

AudioSample disparo;

long tiempo;

void setup() {
  size(500, 500);
  estados = new Estados();
  
    minim = new Minim(this);
  intro = minim.loadFile("intro.mp3");
  ladrido = minim.loadFile ("ladrido.mp3");
  pierde = minim.loadFile ("lose.mp3");
  risa = minim.loadFile ("risaperro.mp3");
  
  disparo = minim.loadSample ("disparo.mp3", 512);
  
}

void draw() {
  
  estados.estados();
  
}
