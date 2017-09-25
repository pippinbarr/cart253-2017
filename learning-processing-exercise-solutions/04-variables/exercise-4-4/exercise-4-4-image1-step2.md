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
}
```
