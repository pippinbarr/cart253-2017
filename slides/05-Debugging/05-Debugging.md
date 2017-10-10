class: middle

# CART 253 | 05 | Debugging

---

## Exercise 02

- Loops
- Commenting at the top of each file

???

- Some confusing about how loops work
- Especially the relationship between a for/while loop and the draw() loop
- Also a common omission of comments describing each file in the assignment

---

class: middle

# Debugging

---

# Programming doesn't work

- You may have noticed that when you write programs they don't work
- You may have noticed this happens all the time
- You may have noticed that the default state of a program is: not working
- And if it's working its default state is: not doing what you wanted
--

We constantly need to _debug_ our work

---

# Bugs! Gross!

- We can think of a "bug" as basically any problem with our program
- Some of them are _syntax errors_ where we've typed something that doesn't make sense to Processing
- Some of them are _type errors_ where we've used an `int` where we needed a `float` or something similar
- And the worst ones of all are the errors in _behaviour_, where the program itself "works" (compiles), but it doesn't behave correctly

---

# Debugging!

- Debugging it the process of going through our code and getting rid of all the bugs
- Programming basically _is_ debugging
- Debugging is actually pretty fun once you get used to it
- It's like solving a puzzle or, you know, hunting for a fugitive in a dark forest with only a flashlight and your wits to guide you
- One big part of debugging is just knowing the kinds of things that can go wrong
- Another big part of debugging is have strategies for finding where those things are

---

# Syntax

- Syntax errors are usually the easiest to fix because the compiler notices them for you
- Processing is not too bad at warning you about most of the common syntax errors
- And a lot of the time its error messages (at the bottom of the window) are even pretty helpful...

---

# Missing semicolon

```java
int meaningOfLife = 42
int meaningOfDeath = 0;
```

__Missing a semicolon ";"__

---

# Non-existence (typos)

```java
int meaningOfLife = 42;
println(meaningOfLif);
```

__The variable "meaningOfLif" does not exist__

```java
size(640,480);
backgroun(0);
```

__The function "backgroun(int)" does not exist__

```java
fr (int i = 0; i < 10; i++) {
  println(i);
}
```

__The function "fr (integer>)" does not exist__

---

# Object-oriented non-existence

```java
Car car = new Car();
```

__The class "Car" does not exist__

---

# Non-existent functions (names, parameters)

```java
doesThisExist();
```

__The function "doesThisExist()" does not exist__

```java
size(640,480);
background("white","transparent");
```

__The function "background()" expects parameters like: "background(int, float)"__

???

