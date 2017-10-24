class Oscillator {
  float xtheta;
  float ytheta;
  float x;
  float y;
  float xrate;
  float yrate;

  Oscillator() {
    xtheta = 0;
    ytheta = 0;
    xrate = random(0.2);
    yrate = random(0.2);
  }

  void oscillate() {
    x = map(sin(xtheta), -1, 1, 0, width);
    y = map(sin(ytheta), -1, 1, 0, height);

    // With each cycle,
    // increment theta
    xtheta += xrate;
    ytheta += yrate;
  }

  void display() {
    fill(0);
    stroke(0);
    line(width/2, 0, x, y);
    ellipse(x, y, 16, 16);
  }
}