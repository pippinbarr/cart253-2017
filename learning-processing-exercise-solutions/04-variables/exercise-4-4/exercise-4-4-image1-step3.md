```java
int strokeColor = 0;
int fillColor = 127;
int backgroundColor = 255;

int ellipse1X = 50;
int ellipse1Y = 50;
int ellipse2X = 150;
int ellipse2Y = 50;
int ellipse3X = 50;
int ellipse3Y = 150;
int ellipse4X = 150;
int ellipse4Y = 150;
int ellipseSize = 50;

void setup () {
  size(200,200);
  stroke(strokeColor);
  fill(fillColor);
}

void draw () {
  background(backgroundColor);
  ellipse(ellipse1X,ellipse1Y,ellipseSize,ellipseSize);
  ellipse(ellipse2X,ellipse2Y,ellipseSize,ellipseSize);
  ellipse(ellipse3X,ellipse3Y,ellipseSize,ellipseSize);
  ellipse(ellipse4X,ellipse4Y,ellipseSize,ellipseSize);

  ellipseSize = ellipseSize + 1;
  ellipse1X = ellipse1X - 1;
  ellipse1Y = ellipse1Y - 1;
  ellipse2X = ellipse2X + 1;
  ellipse2Y = ellipse2Y - 1;
  ellipse3X = ellipse3X - 1;
  ellipse3Y = ellipse3Y + 1;
  ellipse4X = ellipse4X + 1;
  ellipse4Y = ellipse4Y + 1;
}
```
