// Better movement with speed + rotation
// (Trigonometry!)

// Another way to use the keys to move a little avatar in
// 2D is to use an angle and a speed of movement.
//
// This example shows you basic format of how to do that.

// The angle our avatar will move at relative to the x-axis
// (Note that as angles get greater they actually move
// CLOCKWISE)
float theta = PI/2;

// The number of pixels the avatar moves per frame
// Default is zero (it's not moving)
float speed = 0;
// The number of radians the avatar turns per frame
// Default is zero (it's not turning)
float turnSpeed = 0;

// The current location of the avatar
float x;
float y;

// setup()
//
// Nothing much to see here, just starts the avatar in the
// centre of the screen.

void setup() {
  size(640, 480);
  x = width/2;
  y = height/2;
}

// draw()
//
// Calls the helper methods to handle updating and drawing the avatar

void draw() {
  updateAvatar();
  drawAvatar();
}

// updateAvatar()
//
// Sets the angle of rotation and next position based on
// the current turn speed and speed

void updateAvatar() {
  // Set the avatar's rotation based on the current turning speed
  theta += turnSpeed;
  // Set the avatar's position based on adding the two components
  // of its speed based on its angle, using trigonometry!
  x += cos(theta) * speed;
  y += sin(theta) * speed;
}

// drawAvatar()
//
// Uses our friendly transformations to draw the avatar in the right
// place with the right rotation

void drawAvatar() {
  // Don't strictly need pushMatrix() but I'm using it anyway
  // since it's good practice
  pushMatrix();
  // Translate to the location (so we rotate the avatar around its centre)
  translate(x, y);
  // Rotate by theta
  rotate(theta);
  // Draw an ellipse for the body)
  ellipse(0, 0, 50, 50);
  // Draw a line so we can see which way it's facing)
  line(0, 0, 25, 0);
  // If you pushMatrix() you gotta popMatrix()
  popMatrix();
}


// keyPressed()
//
// Pressing up sets the speed to 5, pressing left and right sets
// the turn speed to negative or positive radians respectively

void keyPressed() {
  if (keyCode == UP) {
    speed = 5;
  } else if (keyCode == LEFT) {
    turnSpeed = -0.1;
  } else if (keyCode == RIGHT) {
    turnSpeed = 0.1;
  }
}

// keyReleased()
//
// Releasing up stops the avatar (by setting speed to 0), releasing left
// or right stops the avatar's rotation (by setting its turning speed to 0)

void keyReleased() {
  if (keyCode == UP) {
    speed = 0;
  } else if (keyCode == LEFT) {
    turnSpeed = 0;
  } else if (keyCode == RIGHT) {
    turnSpeed = 0;
  }
}