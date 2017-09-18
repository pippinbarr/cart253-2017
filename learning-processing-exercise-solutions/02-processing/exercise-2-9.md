_Exercise 2-9: Using what you designed in Chapter 1, implement your own screen drawing, using only 2D primitive shapes — arc(), curve(), ellipse(), line(), point(), quad(), rect(), triangle() — and basic color functions — background(), colorMode(), fill(), noFill(), noStroke(), and stroke(). Remember to use size() to specify the dimensions of your window or fullScreen() to have your sketch cover your entire display. Suggestion: Play the sketch after typing each new line of code. Correct any errors or typos along the way._

```java
// Set the size
size(200,200);

// Set the background to dark gray
background(50);

// Draw the body ellipse
noStroke();
fill(255);
ellipse(100,100,80,80);

// Draw two rectangle legs
rect(80,100,5,80);
rect(115,100,5,80);

// Draw two eyeballs
noStroke();
fill(225);
ellipse(75,75,25,25);
ellipse(125,75,25,25);

// Draw the black irises of the eyes
stroke(0);
fill(0);
ellipse(75,75,15,10);
ellipse(125,75,15,10);

// Draw the white pupils of the eyes
noStroke();
fill(255);
ellipse(75,75,5,10);
ellipse(125,75,5,10);

// Draw a black mouth
stroke(0);
fill(0);
ellipse(100,110,50,20);
```
