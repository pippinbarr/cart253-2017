```java
void setup () {
  size(200,200);
}

void draw () {
  background(255);

  line(0,0,width,height);
  line(width,0,0,height);

  fill(200);

  ellipse(width/2,height/2,width/2,height/2);

  rectMode(CENTER);
  rect(width/4 - width/8,height/2,width/8,height/8);
  rect(width - width/4 + width/8,height/2,width/8,height/8);
}
```
