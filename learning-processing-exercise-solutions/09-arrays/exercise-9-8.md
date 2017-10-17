#### Main file

```java
Button[] buttons = new Button[20];

void setup () {
  size(640,480);
  for (int i = 0; i < buttons.length; i++) {
    buttons[i] = new Button(random(width), random(height), 40 + random(40), 20 + random(20));
  }
}

void draw () {
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].display();
  }
}

void mousePressed () {
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].mousePressed(mouseX, mouseY);
  }
}

void mouseReleased () {
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].mouseReleased();
  }
}
```

#### `Button.pde`

```java
class Button {

  float x;
  float y;
  float w;
  float h;
  boolean on;

  Button (float _x, float _y, float _w, float _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    on = false;
  }

  void display () {
    stroke(0);
    strokeWeight(3);
    if (on) {
      fill(127,127,255);
    } else {
      fill(255);
    }
    rect(x, y, w, h);
  }

  void mousePressed(int _x, int _y) {
    if (_x > x && _x < x + w && _y > y && _y < y + h) {
      on = true;
    }
  }

  void mouseReleased() {
    on = false;
  }
}
```
