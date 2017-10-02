
### Version of exercise 5.8 modularised with functions

```java
boolean circleMove = false;
int circleX = 0;
int circleY = 100;

void setup() {
  size(200, 200);
}

void draw() {
  background(100);
  drawCircle();
  moveCircle();
}

void drawCircle () {
  stroke(255);
  fill(0);
  ellipse(circleX, circleY, 50, 50);
}

void moveCircle () {
  if (circleMove) {
    circleX = circleX + 1;
  }  
}

void mousePressed() {
  circleMove = true;
}
```
