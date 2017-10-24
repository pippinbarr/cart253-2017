class Star {

  PShape shape;
  float x;
  float y;
  float speedX;
  float speedY;

  Star(float _x, float _y) {
    
    x = _x;
    y = _y;
    speedX = random(-5,5);
    speedY = random(-5,5);
    
    shape = createShape();
    shape.beginShape();
    shape.fill(102);
    shape.stroke(0);
    shape.strokeWeight(2);
    shape.vertex(0, -50);
    shape.vertex(14, -20);
    shape.vertex(47, -15);
    shape.vertex(23, 7);
    shape.vertex(29, 40);
    shape.vertex(0, 25);
    shape.vertex(-29, 40);
    shape.vertex(-23, 7);
    shape.vertex(-47, -15);
    shape.vertex(-14, -20);
    shape.endShape(CLOSE);
  }
  
  void move() {
    x += speedX;
    if (x > width) {
      x = x - width;
    }
    else if (x < 0) {
      x = x + width;
    }
    
    y += speedY;
    if (y > height) {
      y = y - height;
    }
    else if (y < 0) {
      y = y + height;
    }
  }

  void display() {
    pushMatrix();
    translate(x, y);
    shape(shape);
    popMatrix();
  }
}