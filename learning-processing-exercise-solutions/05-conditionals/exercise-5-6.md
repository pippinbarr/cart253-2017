```java
int rect1Color = 255;
int rect2Color = 255;
int rect3Color = 255;
int rect4Color = 255;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  stroke(0);
  line(100, 0, 100, 200);
  line(0, 100, 200, 100);
  noStroke();

  if (mouseX < 100 && mouseY < 100) {
    rect1Color = 0;
  } else if (mouseX > 100 && mouseY < 100) {
    rect2Color = 0;
  } else if (mouseX < 100 && mouseY > 100) {
    rect3Color = 0;
  } else if (mouseX > 100 && mouseY > 100) {
    rect4Color = 0;
  }

  fill(rect1Color);
  rect(0, 0, 100, 100);
  fill(rect2Color);
  rect(100, 0, 100, 100);
  fill(rect3Color);
  rect(0, 100, 100, 100);
  fill(rect4Color);
  rect(100, 100, 100, 100);

  rect1Color = constrain(rect1Color + 5, 0, 255);
  rect2Color = constrain(rect2Color + 5, 0, 255);
  rect3Color = constrain(rect3Color + 5, 0, 255);
  rect4Color = constrain(rect4Color + 5, 0, 255);
}
```
