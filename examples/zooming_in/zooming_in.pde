PImage bg;

void setup() {
  size(640, 640);  
  // Load the image
  bg = loadImage("bg.png");
}

void draw() {

  imageMode(CENTER);

  // If the mouse is pressed, we zoom in
  if (mousePressed) {
    // Calculate distance of mouse from centre (where the image is drawn)
    int dx = width/2 - mouseX;
    int dy = height/2 - mouseY;
    pushMatrix();
    // Move to the location of the mouse and scale (to zoom into that location)
    translate(mouseX, mouseY);
    scale(10);
    // Draw the image offset by the distance so it's in the right place
    image(bg, dx, dy);
    popMatrix();
  } else {
    // Just draw the image normally
    pushMatrix();
    translate(width/2, height/2);
    image(bg, 0, 0);
    popMatrix();
  }
}