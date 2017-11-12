// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 17-4: Text mirror 

import processing.video.*;

// Size of each cell in the grid, ratio of window size to video size
int videoScale = 10;
// Number of columns and rows in our system
int cols, rows;
// Variable to hold onto capture object
Capture video;

// The source text used in the mosaic pattern. A longer String might produce more interesting results.
String chars = "0110101101000001101010" ; 

PFont f;

void setup() {
  size(640, 480);
  // Set up columns and rows
  cols = width / videoScale;
  rows = height / videoScale;
  video = new Capture(this, cols, rows);
  video.start();

  // Create the font
  f = createFont("Helvetica", 16);
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  background(0);

  video.loadPixels();

  int charcount = 0;
  int y = 0;

  while (y < height) {
    int x = 0;
    while (x < width) {
      int loc = int(x/videoScale + (y/videoScale)*video.width);
      color c = video.pixels[loc];
      textFont(f);
      fill(c);
      char character = chars.charAt(charcount);
      text(character, x, y);
      charcount = (charcount + 1) % chars.length();
      x += textWidth(character);
    }
    y += textAscent() + textDescent();
  }
}