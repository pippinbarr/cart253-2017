### Part 1: horizontal lines

```java
size(200, 200);
background(255);
for (int y = 0; y < height; y += 10) {
  stroke(0);
  line(0,y,width,y);
}
```

### Part 2: concentric circles

```java
size(200, 200);
background(255);
for (int w = width; w > 0; w -= 20) {
  stroke(0);
  fill(w);
  ellipse(width/2,height/2,w,w);
}
```
