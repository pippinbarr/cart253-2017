_Exercise 3-8: Add background(255); to the draw() function. Why does the program stop working?_

```java
void setup() {
  size(200, 200);
  background(255);
}
void draw() {
  background(255);
}
void mousePressed() {
  stroke(0);
  fill(175);
  rectMode(CENTER);
  rect(mouseX, mouseY, 16, 16);
}
void keyPressed() {
  background(255);
}
```

### Explanation ###

The program doesn't technically stop working, it works *differently*. A rectangle is still drawn on the screen when you click, it's just immediately erased in the draw loop by the ```background(255)``` instruction. If you're watching the screen you can often see the rectangle appear for a moment before being overwritten.
