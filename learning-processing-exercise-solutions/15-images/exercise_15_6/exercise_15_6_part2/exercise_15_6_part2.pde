size(255, 255);
loadPixels();

for (int x = 0; x < width; x++) {
  for (int y = 0; y < height; y++) {
    int loc = x + y*width;
    if (x < width/2) {
      pixels[loc] = color(x);
    } else {
      pixels[loc] = color(y);
    }
  }
}

updatePixels();