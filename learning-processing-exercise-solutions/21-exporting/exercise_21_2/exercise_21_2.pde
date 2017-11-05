import processing.pdf.*;

float px;
float py;

void setup() {
  size(480, 480);
  px = width/2;
  py = height/2;

  beginRecord(PDF, "exercise_21_2.pdf");
}

void draw() {
  strokeWeight(10);
  stroke(random(100));
  float x = random(width);
  float y = random(height);
  line(px,py,x,y);
  px = x;
  py = y;
}

void mousePressed() {
  endRecord();
}