size(255, 255);
loadPixels();

for (int x = 0; x < width; x++) {
  for (int y = 0; y < height; y++) {
    int loc = x + y*width;
    float distance = dist(x, y, width/2, height/2);
    pixels[loc] = color(distance);
  }
}
updatePixels();