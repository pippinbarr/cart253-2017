// Menu
//
// A simple class to display a menu of possible games to play
// and to respond to the player's selection by setting a variable
// that the main program can see and then switch to the selected
// state

class Menu {

  // A variable to track the user's selection (starts as NONE)
  State selection = State.NONE;

  // A constructor that does nothing
  Menu() {
  }

  // update()
  //
  // The update method just displays the menu
  
  void update() {
    display();
  }

  // display()
  //
  // The display method displays the options available in the game
  
  void display() {
    background(0);
    textAlign(CENTER, CENTER);
    textSize(32);
    text("(P)ONG", width/2, 50);
    text("(B)LUE PONG", width/2, 100);
  }

  // keyPressed()
  //
  // Called by the main program when the menu is active. If the player
  // presses a key to select one of the game versions, this object
  // will remember the state chosen.
  
  void keyPressed() {
    if (key == 'p' || key == 'P') {
      selection = State.BASIC_PONG;
    } else if (key == 'b' || key == 'B') {
      selection = State.BLUE_PONG;
    }
  }

  // keyReleased()
  //
  // Does nothing.
  
  void keyReleased() {
  }
}