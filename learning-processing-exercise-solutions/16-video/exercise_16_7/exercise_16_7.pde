import processing.video.*;

// Variable for capture device
Capture video;
// Previous Frame
PImage prevFrame;
// How different must a pixel be to be a "motion" pixel
float threshold = 50;

void setup() {
  size(320, 240);
  // Using the default capture device
  video = new Capture(this, width, height);
  video.start();
  // Create an empty image the same size as the video
  prevFrame = createImage(video.width, video.height, RGB);
}

// New frame available from camera
void captureEvent(Capture video) {
  // Save previous frame for motion detection!!
  prevFrame.copy(video, 0, 0, video.width, video.height, 0, 0, video.width, 
    video.height);
  prevFrame.updatePixels();
  video.read();
}

void draw() {
  background(0);
  // If you want to display the videoY
  // You don't need to display it to analyze it!
  image(video, 0, 0);
  loadPixels();
  video.loadPixels();
  prevFrame.loadPixels();

  // Begin loop to walk through every pixel

  // For tracking the average location, we also need to add up all the
  // x and y locations of each pixel of 'motion' so we can average it out
  // at the end.
  float totalX = 0;
  float totalY = 0;
  float motions = 0; // Count how many motion pixels there were
  float threshold = 30;
  
  // Sum the brightness of each pixel

  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {

      int loc = x + y * width;
      color current = video.pixels[loc];

      // Step 2: What is the current color?
      color previous = prevFrame.pixels[loc];

      // Step 3: What is the previous color?
      // Step 4: Compare colors (previous vs. current)
      float r1 = red(current);
      float g1 = green(current);
      float b1 = blue(current);
      float r2 = red(previous);
      float g2 = green(previous);
      float b2 = blue(previous);
      float diff = dist(r1, g1, b1, r2, g2, b2);

      if (diff > threshold) {
        totalX += x;
        totalY += y;
        motions++;
      }
    }
  }

  float avgX = totalX / motions;
  float avgY = totalY / motions;

  println(avgX,avgY);

  // Draw a circle at the location of average motion
  fill(0);
  ellipse(avgX, avgY, 10, 10);
}