// An array of 8 planet objects
Planet[] planets = new Planet[8];

void setup() {
  size(200, 200, P3D);
  // The planet objects are initialized using the 
  // counter variable
  for (int i = 0; i < planets.length; i++) {
    planets[i] = new Planet(20 + i*10, i/2 + 4);
  }
}

void draw() {
  background(255);
  
  // Drawing the Sun
  pushMatrix();
  translate(width/2, height/2);
  stroke(50);
  fill(127);
  sphere(10);
  // Drawing all Planets
  for (int i = 0; i < planets.length; i++) {
    planets[i].update();
    planets[i].display();
  }

  popMatrix();
}