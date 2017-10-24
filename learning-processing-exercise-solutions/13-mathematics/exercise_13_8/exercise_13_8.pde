float ellipseSize = width;
float breathingAngle = 0;
float breathingIncrement = 0.01;

void setup () {
  size(200, 200);
}

void draw () {
  background(0);

  ellipseSize = map(sin(breathingAngle), 0, 1, 0, width);
  breathingAngle += breathingIncrement;

  noStroke();
  fill(255, 255, 0);
  ellipse(width/2, height/2, ellipseSize, ellipseSize);
}