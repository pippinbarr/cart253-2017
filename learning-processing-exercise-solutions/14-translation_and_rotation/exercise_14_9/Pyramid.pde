class Pyramid {

  float t;
  float x;
  float y; 
  float z;
  float thetaX = 0;
  float thetaY = 0;
  float thetaZ = 0;
  float thetaXIncrement;
  float thetaYIncrement;
  float thetaZIncrement;

  Pyramid(float _t, float _x, float _y, float _z) {
    t = _t;
    x = _x;
    y = _y;
    z = _z;
    thetaXIncrement = random(0.1);
    thetaYIncrement = random(0.1);
    thetaZIncrement = random(0.1);
  }

  void display () {
    stroke(0);
    
    pushMatrix();
    translate(x,y,z);
    rotateX(thetaX);
    rotateY(thetaY);
    rotateZ(thetaZ);
    
    beginShape(TRIANGLES);
    fill(255, 150);
    vertex(-t, -t, -t);
    vertex( t, -t, -t);
    vertex( 0, 0, t);
    fill(150, 150);
    vertex(t, -t, -t);
    vertex(t, t, -t);
    vertex(0, 0, t);
    fill(255, 150);
    vertex( t, t, -t);
    vertex(-t, t, -t);
    vertex( 0, 0, t);
    fill(150, 150);
    vertex(-t, t, -t);
    vertex(-t, -t, -t);
    vertex( 0, 0, t);
    endShape();
    
    popMatrix();
    
    thetaX += thetaXIncrement;
    thetaY += thetaYIncrement;
    thetaZ += thetaZIncrement;
  }
}