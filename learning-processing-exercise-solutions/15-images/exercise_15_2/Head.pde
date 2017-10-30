class Head {

  PImage img1,img2;
  PImage currentImage;
  float x, y;
  float r;

  Head(String _filename1, String _filename2, float _x, float _y) {
    img1 = loadImage(_filename1);
    img2 = loadImage(_filename2);
    currentImage = img1;
    x = _x;
    y = _y;
    r = 0;
  }

  void move() {
    x++; 
    if (x > width) {
      x = 0;
      if (currentImage == img1) {
        currentImage = img2;
      }
      else {
        currentImage = img1;
      }
    }
    r += 0.1;
  }

  void display() {
    pushMatrix();
    translate(x, y);
    rotate(r);
    imageMode(CENTER);
    image(currentImage, 0, 0);
    popMatrix();
  }
}