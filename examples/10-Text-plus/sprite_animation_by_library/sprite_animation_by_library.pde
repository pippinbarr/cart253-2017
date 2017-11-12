// Import the Sprites library (you need to install
// it if you don't have it)
import sprites.*;
import sprites.maths.*;
import sprites.utils.*;

// Create a Sprite for our avatar
Sprite avatar;

// Create a StopWatch to keep track of time passing
// (So we know how fast the animation should run.)
StopWatch timer = new StopWatch();

// How fast the avatar mores (pixels per second)
float avatarSpeed = 50; 

void setup() {
  size(500, 500);
  // Create our Sprite by providing "this", the file
  // with the spritesheet, the number of columns in the
  // sheet, the number of rows in the sheet, and the
  // z-depth of this sprite
  avatar = new Sprite(this, "avatar.png", 24, 1, 0);
  // Set the avatar's position on screen
  avatar.setXY(width/2, height/2);
  // Set the default (idle) frame sequence from the
  // sheet to animate
  avatar.setFrameSequence(22, 22);
}


void draw() {
  // Set up the basics of the window, including a rectangle
  // to have something that looks like the floor
  background(100);
  fill(50);
  noStroke();
  rect(0, 300, width, height-300);

  // Sprites library stuff!
  // We get the time elapsed since the last frame (the deltaTime)
  double deltaTime = timer.getElapsedTime();
  // We update the sprites in the program based on that delta
  S4P.updateSprites(deltaTime);
  // Then we draw them on the screen
  S4P.drawSprites();

  // If the avatar goes off the left or right
  // wrap it around
  if (avatar.getX() > width) {
    avatar.setX(avatar.getX() - width);
  } else if (avatar.getX() < 0) {
    avatar.setX(avatar.getX() + width);
  }

  // Handle input is a key is pressed
  if (keyPressed) {
    if (keyCode == LEFT) {
      // If they press left, set up the walking animation
      // (Tragically we only have animation for walking to
      // the right, so this avatar will have to moon walk.)
      avatar.setFrameSequence(7, 0, 0.1);
      // Set a negative velocity (so the avatar moves left)
      avatar.setVelXY(-avatarSpeed, 0);
    } else if (keyCode == RIGHT) {
      // If they press right, set the walking animation frames
      avatar.setFrameSequence(0, 7, 0.1);
      // And set a positive velocity
      avatar.setVelXY(avatarSpeed, 0);
    }
  } else {
    // If no key is pressed then return to the idel frame
    avatar.setFrameSequence(22, 22);
    // And turn off velocity
    avatar.setVelXY(0,0);
  }
}