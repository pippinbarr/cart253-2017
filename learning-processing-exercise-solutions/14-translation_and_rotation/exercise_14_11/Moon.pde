class Moon {
  float theta; // Rotation around planet
  float diameter; // Size of moon
  float distance; // Distance from moon
  float orbitspeed; // Orbit speed

  Moon(float _distance, float _diameter) {
    distance = _distance;
    diameter = _diameter;
    theta = 0;
    orbitspeed = random(0.04, 0.1);
  }
  
  void update() {
    // Increment the angle to rotate
    theta += orbitspeed;
  }

  void display() {
    pushMatrix();
    
    // Rotate orbit
    rotate(theta);
    
    // Translate out distance
    translate(distance, 0);
    stroke(0);
    fill(175);
    sphere(diameter);
    
    popMatrix();
  }
}