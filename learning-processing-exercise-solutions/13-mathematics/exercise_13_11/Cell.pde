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
    state = ' ';
  }

  void click(int mx, int my) {
    if (mx > x && mx < x + w && my > y && my < y + h) {
      state = 'O';
    }
  }

  void display() {
    fill(255);

    if (state == ' ') {
      rect(x, y, w, h);
    } else if (state == 'O') {
      rect(x, y, w, h);
      ellipse(x+w/2, y+h/2, w/2, h/2);
    }
  }
}