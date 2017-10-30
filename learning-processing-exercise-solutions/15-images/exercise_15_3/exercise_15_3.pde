PImage landscape;

void setup() {
  size(480,480);
  landscape = loadImage("landscape.jpg");
}

void draw() {
  float r = map(mouseX,0,width,0,255);
  float g = map(mouseY,0,height,0,255);
  float distanceToCenter = dist(mouseX,mouseY,width/2,height/2);
  float b = map(distanceToCenter,0,width/2,0,255);
  tint(r,g,b);
  image(landscape,0,0);
}