//https://www.youtube.com/watch?v=Kv7fQL-WowU


PImage img;
int cantidad = 3;
float tamaño;
float tamañoCirculo;
boolean cambiar = false;

void setup() {
  size(800, 400);
  img = loadImage("F_50.jpeg");
  tamaño = 400.0 / cantidad;
  tamañoCirculo = tamaño;  
}

void draw() {
  background(255);


  image(img, 0, 0, 400, 400);


  for (int i = 0; i < cantidad; i++) {
    for (int j = 0; j < cantidad; j++) {
      float x = 400 + i * tamaño;
      float y = j * tamaño;


      if ((i + j) % 2 == 0) {
        fill(25, 25, 112);
      } else {
        fill(0);
      }
      rect(x, y, tamaño, tamaño);


      if (cambiar) {
        if ((i + j) % 2 == 0) {
          fill(25, 25, 112);
        } else {
          fill(0);
        }
      } else {
        if ((i + j) % 2 == 0) {
          fill(0);
        } else {
          fill(25, 25, 112);
        }
      }

      ellipse(x + tamaño / 2, y + tamaño / 2, tamañoCirculo, tamañoCirculo);
    }
  }


  fill(200);
  rect(650, 350, 120, 30);
  fill(0);
  textAlign(CENTER, CENTER);
  text("Reiniciar", 710, 365);

 
  mostrarTexto("Modo: " + (cambiar ? "Invertido" : "Normal"), 710, 20);
}


void mousePressed() {
  
  if (mouseX > 650 && mouseX < 770 && mouseY > 350 && mouseY < 380) {
    cambiar = false;
    cantidad = 3;
    tamaño = 400.0 / cantidad;
    tamañoCirculo = tamaño; 
  }

 
  else if (mouseX > 400) {
    cambiar = !cambiar;
    tamañoCirculo = generarTamañoAleatorio(); 
  }
}


void mostrarTexto(String mensaje, float x, float y) {
  fill(0);
  textAlign(CENTER);
  text(mensaje, x, y);
}


float generarTamañoAleatorio() {
  return random(30, tamaño); 
}
