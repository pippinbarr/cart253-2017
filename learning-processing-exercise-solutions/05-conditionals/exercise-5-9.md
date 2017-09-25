```java
int x = 100;
int y = 120;
int directionX = 1;
int directionY = 1;
int speedX = 1;
int speedY = 1;
int fillColor = 0;
int strokeColor = 0;
int circleSize = 32;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);

  x = x + (speedX * directionX);
  if ((x > width) || (x < 0)) {
    directionX = directionX * -1;
  }

  y = y + (speedY * directionY);
  if ((y > height) || (y < 0)) {
    directionY = directionY * -1;
  }

  fillColor = x;
  strokeColor = 255 - y;
  circleSize = (x + y + 1)/4;
  speedX = (mouseX + 1) / 10;
  speedY = (mouseY + 1) / 10;

  // Display circle at x location
  stroke(strokeColor);
  fill(fillColor);
  ellipse(x, y, circleSize, circleSize);
}

```
