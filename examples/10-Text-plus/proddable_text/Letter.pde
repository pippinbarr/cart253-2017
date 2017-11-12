// Letter
//
// A class for representing a single character on the screen
// which can be moved around by the mouse.

class Letter {

  // Store the position and size of the character
  float x;
  float y;
  float w;
  float h;
  // Store the character this Letter represents
  char c;

  // Letter()
  //
  // Creates the obvious properties, constructs the size
  // of the character based on its properties derived from
  // the current font.
  Letter(char tempC) 
  {
    c = tempC;

    x = 0;
    y = 0;

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
  public void update() 
  {    
    // First check if the mouse is "inside" the character's space
    if ((mouseX > x && mouseX < x + w) && (mouseY < y && mouseY > y - h)) 
    {
      // If so, then we simply add the difference between the mouse's
      // current position and its previous position to the position of
      // this Letter.
      // This works, though it might take a moment to think through why.
      // If the mouse moved from left to right, say, then mouseX is greater
      // than pmousX and the difference is positive, so you add that to 
      // the letter position and it moves right as well.
      // If the mouse moved from right to left, then mouseX is less than
      // pmouseX and the difference is negative, so you add that to the
      // letter position and its moves left as well.
      // And the same again for the Y axis!
      x += mouseX - pmouseX;
      y += mouseY - pmouseY;
    }
  }


  // display()
  //
  // Sorry this isn't a bit more riveting.
  public void display() 
  {
    text(c, x, y);
  }


  // setPosition()
  //
  // A setter for setting the position of the letter.
  // A Letter Setter.
  public void setPosition(float tempX, float tempY)
  {
    x = tempX;
    y = tempY;
  }
}