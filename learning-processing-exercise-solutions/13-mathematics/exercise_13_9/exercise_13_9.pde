// xtime for the leftmost ellipse (increases over time)
float xBaseTime = 0.0;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  noStroke();
  fill(0);

  xBaseTime += 0.02; // Increase the base level xtime
  
  float xtime = xBaseTime; // Create a temporary xtime for ellipses across the window
  
  // A simple way to draw the (nosie) wave with an ellipse at each location
  for (int i = 0; i <= 20; i++) {
    // Calculate y value based off of noise function using map()
    float y = map(noise(xtime), 0, 1, 0, height);
    // Draw an ellipse
    ellipse(i * 10, y, 16, 16);
    // Increase the x-time
    xtime += 0.02;
  }
}