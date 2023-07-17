//Tomas Estevez
//tp3
//comision1
//trabajo entregado a modo de poder acceder al recuperatorio, tengo problemas al querer hacer un arreglo para almacenar las imagenes, tengo problemas con el cambio de pantallas, me rindo.


int pantallas = 0; 
boolean final1, final2, final3; 

void setup() {
  size(600, 600);
  final1 = false;
  final2 = false;
  final3 = false;
}

void draw() {
  background(255);
  
  
  dibujarPantalla(pantallas);
  
  
  if (pantallas < 11) {
    if (pantallas == 0) {
      boton("Comenzar", 500, 500, 80, 40, 1);
    } else {
      boton("Siguiente", 500, 500, 80, 40, pantallas +1);
    }
  } else {
    boton("Final 1", 50, 500, 80, 40, 11);
    boton("Final 2", 250, 500, 80, 40, 12);
    boton("Final 3", 450, 500, 80, 40, 13);
  }
}

void dibujarPantalla(int textoEnPantalla) {
  String texto = obtenerNarrativa(textoEnPantalla);
  fill(0);
  textSize(16);
  textAlign(LEFT);
  text(texto, 20, 30, width-40, height-60);
}


String obtenerNarrativa(int pantalla) {
  String textoEnPantalla = "";
  switch (pantalla) {
    case 0:
    textoEnPantalla = "Ceci es una joven bruja, pertenece a una familia con el poder de 'viajar' magicamente y vivir en cualquier cosa";
      break;
    case 1:
      textoEnPantalla = "Una noche durante la cena, reunida con su familia les comenta que quiere enamorarse a lo que sus padres le advierten que si ella se casa perdera sus poderes";
      break;
    case 2:
      textoEnPantalla = "Una noche primaveral, en una granja cercana habia un chica sacando agua de un pozo\n Ceci se convierte en una gota de agua y se metio dentro de la muchacha por el mismo.\n -Ann te vas a enamorar-Le advierte";
      break;
    case 3:
      textoEnPantalla = "Un gran estruendo llego de la carretera, un hombre alto perdidamente enamorado de Ann.\n La invita al baile ";
      break;
      case 4:
      textoEnPantalla = "Una sala llena de ojos y luces como el arcoiris. Y en el centro, dando vueltas y mas vueltas, bailaba Ann Leary";
      break;
      case 5:
      textoEnPantalla  = "No eres la misma de siempre-dijo Tom\n No, no lo soy en absoluto-dijo la joven";
          break;
           case 6:
    textoEnPantalla  = "Tom debia marcharse, tenia un trabajo a cientos de kilometros.";
    break;
      case 7:
      textoEnPantalla =  "En la carreta Ann, hace prometer a Tom que ira a ver a su amiga y le entrega un papel\n con la direccion de la joven bruja.";
      break;
      case 8:
      textoEnPantalla= "Ann liberada huye a su casa, y cierra la puerta de un portazo";
    break;
    case 9:
    textoEnPantalla = "Cecy se entretuvo un poco más. Con los ojos de una rana estuvo sentada un momento junto a una charca, a solas";
     case 10:
      textoEnPantalla = "Ceci con los ojos de un ave nocturna va a ver a Tom";
    case 11:
      textoEnPantalla = "Final 1: Tom estaba dormido. Y en una mano silenciosa, apoyada sobre la blanca almohada, al lado de su cabeza, tenía un trocito de papel con algo escrito.\n Poco a poco, sus dedos se cerraron y apretó el papel con fuerza" ;
   break;
    case 12:
      textoEnPantalla = "Final 2: Tom estaba dormido. Pero se despierta de forma repentina, se asoma a la ventana y ve al ave, un escalofrio\n recorre su cuerpo como si supiera quien es. El ave vuela\n !Vuelve¡-Se escucha-pero el ave ya estaba muy lejos";
      break;
    case 13:
      textoEnPantalla = "Final 3: Tom estaba dormido. Pero no estaba solo, estaba con una hermosa joven. Ceci hierve de la ira realiza un hechizo y asesina a Tom";
      break;
  }
  return textoEnPantalla;
}

void boton(String texto, int x, int y, int ancho, int alto, int siguientePantalla) {
  if (mouseX > x && mouseX < x + ancho && mouseY > y && mouseY < y + alto) {
    fill(200);
    if (mousePressed) {
      pantallas= siguientePantalla;
      if (siguientePantalla == 11) final1 = true;
      if (siguientePantalla == 12) final2 = true;
      if (siguientePantalla == 13) final3 = true;
    }
  } else {
    fill(255);
  }
  rect(x, y, ancho, alto);
  fill(0);
  textAlign(CENTER, CENTER);
  text(texto, x + ancho / 2, y + alto / 2);
}
