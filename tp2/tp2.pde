int opacidad = 0;
int opacidadTexto = 0;
int escena = -1;
int tiempoInicio = 0;

PImage pantalla1, pantalla2, pantalla3, pantalla4;
PFont fuenteNueva;

String texto2 = "Mi Nombre es Yaz y mi juego a presentar es el siguiente, Bienvenido a Damas";
String texto3 = "El objetivo del juego: Captura todas las piezas de tu oponente";
String texto4 = "Puedes mover tu pieza en diagonal, Corona tus piezas para obtener ventaja, Buena suerte.";

float img = 460;
float fondo;
boolean moviendo = true;


float yTexto2 = -100;
float yTexto3 = -100;
float yTexto4 = -100;

void setup() {
  frameRate(60);
  size(640, 480);
  background(0);

  pantalla1 = loadImage("damas1.jpg");
  pantalla2 = loadImage("damas 2.jpeg");
  pantalla3 = loadImage("damas3.jpeg");
  pantalla4 = loadImage("damas4.jpg");

  pantalla1.resize(640, 480);
  pantalla2.resize(640, 480);
  pantalla3.resize(640, 480);
  pantalla4.resize(640, 480);

  fuenteNueva = createFont("Arial", 15);
  textFont(fuenteNueva);
  textAlign(CENTER, TOP);
}

void draw() {
  noTint();

  if (escena == -1) {
    background(0);
    tint(255, opacidad);
    image(pantalla1, 0, 0);
    noTint();

    fill(255, 182, 0);
    rect(275, 400, 90, 40);
    fill(255);
    textAlign(CENTER, CENTER);
    text("Iniciar", 320, 420);

    if (opacidad < 255) opacidad += 3;
  }

  else if (escena == 0) {
    background(0);
    image(pantalla2, img, 0);
    if (img > 0) img -= 3;

    fill(255);
    textFont(fuenteNueva);
    textAlign(CENTER, TOP);
    text(texto2, width / 2, yTexto2);

    
    if (yTexto2 < 40) yTexto2 += 2;
  }

  else if (escena == 1) {
    background(0);
    tint(255, opacidad);
    image(pantalla3, 0, 0);
    noTint();

    fill(0, 0, 120, opacidadTexto);
    textFont(fuenteNueva);
    textAlign(CENTER, TOP);
    text(texto3, width / 2, yTexto3);

    if (opacidad < 255) opacidad += 2;
    if (opacidadTexto < 255) opacidadTexto += 3;
    if (yTexto3 < 40) yTexto3 += 2;
  }

  else if (escena == 2) {
    background(255, 250, 0);
    image(pantalla4, 0, fondo);
    if (fondo > 0) fondo -= 6;

    fill(0, 0, 0, opacidadTexto);
    textFont(fuenteNueva);
    textAlign(CENTER, TOP);
    text(texto4, width / 2, yTexto4);
    if (opacidadTexto < 255) opacidadTexto += 3;
    if (yTexto4 < 40) yTexto4 += 2;

    fill(0);
    rect(440, 420, 160, 40);
    fill(255, 0, 0);
    textAlign(CENTER, CENTER);
    text("Reiniciar", 520, 440);
  }

  if (escena >= 0 && escena < 2) {
    int duracion = 400;
    if (escena == 0) duracion = 600;

    if (frameCount - tiempoInicio > duracion) {
      escena++;
      tiempoInicio = frameCount;
      resetearVariables();
    }
  }
}

void resetearVariables() {
  opacidad = 0;
  img = 460;
  fondo = height;
  moviendo = true;
  opacidadTexto = 0;


  yTexto2 = -100;
  yTexto3 = -100;
  yTexto4 = -100;
}

void mouseClicked() {
  if (escena == -1) {
    if (mouseX > 275 && mouseX < 365 && mouseY > 400 && mouseY < 440) {
      escena = 0;
      tiempoInicio = frameCount;
      resetearVariables();
    }
  }

  if (escena == 2) {
    if (mouseX > 440 && mouseX < 600 && mouseY > 420 && mouseY < 460) {
      escena = -1;
      tiempoInicio = frameCount;
      resetearVariables();
    }
  }
 }
