// Create a three-dimensional cube using eight quads — 
// beginShape(QUADS). (Note that a simpler way to make a 
// cube in Processing is with the box() function.)

// NOTE: Not quite sure why Schiffman says EIGHT quads when
// a cube has six sides...

float z = 0;
float x = 0;
float y = 0;

void setup() {
  size(200, 200, P3D);
}

void draw() {
  background(255);
  translate(100, 100, 0);
  drawCube(50);
}

void drawCube(int t) {

  stroke(0);

  // Uncomment these to rotate the cube
  //rotateX(x);
  //rotateY(y);
  //rotateZ(z);
  //x+=0.01;
  //y+=0.015;
  //z+=0.02;

  beginShape(QUADS);

  // Sides are going to be length 2t

  fill(255, 0, 0, 200);
  vertex(-t, -t, -t);
  vertex( t, -t, -t);
  vertex( t, t, -t);
  vertex(-t, t, -t);

  fill(0, 255, 0, 200);
  vertex(-t, -t, -t);
  vertex(t, -t, -t);
  vertex(t, -t, t);
  vertex(-t, -t, t);

  fill(0, 0, 255, 200);
  vertex(-t, -t, -t);
  vertex(-t, t, -t);
  vertex(-t, t, t);
  vertex(-t, -t, t);

  fill(255, 255, 0, 200);
  vertex(-t, t, -t);
  vertex( t, t, -t);
  vertex( t, t, t);
  vertex(-t, t, t);

  fill(255, 0, 255, 200);
  vertex( t, -t, -t);
  vertex( t, t, -t);
  vertex( t, t, t);
  vertex( t, -t, t);

  fill(0, 255, 255, 200);
  vertex(-t, -t, t);
  vertex( t, -t, t);
  vertex( t, t, t);
  vertex(-t, t, t);

  endShape();
}