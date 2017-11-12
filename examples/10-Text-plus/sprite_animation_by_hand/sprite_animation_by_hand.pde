// Animation class taken from 
// https://processing.org/examples/animatedsprite.html
// Allows us to play a sequence of images
Animation animation;

void setup() {
  size(640, 360);
  // Create our animation by giving it the file prefix,
  // the number of files to use (filenames must be numbered
  // correctly in the data folder), and the rate to display them
  animation = new Animation("dance_", 9, 10);
}

void draw() { 
  background(200,255,200);
  // Display our animation in a specific location
  animation.display(width/2,height - animation.getHeight()/2);
}