```java
int backgroundColor = 255;
int squareFill = 127;
int squareX = 10;
int squareY = 10;
int squareSize = 180;
int circleFill = 255;
int circleX = 100;
int circleY = 100;
int circleSize = 100;

void setup () {
  size(200,200);
}

void draw () {
  background(backgroundColor);
  fill(squareFill);
  rect(squareX,squareY,squareSize,squareSize);
  fill(circleFill);
  ellipse(circleX,circleY,circleSize,circleSize);
}
```
