// Movement with speed + rotation
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
float speed = 5;

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
// Calls the helper methods to handle input and drawing

void draw() {
  handleInput();
  drawAvatar();
}

// handleInput()
//
// Checks to see if a key is pressed
// If LEFT or RIGHT it rotates the avatar by changing its theta (angle)
// If UP it adds the speed to the avatar's x,y position based on theta
// using trigonometry functions!

void handleInput() {
  if (!keyPressed) {
    return;
  }

  // LEFT or RIGHT means subtract or add to theta
  if (keyCode == LEFT) {
    theta -= 0.1;
  } else if (keyCode == RIGHT) {
    theta += 0.1;
  }

  // UP means move, so change the x,y position based
  // on speed and theta
  if (keyCode == UP) {
    // These are the equations for modifying a 2D position
    // based on an angle and a distance to travel (speed is the
    // distance traveled each frame)
    x += cos(theta) * speed;
    y += sin(theta) * speed;
  }
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