float theta = 0; // Our angle of rotation

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  
  // Translate origin to center
  translate(width/2, height/2);

  // Increase theta so we can rotate
  theta += 0.05;
  
  // Rotate by the angle theta
  rotate(theta);
  
  // Draw our line
  line(-50,0,50,0);
  
  // Draw our ellipses on either end
  ellipse(-50,0,10,10);
  ellipse(50,0,10,10);
}