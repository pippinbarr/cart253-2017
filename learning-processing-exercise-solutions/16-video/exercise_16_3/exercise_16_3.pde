import processing.video.*;

// Two global variables
float x;
float y;

float xtime = 0;
float ytime = 100.0;
float increment = 0.1;

// Variable to hold onto Capture object
Capture video;

void setup() {
  size(320, 240);
  background(0);
  // Start x and y in the center
  x = width/2;
  y = height/2;
  // Start the capture process
  video = new Capture(this, width, height);
  video.start();
  
  background(200);
}

void captureEvent(Capture video) {
  // Read image from the camera
  video.read();
}

void draw() {
  video.loadPixels();
  
  int x = int(noise(xtime) * width);
  int y = int(noise(ytime) * height);
  xtime += increment;
  ytime += increment;
  
  int loc = x + y * width;
  
  color c = video.pixels[loc];
  
  noStroke();
  fill(c,127);
  ellipse(x,y,10,10);
}