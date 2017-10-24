float y = 100;

void setup() {
  size(200, 200);
}

void draw() {
  background(0);
  float r = random(1);
  
  if (r < 0.1) {
    // 10% chance of this
   y -= 1; 
  }
  else if (r < 0.3) {
    // 20% chance of this (because we've already checked 0.1)
   y += 1; 
  }
  
  ellipse(width/2, y, 16, 16);
}