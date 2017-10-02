### `for` version

```java
int gridSize = 10;

size(200, 200);
noStroke();
for (int x = 0; x < width; x += gridSize) {
  for (int y = 0; y < height; y += gridSize) {
    fill(random(255));
    rect(x, y, gridSize, gridSize);
  }
}
```

### `while` version

```java
int gridSize = 10;

size(200, 200);
noStroke();

int x = 0;
int y = 0;
while (x < width) {
  y = 0;
  while (y < height) {
    fill(random(255));
    rect(x, y, gridSize, gridSize);
    y += 10;
  }
  x += 10;
}
```
