PImage source, destination;

void setup() {
  size(480,480);
  source = loadImage("landscape.jpg");
  destination = createImage(source.width, source.height, RGB);
}

void draw() {
  float threshold = map(mouseX,0,width,0,255);
  // The sketch is going to look at both image's pixels
  source.loadPixels();
  destination.loadPixels();
  for (int x = 0; x < source.width; x++) {
    for (int y = 0; y < source.height; y++) {
      int loc = x + y*source.width;
      // Test the brightness against the threshold
      if (brightness(source.pixels[loc]) > threshold) {
        destination.pixels[loc] = color(255); // White
      } else {
        destination.pixels[loc] = color(0);   // Black
      }
    }
  }

  // The pixels in destination changed
  destination.updatePixels();
  
  // Display the destination
  image(destination, 0, 0);
}