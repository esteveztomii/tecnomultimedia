//Tomas Estevez
//Comision 1
//https://youtu.be/KhLij9rSPlc (ver en youtube)



PImage arteoptico;
int cant =50;
float opacidad;
String estado = "inicio";
float generarValorRandom =50;

void setup() {
  size(800, 400);
   arteoptico = loadImage("arteoptico.png");
}

void draw() {
  background(255);

for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++){
    if (estado=="e1")
    fill(random(255)); 
    ellipse(x*cant/2,y*cant/2,15,10);
 
}

float distan = dist( mouseX, 0, width,0);  
   float tono = distan*255/dist(width,height,0,0);
    fill(0,tono);
        
   }
    image(arteoptico, 0, 0, 400, 400);
    
 float valorAleatorio = generarValorRandom(50); // Llamamos a la función para obtener un valor aleatorio
  circu(200, 150, valorAleatorio); // Usamos el valor aleatorio en el tamaño de circu

  
}  void keyPressed() { 
 if(key == 'z')
   estado="e1";   
 if(key == 'x')
  estado= "inicio";

}

/*La función indica ubicación X, ubicación Y, el tamaño máximo, cuanto rota y cuantas repeticiones
de la figura rect() se dibujan */
 
   void circu(float ancho, float rotar, float cantidad) { // la función 
  for (int i=0; i<cantidad; i++) {
    push();
    translate(1200, 70);
    rotate(radians(rotar));
     
    float tam = map(i, 0, cantidad, ancho, 20);
    float opacidad = map(i, 0, cantidad, 0, 0);
    stroke( 0, opacidad);
    strokeWeight(1);
    circle(600, 200,tam);

    pop();
  }
  }

  float generarValorRandom(float maximo) {
  float valorAleatorio = random(0,maximo);
  return valorAleatorio;
}
