import processing.video.*;

// Variable for capture device
Capture video;
color trackColor;

void setup() {
  size(320, 240);
  video = new Capture(this, width, height);
  video.start();
  
  // Start off tracking for red
  trackColor = color(255, 0, 0);
}

void captureEvent(Capture video) {
  // Read image from the camera
  video.read();
}

void draw() {
  video.loadPixels();
  image(video, 0, 0);
  
  float worldRecord = 500;
  
  // (x,y) coordinate of closest color
  int closestX = 0;
  int closestY = 0;
  
  // Begin loop to walk through every pixel
  for (int x = 0; x < video.width; x++) {
    for (int y = 0; y < video.height; y++) {
      
      int loc = x + y * video.width;
      
      // What is current color
      color currentColor = video.pixels[loc];
      float r1 = red(currentColor);
      float g1 = green(currentColor);
      float b1 = blue(currentColor);
      float r2 = red(trackColor);
      float g2 = green(trackColor);
      float b2 = blue(trackColor);
      
      // Using euclidean distance to compare colors
      float d = colorDiff(r1, g1, b1, r2, g2, b2);
      
      // If current color is more similar to tracked
      // color than closest color, save current location
      // and current difference
      if (d < worldRecord) {
        worldRecord = d;
        closestX = x;
        closestY = y;
      }
    }
  }
  if (worldRecord < 100) {
    // Draw a circle at the tracked pixel
    fill(trackColor);
    strokeWeight(4);
    stroke(0);
    ellipse(closestX, closestY, 16, 16);
  }
}

void mousePressed() {
  // Save color where the mouse is clicked in trackColor variable
  int loc = mouseX + mouseY * video.width;
  trackColor = video.pixels[loc];
}

float colorDiff(float r1, float g1, float b1, float r2, float g2, float b2) {
  return (r1-r2)*(r1-r2) + (g1-g2)*(g1-g2) + (b1-b2)*(b1-b2);
  // Note that there's a typo in the book's version of this
  // it has 2 instead of b2 in the equation!
}