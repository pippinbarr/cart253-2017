float thetaX = 0;
float thetaY = 0;
float thetaZ = 0;

void setup() {
  size(200, 200, P3D);
}

void draw () {
  background(0);

  translate(height/2, width/2, 0);

  thetaX += 0.01;
  thetaY += 0.02;
  thetaZ += 0.03;

  rotateX(thetaX);
  rotateY(thetaY);
  rotateZ(thetaZ);
  
  // Uncomment this line to rotate around a corner instead
  // of the center of the cube
  // translate(-25,-25,-25);

  // I'm just going to use the box() function
  // It draws a cube with sides of the length specified as an argument
  // at the current origin point (the centre of the cube is at the origin)
  box(50);
  

}