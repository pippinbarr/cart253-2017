void setup() {
  size(400, 200);
}

void draw() {
  background(255);
  stroke(0);
  branch(width/2, height, 100);
  noLoop();
}

void branch(float x, float y, float h) {
  line(x, y, x - h, y - h);
  line(x, y, x + h, y - h);

  if (h >= 1) {
    branch(x - h, y - h, h/2);
    branch(x + h, y - h, h/2);
  }
}