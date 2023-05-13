//Tomas Estevez Alejo
//tp1 Comision1

int segundos;
int conteo;
int sumaconteo;
int miVariable;
int botonX= 280;
int botonY= 420;
int botonAncho= 80;
int botonAlto= 30;
int pos, tama;

PFont font;
PImage imagen;
PImage imagen2;
PImage imagen3;

float variable = 0;
float vel = 1;
float rojo, verde, azul;

void setup(){
  size(640,480);
  segundos= 0;
  miVariable = 300;
  conteo= 0;
  sumaconteo= 1; 
  
  
  background(255);
  textAlign(CENTER);
  textSize(20);
  font=loadFont("forsaking.vlw");
  textFont(font);
  imagen=loadImage ("lanin.jpg");
  imagen2=loadImage("clima.jpg");
  imagen3=loadImage("fauna.jpg");

}

void draw(){
  conteo=conteo+sumaconteo; 
  
  if(conteo%60==0){
    segundos++;
  }
  if (segundos<=3){
    fill(0,255,255);
     miVariable = conteo/1;

    background(0);
    image(imagen,0,0,640,480);
    
  if (frameCount%60==0) {
    rojo = random(0,255);
    verde = random(0,255);
    azul = random(0,255);
    
  }
  fill(rojo, verde, azul);
  textSize(32);
  text("Parque Nacional Lanín", width/2, variable);
  textSize(18);
   text("Provincia: Neuquén\n Ecorregión: Bosques Patagónicos, con sectores de\n Estepa Patagónica y Altos Andes\n Superficie: 412.000 ha\n Creación: 1937 ", width/2, 350);
  if (variable<height) {
    variable = variable+1 * vel;
  }
    
   miVariable = conteo;
   
  }
  else if (segundos >3 && segundos <9) {
     miVariable = conteo;
    
    fill(3,0,0);
    image(imagen2,0,0,640,480);
    fill(250);
    textSize(25);
    text("Clima: \n Clima Templado húmedo. Las \n temperaturas medias van desde los 4°C\n en invierno a los 20°C en verano. Las\n precipitaciones promedian los\n 1.800 mm anuales.",miVariable,tama);
     if (tama<height/2) {
      tama++;
     }
  }
   else{
     miVariable=conteo/4;
      image(imagen3,0,0,640,480);
      textSize(25);
      fill(250);
    text("La fauna del área protegida abarca\n 233 especies de vertebrados nativos. Pumas, \nzorros y un marsupial, el monito de monte,\n se encuentran entre los mamíferos; mientras\n que el churrín grande, el cóndor, el \n aguilucho cola rojiza y el fío\n fío silbón son representantes entre las aves.", 320,miVariable);
   fill (0);
   text("La fauna del área protegida abarca\n 233 especies de vertebrados nativos. Pumas, \nzorros y un marsupial, el monito de monte,\n se encuentran entre los mamíferos; mientras\n que el churrín grande, el cóndor, el \n aguilucho cola rojiza y el fío\n fío silbón son representantes entre las aves.", 316,miVariable);
   
   fill(0);
    rect(botonX, botonY, botonAncho, botonAlto);
    fill(255);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("reiniciar", botonX + botonAncho/2, botonY + botonAlto/2);
    }

}
    
    void mousePressed() {
  segundos = 0;
  conteo= 0;
  sumaconteo= 1;
   miVariable = 300; 
   
  
  if (segundos== 3) {
  }

  if (segundos == 3 && mouseX >= botonX && mouseX <= botonX + botonAncho && mouseY >= botonY && mouseY <= botonY + botonAlto) {
  }
  
  
}
     
