```java
int circleSize = 0;
int circleX = 100;
int circleY = 100;

void setup() {
  size(200, 200);
}

void draw() {
  background(0);
  stroke(255);
  fill(175);

  // (Comment/uncomment the lines of code below to show the answers to the exercise.)

  // 1. A circle that grows by one pixel per frame
  ellipse(circleX,circleY,circleSize,circleSize);
  circleSize = circleSize + 1;

  // 2. A circle that follows the mouse and grows
  // ellipse(mouseX,mouseY,circleSize,circleSize);
  // circleSize = circleSize + 1;

  // 3. A circle that grows at a variable speed relative to horizontal mouse movement speed
  // ellipse(circleX,circleY,circleSize,circleSize);
  // circleSize = circleSize + abs(mouseX - pmouseX);
}
```
