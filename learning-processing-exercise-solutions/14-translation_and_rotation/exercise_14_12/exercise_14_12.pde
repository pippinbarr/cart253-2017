Star[] stars;

void setup() {
  size(640, 480);
  stars = new Star[100];
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(random(width), random(height));
  }
}

void draw() {
  background(255);
  for (int i = 0; i < stars.length; i++) {
    stars[i].move();
    stars[i].display();
  }
}