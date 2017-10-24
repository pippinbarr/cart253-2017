// A Cell object
class Cell {

  float x, y;
  float w, h;
  int state;

  // Cell Constructor
  Cell(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    state = ' '; // An empty cell
  }

  boolean click(int mx, int my, char turn) {
    
    // Check if there is already a token in this cell
    if (state != ' ') {
      // If there is, just return because they can't play here
      return false;
    }

    // Check if the click was inside this cell
    if (mx > x && mx < x + w && my > y && my < y + h) {
      // There was, so set our state to the piece played
      state = turn;
      // Return true because it was a legal move
      return true;
    } else {
      // If we're here then they didn't click in the cell,
      // so it wasn't relevant, return false
      return false;
    }
  }

  void display() {
    fill(255);

    // Clear the cell with a rectangle
    rect(x, y, w, h);

    // Check whether to display a playing piece in the cell
    if (state == 'O') {
      // Draw a circle for the O
      ellipse(x+w/2, y+h/2, w/2, h/2);
    } else if (state == 'X') {
      // Draw two crossing lines for the X
      line(x+w/4, y+h/4, x+w-w/4, y+h-h/4);
      line(x+w-w/4, y+w/4, x+w/4, y+h-h/4);
    }
  }
}