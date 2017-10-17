#### Main file

```java
Snake snake;

void setup() {
  size(200, 200);
  snake = new Snake(50);
}

void draw() {
  background(255);
  snake.add(mouseX,mouseY);
  snake.display();
}
```

#### `Snake.pde`

```java
class Snake {

  Point[] segments;

  Snake (int size) {
    segments = new Point[size];
    for (int i = 0; i < segments.length; i++) {
      segments[i] = new Point(0, 0);
    }
  }

  void add(int _x, int _y) {
    for (int i = 0; i < segments.length - 1; i++) {
      segments[i] = segments[i+1];
    }
    segments[segments.length - 1] = new Point(_x, _y);
  }

  void display() {
    for (int i = 0; i < segments.length; i++) {
      noStroke();
      fill(255 - i*5);
      ellipse(segments[i].x, segments[i].y, i, i);
    }
  }
}
```

#### `Point.pde`

```java
class Point {

  int x;
  int y;

  Point (int _x, int _y) {
    x = _x;
    y = _y;
  }
}
```
