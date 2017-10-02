```java
color randomShipColor;
color randomWindowColor;

void setup() {
  size(640, 360);
  randomShipColor = color(random(255), random(255), random(255));
  randomWindowColor = color(random(255), random(255), random(255));
}

void draw() {
  background(255);
  spaceShip(482, 159, 223, randomShipColor, randomWindowColor);
  spaceShip(126, 89, 93, randomShipColor, randomWindowColor);
  spaceShip(422, 286, 84, randomShipColor, randomWindowColor);
  spaceShip(294, 49, 48, randomShipColor, randomWindowColor);
  spaceShip(162, 220, 151, randomShipColor, randomWindowColor);
}

void spaceShip (int x, int y, int size, color shipColor, color windowColor) {

  noStroke();

  // Draw body of ship (the black part)
  fill(shipColor);
  ellipse(x, y, size/2, size/2);
  ellipse(x, y+size/10, size, size/3);

  // Draw windows
  fill(windowColor);
  ellipse(x - size/5, y + size/10, size/8, size/8);
  ellipse(x, y + size/10, size/8, size/8);
  ellipse(x + size/5, y + size/10, size/8, size/8);
}
```
