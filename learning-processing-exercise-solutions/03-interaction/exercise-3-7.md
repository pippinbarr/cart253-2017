_Exercise 3-7: Update Exercise 3-4 on page 40 so that the faster the user
moves the mouse, the wider the drawn line. Hint: look up strokeWeight() in the Processing Reference._

```java
void setup() {
  size(200, 200);
  background(255);
}

void draw() {
  stroke(0);
  // Add the horizontal and vertical distance the mouse has travelled this frame
  // (Dived each by 5 so it's a bit less extreme...)
  strokeWeight(abs((mouseX-pmouseX)/5 + abs(mouseY-pmouseY)/5));
  line(pmouseX, pmouseY, mouseX, mouseY);
}
```
