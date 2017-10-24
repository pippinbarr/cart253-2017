float z = 0;
float x = 0;
float y = 0;

void setup() {
  size(200, 200, P3D);
}

void draw() {
  background(255);
  translate(100, 100, 0);
  drawPyramid(100);
}

void drawPyramid(int t) {
  
  // Uncomment these to rotate the pyramid
  // And yes I know it's not equilateral.
  // I'm sorry.
  //rotateX(x);
  //rotateY(y);
  //rotateZ(z);
  //x+=0.01;
  //y+=0.015;
  //z+=0.02;
  
  stroke(0);
  beginShape(TRIANGLES);

  fill(255, 0, 0);
  vertex(0,0,t);
  vertex(-t,-t,-t);
  vertex(t,-t,-t);

  fill(0, 255, 0);
  vertex(0,0,t);
  vertex(t,-t,-t);
  vertex(0,t,-t);

  fill(0, 0, 255);
  vertex(0,0,t);
  vertex(0,t,-t);
  vertex(-t,-t,-t);

  fill(0, 255, 255);
  vertex(-t,-t,-t);
  vertex(t,-t,-t);
  vertex(0,t,-t);

  endShape();
}