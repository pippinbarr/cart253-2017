class Planet {
  float theta; // Rotation around sun
  float diameter; // Size of planet
  float distance; // Distance from sun
  float orbitspeed; // Orbit speed
  
  Moon moon;

  Planet(float distance_, float diameter_) {
    distance = distance_;
    diameter = diameter_;
    theta = 0;
    orbitspeed = random(0.01, 0.03);
    
    float moonDiameter = diameter/10 + random(diameter/5);
    float moonDistance = diameter/2 + moonDiameter + random(moonDiameter);
    moon = new Moon(moonDistance,moonDiameter);
  }
  
  void update() {
    // Increment the angle to rotate
    theta += orbitspeed;
    
    moon.update();
  }

  void display() {
    pushMatrix();
    // Rotate orbit
    rotate(theta);
    // Translate out distance
    translate(distance, 0);
    stroke(0);
    fill(175);
    ellipse(0, 0, diameter, diameter);
    
    moon.display();
    popMatrix();
  }
}