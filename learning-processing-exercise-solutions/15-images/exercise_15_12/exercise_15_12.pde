PImage img;
int cols = 20;
int rows = 40;

void setup() {
  size(480, 480);
  img = loadImage("landscape.jpg");
}


void draw() {
  background(0);
  sierraStylePixels();
  //weirdOverlappingRotatedSquares();
}

void sierraStylePixels() {
  // Sierra-style wide pixels!

  img.loadPixels();

  noStroke();
  for (int i = 0; i < width; i += width/cols) {
    for (int j = 0; j < height; j += height/rows) {
      int loc = i + j * img.width;
      fill(img.pixels[loc]);
      rect(i, j, width/cols, height/rows);
    }
  }
}

void weirdOverlappingRotatedSquares() {
  // Weird rotated squares!

  img.loadPixels();

  noStroke();
  for (int i = 0; i < width; i += 10) {
    for (int j = 0; j < height; j += 10) {
      int loc = i + j * img.width;
      fill(img.pixels[loc]);
      pushMatrix();
      translate(i,j);
      rotate(radians(45));
      rect(0, 0, 20, 20);
      popMatrix();
    }
  }
}