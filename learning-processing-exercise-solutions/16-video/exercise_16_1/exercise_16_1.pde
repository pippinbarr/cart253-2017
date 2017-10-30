import processing.video.*;

Capture video;

int pointillize = 16;

void setup() {
  size(320,240);
  video = new Capture(this,320,240);
  video.start();
}

void captureEvent(Capture capture) {
   capture.read();
}

void draw() {
  video.loadPixels();
  
  // Pick a random point
  int x = int(random(video.width));
  int y = int(random(video.height));
  int loc = x + y * video.width;
    
  println(video.pixels[loc]);
    
  float r = red(video.pixels[loc]);
  float g = green(video.pixels[loc]);
  float b = blue(video.pixels[loc]);
  
  println(r,g,b);
  
  noStroke();
  fill(r, g, b, 100);
  ellipse(x, y, pointillize, pointillize);
}