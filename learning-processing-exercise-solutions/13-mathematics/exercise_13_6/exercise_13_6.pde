// A polar coordinate
float r = 0; // Start r at 0 so we can go outward
float theta = 0;

void setup() {
  size(200, 200);
  background(255);
}

void draw() {
  float x = r * cos(theta);
  float y = r * sin(theta);

  noStroke();
  fill(0);
  ellipse(x + width/2, y + height/2, 16, 16); 
  
  // Increment the angle
  theta += 0.01;
  
  // Increase the radius so that we get an outward spiral
  r += 0.05;
}