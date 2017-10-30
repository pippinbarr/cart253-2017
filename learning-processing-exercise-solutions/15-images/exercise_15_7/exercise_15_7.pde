PImage img;

void setup() {
  size(480,480);
  img = loadImage("landscape.jpg");
}

void draw() {
  loadPixels();
  img.loadPixels();
  
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      
      int loc = x + y * width;
      float r = red  (img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue (img.pixels[loc]);
      
      r *= b;
      g *= 2;
      b = 255;
      
      // Set the display pixel
      pixels[loc] = color(r, g, b);
    }
  }

  updatePixels();
}