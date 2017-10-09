// Paddle
//
// A class that defines a paddle that can be moved up and down on the screen
// using keys passed through to the constructor.

class Paddle {

  /////////////// Properties ///////////////

  // Default values for speed and size
  int SPEED = 5;

  // The position and velocity of the paddle (note that vx isn't really used right now)
  int x;
  int y;
  int vx;
  int vy;
  
  // The image that represents the paddle
  PImage image;

  // The characters used to make the paddle move up and down, defined in constructor
  char upKey;
  char downKey;


  /////////////// Constructor ///////////////

  // Paddle(int _x, int _y, String _image, char _upKey, char _downKey)
  //
  // Sets the position and controls based on arguments,
  // starts the velocity at 0,
  // loads the specified image

  Paddle(int _x, int _y, String _image, char _upKey, char _downKey) {
    x = _x;
    y = _y;
    vx = 0;
    vy = 0;
    
    image = loadImage(_image);

    upKey = _upKey;
    downKey = _downKey;
  }


  /////////////// Methods ///////////////

  // update()
  //
  // Updates position based on velocity and constraints the paddle to the window

  void update() {
    // Update position with velocity (to move the paddle)
    x += vx;
    y += vy;

    // Constrain the paddle's y position to be in the window
    y = constrain(y,0 + image.height/2,height - image.height/2);
  }

  // display()
  //
  // Display the paddle at its location
  
  void display() {
    imageMode(CENTER);
    image(image,x,y);
  }

  // keyPressed()
  //
  // Called when keyPressed is called in the main program
  
  void keyPressed() {
    // Check if the key is our up key
    if (key == upKey) {
      // If so we want a negative y velocity
      vy = -SPEED;
    } // Otherwise check if the key is our down key 
    else if (key == downKey) {
      // If so we want a positive y velocity
      vy = SPEED;
    }
  }

  // keyReleased()
  //
  // Called when keyReleased is called in the main program

  void keyReleased() {
    // Check if the key is our up key and the paddle is moving up
    if (key == upKey && vy < 0) {
      // If so it should stop
      vy = 0;
    } // Otherwise check if the key is our down key and paddle is moving down 
    else if (key == downKey && vy > 0) {
      // If so it should stop
      vy = 0;
    }
  }
}