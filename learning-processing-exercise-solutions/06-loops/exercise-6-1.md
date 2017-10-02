### Part 1: horizontal lines

```java
size(200, 200);
background(255);
int y = 0;
while (y < height) {
  stroke(0);
  line(0,y,width,y);
  y = y + 10;
}
```

### Part 2: concentric circles

```java
size(200, 200);
background(255);
float w = width ;
while (w > 0) {
  stroke(0);
  fill(w);
  ellipse(width/2,height/2,w,w);
  w = w - 20;
}
```
