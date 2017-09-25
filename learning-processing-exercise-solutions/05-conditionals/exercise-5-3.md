```java
// Rectangle starts at location x
float x = 0;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  // Display object
  fill(0);
  rect(x, 100, 20, 20);
  // Increment x
  x = x + 1;
  
  // conditional statement version
  if (x > 100) {
    x = 100;
  }

  // constrain() version
  //x = constrain(x,0,100);
}
```
