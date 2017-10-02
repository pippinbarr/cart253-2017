### Adding position and size to Zoog function

(Note that this is a very minimal change, literally just adding the parameters to the function.)

```java
float x = 100;
float y = 100;
float w = 60;
float h = 60;
float eyeSize = 16;
void setup() {
  size(200, 200);
}

void draw() {
  background(255); // Draw a white background
  // A color based on distance from the mouse
  float d = dist(x, y, mouseX, mouseY);
  color c = color(d);
  // mouseX position determines speed factor for moveZoog function
  float factor = constrain(mouseX/10, 0, 5);
  jiggleZoog(factor);
  drawZoog(x,y,w,h,c);
}

void jiggleZoog(float speed) {
  // Change the x and y location of Zoog randomly
  x = x + random(-1, 1) * speed;
  y = y + random(-1, 1) * speed;
  // Constrain Zoog to window
  x = constrain(x, 0, width);
  y = constrain(y, 0, height);
}

void drawZoog(float x, float y, float w, float h, color eyeColor) {
  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);

  // Draw Zoog's arms with a for loop
  for (float i = y - h/3; i < y + h/2; i += 10) {
    stroke(0);
    line(x - w/4, i, x + w/4, i);
  }

  // Draw Zoog's body
  stroke(0);
  fill(175);
  rect(x, y, w/6, h);

  // Draw Zoog's head
  stroke(0);
  fill(255);
  ellipse(x, y - h, w, h);

  // Draw Zoog's eyes
  fill(eyeColor);
  ellipse(x - w/3, y - h, eyeSize, eyeSize*2);
  ellipse(x + w/3, y - h, eyeSize, eyeSize*2);

  // Draw Zoog's legs
  stroke(0);
  line(x - w/12, y + h/2, x - w/4, y + h/2 + 10);
  line(x + w/12, y + h/2, x + w/4, y + h/2 + 10);
}
```
