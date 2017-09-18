_Exercise 2-6: Fix the errors in the following code._

Incorrect:

```java
size(200, 200; // Missing closing parenthesis
background(); // Missing color argument for background
stroke 255; // Missing parenthesis around argument
fill(150) // Missing semicolon
rectMode(center); // 'center' should be in all caps as 'CENTER'
rect(100, 100, 50); // Missing an argument (presumably height)
```

Corrected:

```java
size(200, 200);
background(255);
stroke(255);
fill(150);
rectMode(CENTER);
rect(100, 100, 50, 50);
```
