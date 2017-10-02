```java
void setup () {
  size(200,200);
}

void draw () {
  background(100);
  drawCreature();
}

void drawCreature () {
  // Draw the body ellipse
  noStroke();
  fill(255);
  ellipse(100,100,80,80);

  // Draw two rectangle legs
  rect(80,100,5,80);
  rect(115,100,5,80);

  // Draw two eyeballs
  noStroke();
  fill(225);
  ellipse(75,75,25,25);
  ellipse(125,75,25,25);

  // Draw the black irises of the eyes
  stroke(0);
  fill(0);
  ellipse(75,75,15,10);
  ellipse(125,75,15,10);

  // Draw the white pupils of the eyes
  noStroke();
  fill(255);
  ellipse(75,75,5,10);
  ellipse(125,75,5,10);

  // Draw a black mouth
  stroke(0);
  fill(0);
  ellipse(100,110,50,20);
}
```

(This is the creature from exercise 2.9)
