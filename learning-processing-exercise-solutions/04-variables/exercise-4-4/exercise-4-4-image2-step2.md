```java
int backgroundColor = 255;
int leftX = 0;
int middleX = 100;
int rightX = 200;
int topY = 0;
int middleY = 100;
int bottomY = 200;


void setup () {
  size(200,200);
}

void draw () {
  background(backgroundColor);
  line(middleX,topY,middleX,middleY);
  line(leftX,bottomY,middleX,middleY);
  line(rightX,bottomY,middleX,middleY);
}
```
