//Tomas Estevez
//tp4
//Comision 1



let estado = "inicio"; //almacenamiento de estados
let botonA = 250;
let botonB = 400;
let botonC = 550;
let botonY = 300;//botones
let cantFilas = 3;
let cantInvasores = 12;
let espacioEntreInvasores = 60;
let espacioEntreFilas = 60;// variables propias de invasores 
let basePosXFila = 60;
let posXFila = basePosXFila;
let posXNave = 100;
let posYNave = 350;
let nan = 50;
let nalt = 20;//variables de la nave
let bax, bay, batam;
let disparada = false;
let cargador = 50;
let aliens = [];
let alienBalas = [];
let naveBalas = [];

function setup() {
  createCanvas(800, 400);
  bax = posXNave;
  bay = posYNave;
  batam = nalt;

  for (let i = 0; i < cantFilas; i++) {
    aliens[i] = [];
    alienBalas[i] = [];
    for (let j = 0; j < cantInvasores; j++) {
      aliens[i][j] = true;
      alienBalas[i][j] = {
        x: posXFila + j * espacioEntreInvasores,
        y: 60 + espacioEntreFilas * i,
        
      }
    }
  }
}

function tocar(x, y) {
  let ok = false;
  if (dist(x, y, mouseX, mouseY) < 40) {
    ok = true;
  }
  return ok;
}

function jugar() {
  background(16,27,134);
  dibujarNave();
  moverBalaNave(); 
  dibujarAliens();
  moverBalasAlien();
  
  for (let i = 0; i < cantFilas; i++) {
    for (let j = 0; j < cantInvasores; j++) {
      if (aliens[i][j]) {
        dibujarInvasor(posXFila + j * espacioEntreInvasores, 60 + espacioEntreFilas * i);
      }
      // Dispara balas de aliens
      if (!alienBalas[i][j].activa && random(1) < 0.001) {
        alienBalas[i][j].activa = true;
      }
      if (alienBalas[i][j].activa) {
        dibujarBalaAlien(alienBalas[i][j].x, alienBalas[i][j].y);
        alienBalas[i][j].y += 3; // Velocidad de las balas de aliens
      
             if (impacto(alienBalas[i][j].x, alienBalas[i][j].y, posXNave, posYNave, nan, nalt)) {
          estado = "inicio"; // El jugador pierde
        }
      }
    }
  }
  
  proyectil(bax, bay, batam); // Dibuja la bala
  if (disparada && bay > 0) {
    bay -= 8; 
  } else {
    bax = posXNave; // Resetea la bala a la posición del cañón
    bay = posYNave;
    disparada = false;
  }

  // Verifica si la bala impacta en un alien y los elimina
  for (let i = 0; i < cantFilas; i++) {
    for (let j = 0; j < cantInvasores; j++) {
      if (aliens[i][j] && impacto(bax, bay, posXFila + j * espacioEntreInvasores, 60 + espacioEntreFilas * i, 30, 30)) {
        disparada = false;
        aliens[i][j] = false; 
      }
    }
  }

  if (cargador <= 0) {
    cargador = 0;
  }
  if (keyIsPressed === true && keyCode === 32 && cargador > 0 && !disparada) {
    disparada = true;
    cargador--;
  }
}

function dibujarBalaAlien(x, y) {
  fill(255, 0, 0);
  ellipse(x, y, 5, 15);
}

function dibujarInvasor(posX, posY) {
  fill(0, 255, 0);
  noStroke();
  ellipse(posX, posY, 30, 30);
}

function dibujarNave() {
  fill(250);
  rect(posXNave, posYNave, nan, nalt);
  if (keyIsPressed) {
    moverNave();
    if (keyIsDown(32) && !disparada) { 
      dispararNave(); // llama a la función para que dispare
    }
  }
}

function dibujarAliens() {
  for (let i = 0; i < cantFilas; i++) {
    for (let j = 0; j < cantInvasores; j++) {
      if (aliens[i][j]) {
        dibujarInvasor(posXFila + j * espacioEntreInvasores, 60 + espacioEntreFilas * i);
      }
    }
  }
}

