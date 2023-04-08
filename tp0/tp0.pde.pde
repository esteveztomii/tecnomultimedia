// Estevez Tomas
// tp0 comisión 1

background(43,157,201);

fill(222,232,220);//color montañas blancas de atras.
strokeWeight(2);
triangle(600,50,400,300,800,300);
triangle(425,60,225,300,625,300);
triangle(650,60,450,300,850,300);
triangle(750,70,550,300,900,300);
triangle(500,90,350,300,700,300);

fill(39,119,167);
triangle(500,90,350,300,700,300);//montaña azul atras de la blanca.

fill(222,232,220);//color montañita blanca de adelante.
triangle(500,90,418,200,605,200);

fill(39,119,167);
triangle(770,125,600,300,900,300);
triangle(430,170,300,300,550,300);

noStroke();
fill(190,211,34);//color pasto.
rect(400,295,400,295);
fill(253,255,252);//color nubes.
ellipse(600,25,50,30);
ellipse(610,30,50,25);
ellipse(590,30,50,25);
ellipse(750,45,50,30);
ellipse(760,50,50,25);
ellipse(740,50,50,25);
ellipse(430,35,50,30);
ellipse(440,40,50,25);
ellipse(420,40,50,25);

PImage paisaje;
size(800,400);
paisaje = loadImage("paisaje.jpg"); 
image(paisaje,0,0,400,400);
paisaje.resize(400,400);
