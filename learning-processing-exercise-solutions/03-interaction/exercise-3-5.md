_Exercise 3-5: Recode your design so that shapes respond to the mouse (by varying color and location)._

```java
void setup () {
  size(200,200);
}

void draw () {
  background(50);
  noStroke();
  fill(mouseX);
  ellipse(mouseX,mouseY,80,80);
  rect(mouseX-20,mouseY,5,80);
  rect(mouseX+15,mouseY,5,80);
  noStroke();
  fill(mouseY);
  ellipse(mouseX-25,mouseY-25,25,25);
  ellipse(mouseX+25,mouseY-25,25,25);
  stroke(0);
  fill(0);
  ellipse(mouseX-25,mouseY-25,15,10);
  ellipse(mouseX+25,mouseY-25,15,10);
  ellipse(mouseX,mouseY+10,50,20);
  noStroke();
  fill(255);
  ellipse(mouseX-25,mouseY-25,5,10);
  ellipse(mouseX+25,mouseY-25,5,10);
}
```
