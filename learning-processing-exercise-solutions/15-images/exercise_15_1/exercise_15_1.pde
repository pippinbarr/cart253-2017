PImage img;

void setup() {
  size(480,480);
  img = loadImage("death_spiral.png");
}

void draw() {
  background(255);
  image(img,0,0,mouseX,mouseY);
}