- Processing will tell you that there IS a function with that name
- But it will tell you the kind of parameters it expects (an "int" in this case)
- And then will tell you what you tried to use, which was wrong (we didn't have a parameter in this case)

---

# "Active" and "static" modes

```java
background(0);

void draw() {
 println("Hello darkness my old friend...");
}
```

__Return type for the method is missing__

- Oh no, not very helpful.
- Older versions of Processing would say "It looks like your mixing "active" and "static" modes
- Basically if you have a `setup()` and/or `draw()` you can't call functions outside all curly brackets anymore

---

# Type mismatch

```java
int meaningOfLife = 3.14159;
```

__Type mismatch, "float" does not match with "int"__

```java
String image = loadImage("car.png");
```

__Type mismatch, "processing.core.PImage" does not match with "java.lang.String"__

---

# Non-existent methods

```java
int meaningOfLife = 42;
meaningOfLife.solveAllMyProblems();
```

__Cannot invoke solveAllMyProblems() on the primitive type int__

```java
PImage gandhi;
gandhi = loadImage("gandhi.png");
gandhi.solveAllMyProblems();
```

__The function "solveAllMyProblems()" does not exist__

---

# Missing curlies

```
boolean curlyMissing = true;
if (curlyMissing) {
  println("Oopsie-daisy!");
```

__Missing right curly bracket__

```
boolean curlyMissing = true;
if (curlyMissing)
  println("Oopsie-daisy!");
}
```

__Found one too many } characters without { to match it__

---

# Worse missing curlies

```
boolean missingCurly;

void setup() {
  size(640,480);
  missingCurly = true;
  if (missingCurly) {
    println("Oh dear god...");
  if (missingCurly && missingCurly) {
    println("Definitely missing a curly");
  }
}

void draw() {
  println("I'm not feeling well...");
}
```

__Missing right curly bracket "}"__

But it identifies the _wrong place_ in the code

---

# Object-oriented missing curlies

```
class Ball

  /////////////// Properties ///////////////

  // Default values for speed and size
  int SPEED = 5;
  int SIZE = 16;
```

__unexpected token: int__

Now Processing is surprised by the line _after_ the missing curly!

---

# Missing parentheses

```
if ((100 < 200) && (200 < 300) {
  println("Seems legit.");
}
```

__Missing right parenthesis ")"__

Helpful!

```
if ((100 < 200) && 200 < 300)) {
  println("Seems legit.");
}
```

__Error on ")"__

Not very helpful, though it does tell us the kind of thing it's confused about.

---

# `=` instead of `==`

```java
int x = 0;
if (x = 0) {
 println("I feel good about this.");
}
```

__Type mismatch, "int" does not match with "boolean"__

```java
int x = 0;
if (x = 0 && x < 10) {
 println("I feel good about this.");
}
```

__The operator && is undefined for the argument type(s) int, boolean__

???

- JavaScript would totally screw you on this kind of error by the way
- Because `x = 0;` in JavaScript evaluated to 0 and 0 evaluates to `false`

---

# `=` instead of `==`

```java
if (mouseX == 0 || mouseX = 20) {
  println("So interesting.");
}
```

__Error on "="__

Weirdly less helpful when the `=` is on the right of a logic condition

---

# `==` instead of `=`

```java
int x == 0;
if (x == 0) {
 println("I feel good about this.");
}
```

__Error on "=="__

Not super helpful. But at least it's an error.

---

# There are more.

- You will undoubtedly run into other errors as you write more complicated programs
- Generally speaking Processing is good at finding them and warning you
- But its warnings aren't always totally clear
- Need to practice and come to understand the kinds of things that can be going wrong
- Once you have that list in your head, it's a lot easier to fix them

---

# Okay, my program works now...

# ... but it doesn't, you know... work.

- As we all know, just fixing all the errors in a program isn't enough
- Once we've done that we need to fix all the errors we wrote in _perfectly good code_

---

# The basic process

0. Run your program
0. Notice it doesn't do what you expected (_testing_)
0. Figure out what is causing the problem (_debugging_)
0. Fix the problem
0. Go to 1

---

# Testing

- Because you write your own code, _testing_ is a little bit easier than it would be for someone else
- You _know_ what your program is meant to do, so you _know_ when it's not doing that
- As your programs get more complicated, though, you do need to be more _thorough_ with testing
- And with _interactive_ media someone other than you will use it and they will do weird things you might not have thought of (like pressing every key at once, headbutting the microphone, ...)
- This is why it's good to watch other people test your work
- Or pretend to be someone else when you test your own work

---

# Debugging

- Once you run into a problem in your code it's a good idea to think about what _kind_ of problem it is
- Especially in relation to your own code
- If it's a problem with the way a paddle is moving, you can probably start out looking in the `Paddle` class, maybe in the `update()` method or a method called within it...
- Be a detective

---

# Debugging

- There are a few basic things you can do to make your life of debugging easier:

- __Simplify__ your code
- Send yourself __messages__
- __Show it__ to someone else
- Take a __break__

---

# Simplify

- One beauty of the _modularity_ we get from functions and object-oriented programming is that we can more easily _simplify_ our work
- For example, if we have a problem with our paddles, we could simplify the main program to _only_ include _one_ paddle that we could then test further
- If this _solves_ the problem, we know the issue is somewhere else (perhaps the interaction of the ball with the paddle in `collide()`?)
- If this _doesn't_ solve the problem, we've got _much less code to look at_ because it can only be in the code we've left in the program!

???

- A key to this approach is being able to think of your program as being made of up parts
- Those parts can (often) exist independently, which makes them easier to fix

---

```java
void draw() {
  background(backgroundColor);

  leftPaddle.update();
  //rightPaddle.update();
  //ball.update();

  //ball.collide(leftPaddle);
  //ball.collide(rightPaddle);

  //if (ball.isOffScreen()) {
  //  ball.reset();
  //}

  leftPaddle.display();
  //rightPaddle.display();
  //ball.display();
}
```

---

# Extreme simplifying

- An extreme version of the _simplify_ approach is to comment out _everything_
- And then gradually add lines back in _one by one_
- Until the problem comes up
- At that point you know that the line you just added is _part of the problem_

---

# Messages

- Easily the most common way that I personally do debugging is by sending _messages_ inside the code
- The easiest way to do this is by using `println()` to write messages onto the console
- I use it for two main things:
  - Print a message to _show that the program reached a certain point_
  - Print out the _values of variables_ to check if they're reasonable, to watch them change, etc.

---

`Ball.pde`
```java
void reset() {
  println("Resetting the ball to the centre...")
  x = width/2;
  y = height/2;
}
```

- If something weird is happening with the ball not resetting properly one of the first things I would do is put a `println()` in the `reset()` method of the Ball class to see if it's being called
- If that message _does not appear_ when it should, we know the function is not being called
- If that message _does appear_ then the resetting problem is somewhere else

---

`Ball.pde`
```java
boolean isOffScreen() {
  println("isOffScreen() called");
  println("x is " + x);
  println("x + SIZE/2 < 0 is " + (x + SIZE/2 < 0));
  println("x - SIZE/2 > width is " + (x - SIZE/2 > width));
  return (x + SIZE/2 < 0 || x - SIZE/2 > width);
}
```

- Maybe the ball is not resetting because it's not being detected as off screen?
- One way to monitor this is to put `println()` messages in the `isOffScreen()` method that constantly print out the value of x and the truth values of the conditions for the ball being off the screen
- By running the game and monitoring these messages, we may be able to see a problem

???

- __Note__ how you can use `+` to add values to your String in `println()`

---

# Show it

- You're surrounded by people who know how to program
- If you're totally stuck on a weird bug, show it to someone else
- The process of _explaining_ what is going wrong will often trigger a realisation of how to fix it!
- This also can work if you just verbally explain your code _to yourself_

---

# Take a break

- You have probably experienced the obsession of trying to fix a bug for multiple hours with no luck
- It's very tempting and easy to just keep going at it
- But you can end up totally exhausted and not able to think straight
- Taking a break, even a short one, is often a great way to suddenly come up with the answer

---

# Bonus: Ask for help

- It is a great instinct to want to work through all the problems in your code on your own, you'll learn a lot
- But it's important, too, to remember that we're here to _learn_ how to program, not to already be good at it
- So if you're struggling for what feels like too long, just ask for help with it
- There is studio time, office hours, email, many ways to reach out

---

# Bonus: Call it a feature!

- One of the dark arts of programming is to sometimes decide that an element of your program that doesn't work the way you want is actually... _what you wanted_
- This is only a good idea if you _understand_ why it doesn't work
- But it can be an interesting design process to consider: not all unexpected behaviour in your code is necessarily bad
- So long as you (eventually) understand it

---

# Let's do this

- I broke the crap out of Pong
- Let's fix it!
- Together!
- [Working Pong Example Code](https://github.com/pippinbarr/cart253-2017/tree/master/examples/05-Debugging/PongNoBugs.zip)
- [Broken Pong Example Code](https://github.com/pippinbarr/cart253-2017/tree/master/examples/05-Debugging/PongBugs.zip)


---

# The Computation Lab

- It's still there!
- Sabine knows all about loops, object oriented programming, and more!

---

# Homework/Nowwork
- __Now:__ Finish [Exercise 03](https://github.com/pippinbarr/cart253-2017/wiki/Exercise-02) if you haven't and make sure it is submitted (pushed to your repository online) and that you and your repository are listed on the [People](https://github.com/pippinbarr/cart253-2017/wiki/People) page.
- Work on the [Midterm Project](https://github.com/pippinbarr/cart253-2017/wiki/Midterm-Project), pitch ideas to us!
- The reading from _this week_ is Chapter 11 of _Learning Processing_ (Debugging)
- The reading for _next week_ is Chapter 9  of _Learning Processing_ (Arrays)
