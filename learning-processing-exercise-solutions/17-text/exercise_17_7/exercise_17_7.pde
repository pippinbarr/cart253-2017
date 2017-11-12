import processing.video.*;
// Size of each cell in the grid, ratio of window size to video size
int videoScale = 10;
// Number of columns and rows in the system
int cols, rows;

// Variable to hold onto capture object
Capture video;

// A String and Font
String chars = "helloworld";
PFont f;

void setup() {
  size(640, 480);
  // Set up columns and rows
  cols = width / videoScale;
  rows = height / videoScale;
  video = new Capture(this, cols, rows);
  video.start();
  // Load the font
  f = createFont("Courier", 16);
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  background(0);
  video.loadPixels();
  
  // Use a variable to count through chars in a string
  int charcount = 0;
  
  // Begin loop for rows
  for (int j = 0; j < rows; j++) {
    // Begin loop for columns
    for (int i = 0; i < cols; i++) {
      
      // Where are you, pixel-wise?
      int x = i * videoScale;
      int y = j * videoScale;
      
      // Looking up the appropriate color in the pixel array
      color c = video.pixels[i + j * video.width];
      
      // Get the brightness
      float b = brightness(c);
      
      float fontSize = map(b,0,255,2,48);
      
      // Displaying an individual character from the String
      // Instead of a rectangle
      textFont(f);
      textSize(fontSize);
      fill(255);
      text(chars.charAt(charcount), x, y);
      
      // Go on to the next character
      charcount = (charcount + 1) % chars.length();
    }
  }
}