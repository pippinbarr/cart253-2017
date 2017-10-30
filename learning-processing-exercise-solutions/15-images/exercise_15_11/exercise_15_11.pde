PImage img1,img2;
int w = 80;


void setup() {
  size(480,480);
  img1 = loadImage("landscape1.jpg");
  img2 = loadImage("landscape2.jpg");
}


void draw() {
  
  loadPixels();
  img1.loadPixels();
  img2.loadPixels();
  
  // Begin loops for every pixel
  for (int x = 0; x < img1.width; x++) {
    for (int y = 0; y < img1.height; y++) {
      
      int loc = x + y * img1.width;
      
      color c1 = img1.pixels[loc];
      color c2 = img2.pixels[loc];
      
      // Boring "proper" blend
      float r = (red(c1) + red(c2))/2;
      float g = (green(c1) + green(c2))/2;
      float b = (blue(c1) + blue(c2))/2;
      pixels[loc] = color(r,g,b);
      
      // Mixup blend
      //pixels[loc] = color(red(c1),green(c2),red(c2));
      
      // Psychedlic impatient blend
      //pixels[loc] = c1/2 + c2/2;
    }
  }
  
  updatePixels();
}