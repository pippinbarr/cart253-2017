_Exercise 3-3: Explain why you see a trail of rectangles if you move background() to setup(), leaving it out of draw()._

```java
void setup () {
  size(200,200);
  background(255);
}

void draw () {
  stroke(0);
  fill(175);
  rectMode(CENTER);
  rect(mouseX, mouseY, 50, 50);
}
```

### Explanation ###

The background is only filled with what *once* at the beginning of the sketch. After that, the sketch draws rectangles over and over again (every *frame*) at the location of the mouse. Because the background is never filled in again, each of the rectangles drawn in the draw loop stay on the screen and it looks like a drawing.
