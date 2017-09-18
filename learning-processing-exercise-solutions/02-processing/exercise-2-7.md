_Exercise 2-7: Using the Processing reference, try writing a program that uses two functions I have not yet covered in this book. Stay within the “Shape” and “Color (setting)” categories._

```java
background(255,0,0);
noFill();
stroke(255,255,0);
// beginShape() and endShape() along with vertex() allow us to draw a shape point by point
beginShape();
vertex(75, 100);
vertex(125, 100);
vertex(100,150);
endShape(CLOSE);
triangle(100, 50, 150, 150, 50, 150);
```
