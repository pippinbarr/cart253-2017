PImage landscape1;
PImage landscape2;
PImage landscape3;
PImage landscape4;
PImage landscape5;
PImage landscape6;

void setup() {
 size(480,480);
 
 landscape1 = loadImage("landscape1.jpg");
 landscape2 = loadImage("landscape2.jpg");
 landscape3 = loadImage("landscape3.jpg");
 landscape4 = loadImage("landscape4.jpg");
 landscape5 = loadImage("landscape5.jpg");
 landscape6 = loadImage("landscape6.jpg");
}

void draw() {
  background(255);
  
  tint(255,map(mouseX,0,width,0,127));
  image(landscape1,0,0);
  
  tint(255,map(mouseY,0,height,0,127));
  image(landscape2,0,0);
  
  tint(255,map(mouseX,0,width,127,0));
  image(landscape3,0,0);
  
  tint(255,map(mouseY,0,height,127,0));
  image(landscape4,0,0);
  
  tint(255,map(mouseX+mouseY,0,width+height,127,0));
  image(landscape5,0,0);
  
  tint(255,map(mouseX-mouseY,-height,width,127,0));
  image(landscape6,0,0);
}