class Planet {
  float thetaX; // Rotation around sun
  float thetaY; // Rotation around sun
  float thetaZ; // Rotation around sun

  float diameter; // Size of planet
  float distance; // Distance from sun
  float orbitspeed; // Orbit speed

  Moon moon;

  Planet(float _distance, float _diameter) {

    distance = _distance;
    diameter = _diameter;

    thetaY = 0;

    orbitspeed = random(0.01, 0.03);

    float moonDiameter = diameter/10 + random(diameter/5);
    float moonDistance = diameter + moonDiameter*2 + random(moonDiameter);
    moon = new Moon(moonDistance, moonDiameter);
  }

  void update() {
    // Increment the angle to rotate
    thetaY += orbitspeed;

    moon.update();
  }

  void display() {

    pushMatrix();

    // Rotate orbit
    rotateY(thetaY);

    // Translate out distance
    translate(distance, 0);
    stroke(0);
    fill(175);
    sphere(diameter);

    moon.display();

    popMatrix();
  }
}