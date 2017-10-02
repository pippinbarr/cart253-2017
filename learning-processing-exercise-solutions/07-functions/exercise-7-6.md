```java
void setup () {
  size(200, 200);
  background(255);
  drawFlowers(10);
}

void draw () {
  // Nothing in draw since we just draw the garden once
}

// drawFlowers
//
// Draws a garden of numFlowers flowers randomly on the screen

void drawFlowers(int numFlowers) {
  // Use a for loop to count through each flower to draw
  for (int i = 0; i < numFlowers; i++) {
    // Pick a random x location to draw the flower
    int x = int(random(width));
    // Call drawFlower() with randomised arguments to draw a random flower
    drawFlower(x, height, 1 + random(7), 30 + random(100), int(random(255)), 1 + random(40), int(random(255)), int(random(255)));
  }
}

// drawFlower
//
// Draws a single flower at x, y (where y is the bottom of the stem).
// Takes various parameters to determine how the flower will appear such as height, size, colors

void drawFlower(float x, float y, float stemWidth, float stemHeight, int stemColor, float centreSize, int centreColor, int petalColor) {

  // Draw the stem (a rectangle)
  noStroke();
  fill(stemColor);
  rectMode(CENTER);
  rect(x, y - stemHeight/2, stemWidth, stemHeight);

  // Draw the centre of the flower (a circle)
  fill(centreColor);
  float centreX = x;
  float centreY = y - stemHeight;
  ellipse(x, y - stemHeight, centreSize, centreSize);

  // Draw the four petals as overlapping semi-transparent ellipses to get a flowery effect
  // We draw the four petals equidistant from the centre so they overlap to look a bit
  // like a flower, though not much. There are hardcoded numbers here such as 3 and 1.2
  // that would probably be better as more parameters.
  fill(petalColor, 200);
  ellipse(x - centreSize/3, y - stemHeight - centreSize/3, centreSize*1.2, centreSize*1.2);
  ellipse(x + centreSize/3, y - stemHeight - centreSize/3, centreSize*1.2, centreSize*1.2);
  ellipse(x - centreSize/3, y - stemHeight + centreSize/3, centreSize*1.2, centreSize*1.2);
  ellipse(x + centreSize/3, y - stemHeight + centreSize/3, centreSize*1.2, centreSize*1.2);
}
```
