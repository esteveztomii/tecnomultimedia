PImage arteoptico;


void setup(){
  size(800,400);
  arteoptico =loadImage("arteoptico.png");
  
  
}

void draw(){
   background(255);
    image(arteoptico,0,0,400,400);
   for (int y=0; y<=height; y+=25)
   for (int x=405; x<=width; x+=25)
   {
     fill(0);
     ellipse(x,y,15,10);
   }
   ellipse(600,200,300,200);
  
  
}
  
  
  
