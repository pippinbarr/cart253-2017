```java
int x = 50;
int y = 50;
int w = 100;
int h = 75;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  stroke(0);
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(255,0,0);
  } else {
    fill(255,255,255);
  }
  rect(x, y, w, h);
}

// For a circle we would want to know the *distance* of the mouse cursor
// from the center of the circle. If it was less than the radius of the circle
// we would know the cursor was inside the circle, otherwise it would be outside.
//
// We could do this from first principles using Pythagoras. But Processing
// happens to have a dist() function, too. Look it up!
```
