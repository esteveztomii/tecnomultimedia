void mousePressed () {
if (pantallas==0 && botones(215, 300, 150, 80)){ //inicio a la 1
  pantallas=1;
}
if (pantallas==0 && botones(215, 450, 150, 80)){ //creditos
  pantallas=14;
}
else if (pantallas==1 && botones(420, 450, 150, 80)){ //de la 1 a la 2
  pantallas=2;
}
else if (pantallas==2 && botones(420, 450, 150, 80)){ //de la 1 a la 8
  pantallas=3;
}
else if (pantallas==2 && botones(50, 450, 150, 80)){ // de la 8 a la 9
  pantallas=4;
}
else if (pantallas==3 && botones(420, 450, 150, 80)){ // de la 8 a la 9
  pantallas=5;
}
else if (pantallas==4 && botones(420, 450, 150, 80)){ //de la 2 a la 3
  pantallas=5;
}
else if (pantallas==5 && botones(420, 450, 150, 80)){ //de la 2 a la 3
  pantallas=6;
}
else if (pantallas==6 && botones(420, 450, 150, 80)){ //de la 3 a la 4
  pantallas=7;
}
else if (pantallas==7 && botones(420, 450, 150, 80)){ //de la 4 a la 6
  pantallas=8;
}
else if (pantallas==8 && botones(420, 450, 150, 80)){ // de la 4 a la 5
  pantallas=9;
}
else if (pantallas==9 && botones(420, 450, 150, 80)){ // de la 5 a la 7
  pantallas=10;
}
else if (pantallas==9 && botones(50, 450, 150, 80)){ // de la 5 a la 4
  pantallas=11;
}
else if (pantallas==10 && botones(420, 450, 150, 80)){ // de la 6 a la 7
  pantallas=12;
}
else if (pantallas==10 && botones(50, 450, 150, 80)){ // de la 6 a la 4
  pantallas=13;
}
else if (pantallas==13 && botones(420, 450, 150, 80)){ // de la 9a la 11
  pantallas=14;
}
else if (pantallas==12 && botones(420, 450, 150, 80)){ // de la 11 a la 12
  pantallas=14;
}
else if (pantallas==14 && botones(420, 450, 150, 80)){ // de la 11 a la 12
  pantallas=0;
}
else if (pantallas==11 && botones(420, 450, 150, 80)){ // de la 11 a la 12
  pantallas=14;
}
}
