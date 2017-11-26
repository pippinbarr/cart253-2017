// Letter
//
// A class for representing a single character on the screen
// which can be moved around by the mouse if it is clicked.
//
// By Samuelle Bourgault!

class Letter {

  // Store the position and size of the character
  float x;
  float y;
  float w;
  float h;
  // Store the character this Letter represents
  char c;
  // Track whether the mouse is current clicked down (on this letter)
  boolean clicked;

  // Letter()
  //
  // Creates the obvious properties, constructs the size
  // of the character based on its properties derived from
  // the current font.
  Letter(char tempC) {
    c = tempC;

    x = 0;
    y = 0;
    
    clicked = false;

    // The width of the character is just its textWidth
    // The height of the character is taken to be the maximum
    // height of a character in this font (its ascent plus its descent).
    w = textWidth(c);
    h = textAscent() + textDescent();
  }


  // update()
  //
  // Checks whether the mouse is over the character and moves
  // the character based on where the mouse was in the previous frame.
  void update() {    
    // Check if the mouse is pressed while "inside" the character's space
    if (mousePressed) {
      if ((mouseX > x && mouseX < x + w) && (mouseY < y && mouseY > y - h)) {
        // If so, remember that it's clicked
        clicked = true;
      }
    } else {
      // If the mouse is pressed, disable moving this
      clicked = false;
    }
    
    // If the mouse is clicked on this character, then add the distance
    // the mouse moved to this character's position (so it follows the mouse)
    if (clicked) {
      x += mouseX - pmouseX;
      y += mouseY - pmouseY;
    }
  }


  // display()
  //
  // Sorry this isn't a bit more riveting.
  void display() {
    text(c, x, y);
  }


  // setPosition()
  //
  // A setter for setting the position of the letter.
  // A Letter Setter.
  void setPosition(float tempX, float tempY) {
    x = tempX;
    y = tempY;
  }
}