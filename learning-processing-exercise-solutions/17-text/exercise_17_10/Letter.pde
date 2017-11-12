// A class to describe a single Letter
class Letter {

  char letter;
  float homex, homey;

  // Its current location
  float x, y;

  // How fast it moves toward its home location
  float speed = 2.0;

  Letter (float x_, float y_, char letter_) {
    homex = x_;
    homey = y_;

    x = random(width);
    y = random(height);

    letter = letter_;
  }

  void move() {
    float dx = homex - x;
    float dy = homey - y;

    if (dx > speed || dy > speed) {
      x = lerp(x, homex, abs(speed/dx));
      y = lerp(y, homey, abs(speed/dy));
    }
    else {
      x = homex;
      y = homey;
    }
  }

  // Display the letter
  void display() {
    fill(0);
    textAlign(LEFT);
    text(letter, x, y);
  }

  void home() {
    x = homex;
    y = homey;
  }

  void push(int mx, int my) {
    
    if (mx > x && mx < x+textWidth(letter) && my > y-textAscent() && my < y+textDescent()) { 
       x += mx - pmouseX;
       y += my - pmouseY;
    }
  }
}