function moverBalasAlien() {
  for (let i = 0; i < cantFilas; i++) {
    for (let j = 0; j < cantInvasores; j++) {
      if (alienBalas[i][j].activa) {
        dibujarBalaAlien(alienBalas[i][j].x, alienBalas[i][j].y);
        alienBalas[i][j].y +=1; // Velocidad de las balas de aliens
        // Verifica si la bala del alien impacta en el jugador
        if (impacto(alienBalas[i][j].x, alienBalas[i][j].y, posXNave, posYNave, nan, nalt)) {
          estado = "inicio"; 
        }
      }
    }
  }
}

function moverBalaNave() {
   if (disparada && bay > 0) {
    bay -= 8; // Mueve la bala hacia arriba
  } else {
    bax = posXNave + nan / 2; // Resetea la bala
    bay = posYNave;
    disparada = false;
  }
}

function proyectil(x, y, diam) {
  fill(255, 140, 20);
  circle(x, y, diam);
}

function impacto(x, y, px, py, ancho, alto) {
  if (x > px && x < px + ancho && y > py && y < py + alto) {
    return true;
  } else {
    return false;
  }
}

function moverNave() {
  if (keyIsDown(LEFT_ARROW)) {
    if (posXNave > 0) {
      posXNave--;
    }
  }
  if (keyIsDown(RIGHT_ARROW)) {
    if (posXNave < 760) {
      posXNave++;
    }
  }
}

function dispararNave() {
    if (!disparada) { // Verifica si la bala ya esta disparada
    bax = posXNave + nan/2; // Establece la posición de la bala en la mitad de la nave
    bay = posYNave; // pone la bala arriba
    disparada = true; // Marca la bala disparada
  }
}

function draw() {
  if (estado == "inicio") {
    background(16,27,134);
    
    // Botón Jugar
    fill(32, 211, 229); // Color diferente
    ellipse(botonA, botonY, 120, 60);
    textSize(15);
    fill(0);
    text("Jugar", botonA - 20, botonY + 10);

    // Botón Créditos
    fill(32, 211, 229); // Color diferente
    ellipse(botonB, botonY, 120, 60);
    textSize(15);
    fill(0);
    text("Creditos", botonB - 30, botonY + 10);

    // Botón Reglas
    fill(32, 211, 229); 
    ellipse(botonC, botonY, 120, 60);
    textSize(15);
    fill(0);
    text("Instrucciones", botonC - 32, botonY + 10);

    fill(32, 229, 135); // Color diferente
    textSize(100);
    text("Space Invaders", 50, height / 2);
  } if (estado == "jugar") {
    jugar();
    
   } else
    if(estado == "creditos" ){
      background(16,27,134);
      textSize(20);
      fill(255,255,255);
      text('Juego inspirado en el Space Invaders, shooting japonés lanzado en 1978 por Taito. Hecho por Tomas Estevez',10,20,600);
      textSize (20);
      text ("presionar para volver a inicio", 250,350);
    }else 
    if(estado == "instrucciones" ){
      background(16,27,134);
      textSize(20);
      fill(255.255,255);
      text("Instrucciones:",10,20);
      text("Deberas moverte con las fechas <=/=> para lograr mover las nave y disparar a los aliens presionando la tecla espaciadora. ",10,30,600);
      textSize (20);
       text ("presionar para volver a inicio", 250,350);
    }

}

function mousePressed() {
  if (estado == "inicio") {
    if (tocar(botonA, botonY)) {
      estado = "jugar";
    } else if (tocar(botonB, botonY)) {
      estado = "creditos";
    } else if (tocar(botonC, botonY)) {
      estado = "instrucciones";
  }
  } else if (estado == "juego") {
    // Lógica del juego
  } else if (estado == "fin") {
    estado = "inicio"; 
  } else if (estado == "creditos") {
    estado = "inicio"; 
  } else if  (estado == "instrucciones"){
  estado= "inicio";
  } else if (estado == "inicio") {
    if (tocar(botonC, botonY)) {
      estado = "jugar";

}
  }
}
