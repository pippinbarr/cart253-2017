_Exercise 2-8: Using the reference,  nd a function that allows you to alter the thickness of a line. What arguments does the function take? Write example code that draws a line one pixel wide, then five pixels wide, then 10 pixels wide._

```java
background(255,0,0);
noFill();
stroke(255,255,0);

// strokeWeight() is used to alter the thickness of a line, the argument is how many pixels wide the line should be
strokeWeight(1);
line(50,0,50,200);

strokeWeight(5);
line(100,0,100,200);

strokeWeight(10);
line(150,0,150,200);
```
