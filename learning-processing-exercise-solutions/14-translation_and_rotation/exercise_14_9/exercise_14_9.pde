Pyramid[] pyramids;

void setup() {
  size(640, 480, P3D);
  pyramids = new Pyramid[100];
  for (int i = 0; i < pyramids.length; i++) {
    pyramids[i] = new Pyramid(random(50), random(width), random(height), random(100));
  }
}


void draw() {
  background(255);
  for (int i = 0; i < pyramids.length; i++) {
    pyramids[i].display();
  }
}