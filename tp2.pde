/*Tomas Estevez
comision 1
tp2*/
//https://youtu.be/NGXZDanZaNE

PImage arteoptico;
int cantidad;
int ancho;

void colorRgb(int r, int g, int b) {
  background(r, g, b);
}

void setup() {
  size(800, 400);
  arteoptico = loadImage("arteoptico.png");
  cantidad = 30;
  ancho = width;
  
  colorRgb(255, 0, 0);
  
 int minimo = 1;
  int maximo = 1000;
  int numeroAleatorio = generarUnNumeroAleatorio(minimo, maximo);
  println("El número aleatorio generado es: " + numeroAleatorio);
  
  
}

void draw() {
  background(255);
  image(arteoptico, 0, 0, 400, 400);
  
  for (int y = 0; y <= mouseX; y += 20) {
    for (int x = 405; x <= mouseX; x += 20) {
      float distancia = dist(x, y, mouseX, mouseY);
      
      if (distancia < 100) {
        float tonalidad = map(distancia, 0, 100, 0, 255);
        stroke(tonalidad);
        fill(0);
        ellipse(x, y, 15, 10);
      } else {
        fill(0);
        ellipse(x, y, 15, 10);
      }
    }
  }
   
    int transparencia = 100;  
    int difuminado = 75;    
  
  float centroX = 600;
  float centroY = 200;
  float radioX= 220;
  float radioY = 100;
  

  for (int c = difuminado; c > 0; c--) {
    float ovalo = map(c, 0, difuminado, 0, transparencia);
    stroke(ovalo);
    strokeWeight(c);
    ellipse(centroX, centroY, radioX, radioY);
  }
  
  fill(0);
  noStroke();
  ellipse(centroX, centroY, radioX, radioY);
  }
  int generarUnNumeroAleatorio(int minimo, int maximo) {
  int numeroAleatorio = (int) random(minimo, maximo+5);
  return numeroAleatorio;
}
