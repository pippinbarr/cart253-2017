```java
Drop drop;
void setup() {
  size(200, 200);
  drop = new Drop();
}
void draw() {
  background(255);
  drop.move();
  drop.display();
}
```
