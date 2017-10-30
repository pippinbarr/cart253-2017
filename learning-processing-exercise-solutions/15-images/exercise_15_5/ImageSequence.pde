class ImageSequence {
 
  PImage[] images;
  int currentIndex;
  float x,y,w,h;
  
  ImageSequence(PImage[] _images, float _x, float _y, float _w, float _h) {
    images = _images;
    x = _x;
    y = _y;
    w = _w;
    h = _w;
    currentIndex = int(random(images.length));
  }
  
  void update() {
    currentIndex = (currentIndex + 1) % images.length;
  }
  
  void display() {
   image(images[currentIndex],x,y,w,h);
  }
  
}