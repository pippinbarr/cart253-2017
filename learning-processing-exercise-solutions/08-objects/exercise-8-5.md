# Main file

```java
Ball ball;
float gravity = 0.1;
void setup() {
  size(200, 200);
  ball = new Ball(50, 0);
}
void draw() {
  background(255);
  ball.display();
  ball.move();
}
```

# `Ball.pde`

```java
class Ball {
  float x;
  float y;
  float speed;

  Ball(float _x, float _y) {
    x = _x;
    y = _y;
    speed = 0;
  }

  void display () {
    // Display the circle
    fill(175);
    stroke(0);
    ellipse(x, y, 10, 10);
  }

  void move () {
    // Add speed to y location
    y = y + speed;
    // Add gravity to speed
    speed = speed + gravity;
    // If square reaches the bottom
    // Reverse speed
    if (y > height) {
      speed = speed * -0.95;
      y = height;
    }
  }
}
```
