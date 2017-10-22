// BluePong
//
// This is exactly the same as BasicPong except that it has a blue
// background. I made it simply to illustrate that you can have
// multiple versions of Pong all coexisting inside the same program
// by making them separate classes.

class BluePong {

  // Variables to store the main objects in the game (the paddles and ball)
  Paddle leftPaddle;
  Paddle rightPaddle;
  Ball ball;

  // The distance from the edge of the window a paddle should be
  // Exaggerated to make the game look different
  int PADDLE_INSET = 250;

  // The background colour during play (blue!)
  color backgroundColor = color(0,0,255);

  // A boolean to track whether we should return to the menu
  boolean returnToMenu = false;

  // BasicPong()
  //
  // Creates the paddles and ball

   BluePong() {
     // Create a paddle on either side of the screen
    leftPaddle = new Paddle(PADDLE_INSET, height/2, '1', 'q');
    rightPaddle = new Paddle(width - PADDLE_INSET, height/2, '0', 'p');

    // Create the ball at the centre of the screen
    ball = new Ball(width/2, height/2);
  }

  // update()
  //
  // Handles all the magic of making the paddles and ball move, checking
  // if the ball has hit a paddle, and displaying everything.

  void update() {
    // Fill the background each frame so we have animation
    background(backgroundColor);

    // Update the paddles and ball by calling their update methods
    leftPaddle.update();
    rightPaddle.update();
    ball.update();

    // Check if the ball has collided with either paddle
    ball.collide(leftPaddle);
    ball.collide(rightPaddle);

    // Check if the ball has gone off the screen
    if (ball.isOffScreen()) {
      // If it has, reset the ball
      ball.reset();
    }

    // Display the paddles and the ball
    leftPaddle.display();
    rightPaddle.display();
    ball.display();
  }
  
  // reset()
  //
  // Resets the game by resetting the ball and paddles and setting
  // returnToMenu to false
  
  void reset() {
    ball.reset();
    leftPaddle.reset();
    rightPaddle.reset();
    returnToMenu = false;
  }

  // keyPressed()
  //
  // The paddles need to know if they should move based on a keypress
  // so when the keypress is detected in the main program we need to
  // tell the paddles

  void keyPressed() {
    // Just call both paddles' own keyPressed methods
    leftPaddle.keyPressed();
    rightPaddle.keyPressed();
    
    // Check if we should return to the menu
    if (key == 'm' || key == 'M') {
     returnToMenu = true; 
    }
  }

  // keyReleased()
  //
  // As for keyPressed, except for released!

  void keyReleased() {
    // Call both paddles' keyReleased methods
    leftPaddle.keyReleased();
    rightPaddle.keyReleased();
  }
}