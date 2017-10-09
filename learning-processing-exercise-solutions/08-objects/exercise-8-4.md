# Main file

```java
Car myCar;

void setup() {
  size(200, 200);
  // Initialize Car object
  myCar = new Car();
}

void draw() {
  background(255);
  // Operate Car object.
  myCar.move();
  myCar.display();
}
```

# `Car.pde`

```java
class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;

  Car() {
    c = color(255);
    xpos = width/2;
    ypos = height/2;
    xspeed = 1;
  }

  void display() {
    // The car is just a square
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, 20, 10);
  }

  void move() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}
```
