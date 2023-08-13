//Tomas Estevez
//Comision 1
//https://youtu.be/VMzw2I9XAmw

int pantallas=0;
int cant = 14;
PFont fuenteNueva;

PImage [] imagen = new PImage [cant];

void setup () {
  size (600, 600);
  fuenteNueva= createFont("Arial Black",25);
  for (int i=0; i<cant; i++) {
  imagen [i] = loadImage("imagen"+i+".jpg");
  imagen [i].resize(600,600);
 
  }
}

void draw() {

  background(0);
textFont(fuenteNueva);
  
  if (pantallas==0) {
    image (imagen[0], 0,0,600,600);
    boton(215, 300, 150, 80, "Inicio");
    boton (215, 450, 150, 80, "Créditos");
  }

  if (pantallas==1) {                                                               
    image (imagen[1], 0, 0, 600, 600);
    fill(100, 86, 92, 150);                           
    rect(50, 30, 500, 150);                           
    fill(103,9,50);                                         
    text (texto[0], 60, 40, 480, 500);                 
    boton(420, 450, 150, 80, "Siguiente");                   
                 
  }

  if (pantallas==2) {                                                             
    image (imagen[2], 0, 0, 600, 600);
    fill(100, 86, 92, 150);                          
    rect(50, 30, 500, 150);                            
    fill(103,9,50);                                       
    text (texto[1], 60, 40, 480, 500);               
    boton(420, 450, 150, 80, "Opción A");         
    boton(50, 450, 150, 80, "Opción B");
  } 
  
  else if (pantallas==3) {                                                          
   image (imagen[3], 0, 0, 600, 600);
    fill(100, 86, 92, 150);                          
    rect(50, 30, 490, 290);                            
    fill(103,9,50);                                           
    text (texto[2], 60, 40, 480, 500);                
    boton(420, 450, 150, 80, "Siguiente");       
                 
  }

  if (pantallas==4) {                                                             
    image (imagen[4], 0, 0, 600, 600);
    fill(100, 86, 92, 150);                          
    rect(50, 30, 490, 150);                            
    fill(103,9,50);                 
    text (texto[3], 60, 40, 480, 450);
    boton(420, 450, 150, 80, "Siguiente");
   
  }
  if (pantallas==5) {                                      
    image (imagen[5], 0, 0, 600, 600);
    fill(100, 86, 92, 150);                          
    rect(50, 30, 490, 200);                            
    fill(103,9,50);                 
    text (texto[4], 60, 40, 480, 450);
    boton(420, 450, 150, 80, "Siguiente");
  }

  if (pantallas==6) {                                  
    image (imagen[6], 0, 0, 600, 600);
    fill(100, 86, 92, 150);                           
    rect(50, 30, 490, 150);                           
    fill(103,9,50);                 
    text (texto[5], 60, 40, 480, 450);
    boton(420, 450, 150, 80, "Siguiente");
    
  }

  if (pantallas==7) {                                 
   image (imagen[7], 0, 0, 600, 600);
    fill(100, 86, 92, 150);                           
    rect(50, 30, 490, 100);                           
    fill(103,9,50);                 
    text (texto[6], 60, 40, 480, 450);
    boton(420, 450, 150, 80, "Siguiente");
  }

  if (pantallas==8) {                                    
    image (imagen[8], 0, 0, 600, 600);
    fill(100, 86, 92, 150);                           
    rect(50, 30, 490, 100);                           
    fill(103,9,50);                 
    text (texto[7], 60, 40, 480, 450);
    boton(420, 450, 150, 80, "Siguiente");
   
  }

  if (pantallas==9) {                                
    image (imagen[9], 0, 0, 600, 600);
    fill(103,9,50);                 
    text (texto[8], 70, 150, 480, 300);
    boton(420, 450, 150, 80, "Opción A");
    boton(50, 450, 150, 80, "Opción B");
  }

  if (pantallas==10) {                                
    image (imagen[10], 0, 0, 600, 600);
    fill(100, 86, 92, 150);                      
    rect(50, 140, 490, 100);                            
    fill(103,9,50);                 
    text (texto[9], 60, 150, 480, 450);
    boton(420, 450, 150, 80, "Opción A");
    boton(50, 450, 150, 80, "Opción B");
  }

  if (pantallas==11) {                           
    image (imagen[11], 0, 0, 600, 600);
    fill(100, 86, 92, 150);                           
    rect(50, 30, 490, 200);                            
    fill(103,9,50);                 
    text (texto[10], 60, 40, 480, 450);
    boton(420, 450, 150, 80, "Fin");
    
  }

  if (pantallas==12) {                            
    image (imagen[12], 0, 0, 600, 600);
    fill(100, 86, 92, 150);                           
    rect(50, 30, 490, 150);                            
    fill(103,9,50);                 
    text (texto[11], 60, 40, 480, 450);
    boton(420, 450, 150, 80, "Fin");
  }

  if (pantallas==13) {                            
    image (imagen[13], 0, 0, 600, 600);
    fill(100, 86, 92, 150);                           
    rect(50, 30, 490, 180);                            
    fill(103,9,50);                 
    text (texto[12], 60, 40, 480, 450);
    boton(420, 450, 150, 80, "Fin");
  }
  
  else if (pantallas==14) {
    fill (255);
    textSize(25);
    fill(103,9,50);
    text ( "Programado por: Tomas Estevez\n Autor: Ray Bradbury   ", width/6, height/4);
    boton(420, 450, 150, 80, "Inicio");
  }
  }
  boolean botones (int x, int y, int ancho, int alto){
  if ( mouseX> x && mouseX<x+ancho && mouseY> y && mouseY<y+alto) {
    return true;
  } else {
    return false;
  }
}

void boton (int x, int y, int ancho, int alto, String texto){ 
  textSize (20);
  fill (229,44,103, 150);
  rect(x, y, ancho, alto, 10);
  fill(255);
  strokeWeight(5);
  text (texto, x+25, y+20, ancho, alto);
}

String [ ] texto = {"Ceci es una bruja con el poder de viajar magicamente a cualquier cosa",
"Una noche reunida con su familia les comenta que desea enamorarse",
"Sus padres le advierten que si ella se enamora el aquelarre la buscara y la mataran debido a que todas perderian sus poderes a causa de ella",
"Sus padres le advierten que si ella se enamora perdera sus poderes",
"Una noche en una granja cercana habia una hermosa joven llamada Ann, la bruja se mete dentro de ella a traves del agua",
"En una carreta un atractivo hombre alto llamado Tom la invita al baile",
"En una sala llena de luces bailaba enamorada la joven",
"Tom debia marcharse, tenia un trabajo a cientos de kilometros",
"En la carreta camino a casa, Ann hace prometer a Tom que ira a ver a su amiga Ceci y le entrega un papel con la direccion de la bruja",
"Un estruendo se eschucha! El aquelarre aparece",
"Ann y Ceci finalmente se separan, el hechizo no duraria mucho más tiempo.Ceci con los ojos en un ave va a ver tiempo despues a Tom.",
"Las brujas asesinan a Tom y a la joven bruja llevandose a Ann con ella",
"Ann y Tom se dan un beso, probando su verdadero amor, provocando que el aquelarre completo pierda sus poderes"};
