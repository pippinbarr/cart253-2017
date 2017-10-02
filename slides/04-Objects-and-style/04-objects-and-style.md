class: middle

# CART 253 | 03 | Objects and style

---

class: middle

# Any questions about [Exercise 02](https://github.com/pippinbarr/cart253-2017/wiki/Exercise-02)?

```java
void handleBallHitWall() {
  if (ballX - ballSize/2 < 0) {
    ballX = 0 + ballSize/2;
    ballVX = -ballVX;
  } else if (ballX + ballSize/2 > width) {
    ballX = width - ballSize/2;
    ballVX = -ballVX;
  }

  if (ballY - ballSize/2 < 0) {
    ballY = 0 + ballSize/2;
    ballVY = -ballVY;
  }
}
```

---



## Objects
## Style

???

- Today is about the dominant approach to organising code in software engineering
- It's called Object Oriented Programming (OOP)
- It's pretty great
- We're also going to run through thoughts on style in programming

---

class: middle

# Objects

???

- Let's look at this idea of object oriented programming
- I've been guilty of suggesting OOP is difficult, but actually it's not really that bad!
- It involves some new notation and syntax
- But conceptually it's something that actually makes a lot of sense
- And it solves a lot of problems in terms of keeping related data together!

---

# Welcome to the real (virtual) world!

- Object Oriented Programming (OOP) was a major revolution in software engineering
- In a way it helped us move away from treating programmers like computers (procedural programming) and toward thinking of programs in more "human" terms as little worlds of interacting objects
- It allows us to think about our programs with a more helpful metaphor than the flow of control

???

- Note that OOP is still not a particularly _natural_ way of interacting with a computer
- But it does at least allow us to think in terms of _systems_ of objects and agents, which is something

---



# Objection!

- So what are the "objects" in OOP?
- Well in reality, objects are distinct physical entities in the world (a person, a projector, a window, ...)
- Objects have particular _properties_ (a person has an age, a height, a weight, ...)
- And they have particular _functions_ (a projector can be turned on, project an image, play a sound, ...)
--

- Objects in programming are the same except _we_ can define them
- And which properties and functions we choose to include in our implementation depend on what we're doing

---



# "O Brave New World!"<sup>1</sup>

- So now we can start to think about programs as _worlds_ full of little _objects_ that have _properties_ and _functions_ and that can _interact_ with each other
- To actually implement this kind of programming we need some new notation/syntax
- Which we might as well learn now!

-----

<small><sup>1</sup> Miranda in William Shakespeare's _The Tempest_</small>

---



Imagine a world...

--

A little white square that lives in inky blackness...

--

It moves through the world, bouncing off its edges...

--

Oh my god it's a Pong ball!

---



# Life as a ball

- So if we have this idea of a ball that bounces off walls and want to make it with OOP we need to ask what its _properties_ and _functions_ are... so... well?
--

- In terms of properties it will need a _position_, a _velocity_, a _size_, and perhaps a _colour_
- In terms of functions it will need to _move_ (including bouncing) and it will need to _display_ itself

---



# Let there be Ball!

```java
Ball ball;

void setup() {
  size(640,480);
  ball = uuhhhhhhhhhhhh....
}
```

- We want to make a Ball that knows how to do all that stuff in our program
- So we can just tell it "move!" and "display yourself!" and it will do it
- This would be a new _type_ of thing, so we'd have a _variable_ of _type_ Ball
- But... how do we make it?

---

# Let there be Ball!

```java
Ball ball;

void setup() {
  size(640,480);
  ball = new Ball();
}
```

- This is what it looks like when we make an _object_ in Java (and many other languages)
- Importantly we use the special word .codeHighlight[`new`] to say we want to make a _new object_
- And we use a special function with the same name as the _type_ of object, .codeHighlight[`Ball()`] to create it
- That function is called the __constructor__ (it _makes_ a Ball in this case)

---

# Let there be Ball!

```java
Ball ball;

void setup() {
  size(640,480);
  ball = new Ball();
}

void draw() {
  Hey ball...
  Move yourself...
  and then display yourself...
}
```

- Now that we have made a Ball, we want to _use_ it in our program
- But how do we talk to it?
- It _knows_ how to move and display itself, but how do we ask it to do those things?

---

# Let there be Ball!

```java
Ball ball;

void setup() {
  size(640,480);
  ball = new Ball();
}

void draw() {
  ball.update();
  ball.display();
}
```

- Here's another new thing. We're talking to the ball by calling its functions...
- But we do that by writing the variable with the Ball in it (`ball`)
- Then a `.` (a dot)
- Then the function call (`update()` and `display()`)

???

- This is called _dot notation_ and is common to most forms of object-oriented programming

---

# Actually they're called _methods_

`ball.update();`

In fact, when we are talking about the functions of objects we call them _methods_.

So we talk about calling the _method_ of an object.

Above we're calling the `update()` _method_ of the `ball`.

(It's not the end of the world if you keep calling them functions, just be aware that some people care a lot about this kind of thing. Just like some people care a lot about knowing the names of Pokémon.)

---

# Let there be Ball!

```java
Ball ball;

void setup() {
  size(640,480);
  ball = new Ball();
}

void draw() {
  ball.update();
  ball.display();
}
```

- Okay so we're done right?
- We declared a variable of type `Ball`
- We put a new `Ball` object into the variable `ball`
- And we called the `ball`'s methods in our `draw()` loop

---

# Ball? What Ball?

- Oh yeah, Processing doesn't know what a `Ball` is
- It knows about `int` and `float` and `String` and `char` and even `color`
- But it doesn't know about `Ball`
- We need to tell Processing what a `Ball` is and how it works
- `Ball` is a _class_ - it is the _kind of thing_ our object is
- The value in `ball` is an _object_ - it is a _specific instance_ of our class made real
- We need to _define the class_ called `Ball`

---

# Ball!

```java
class Ball {

  int x;
  int y;
  int vx;
  int vy;

  // The constructor (basically the setup() for the Ball)
  Ball() {
    // Set up the ball here
  }

  void update() {
    // Move the ball here
  }

  void display() {
    // Display the ball here
  }
}
```

This is what a _class_ definition looks like.

---

# Ball...?

- This actually works now!
- When we make a new _class_ we put it in a new _tab_ in Processing
- We click the downward arrow beside the sketch name just above the text pane
- And choose `New Tab`
- We name it with the _name of the class we are creating_ so in this case `Ball`
- And we paste in our class definition in the new tab
- And Processing now knows what a Ball is
- ... admittedly, though, it doesn't _do_ anything

---

# Ball...

```java
class Ball {

  int x;
  int y;
  int vx;
  int vy;

  // The constructor (basically the setup() for the Ball)
  Ball() {
    // Set up the ball here
  }

  void update() {
    // Move the ball here
  }

  void display() {
    // Display the ball here
  }
}
```

Let's look at the parts of our class definition before we fill it in

---

# `class`

- The very first thing we see is the word .codeHighlight[`class`]
- This is the special word that tells Processing (Java) we're going to define a class
- That is, we're basically going to make up our own _type_ to use in our program

---

# `Ball`

- Next we have the _name of the class_, in this case it's `Ball`
- It is convention to name classes with a _capital letter_ first
- If the class name has multiple words, we capitalise each one: `MyAmazingClass`, `YourAmazingClass`, `HisHerOrTheirAmazingClass`

---

# `{`

- Ah, a curly bracket
- The actual class definition is inside curly brackets
- So there's one right after the class name
- And one after the _entire class has been defined_
- It's good practice when you're writing a new class to put both in right away

```java
class Ball {

}
```

---

# `int x; int y; int vx; int vy;`

- The first thing we see at the top of a class definition are the _properties_ of the class
- These are quite literally _variables_ that belong specifically to that class
- Each new _object_ that we make with this class definition will _have these properties available_
- So in a sense this is what this object (a `Ball`) knows about itself
- It knows it has a position on the screen and it has a velocity

---

# `Ball() { ... }`

- This looks weird. It's a method with no explicit return type. Not even `void`!
- That's because it is the special method known as the __constructor__
- This is the thing getting called after `new` back in the main program
- It's the thing that _sets up_ our `Ball` and then (implicitly) returns it
- It's basically `setup()` except for a `Ball`
- We say that this constructor constructs an _instance_ of the _class_ (also known as an _object_)

???

```java
// The constructor (basically the setup() for the Ball)
Ball() {
  // Set up the ball here
}
```

---

Here's a possible constructor for setting up our ball...

```java
Ball() {
  x = width/2;
  y = height/2;
  vx = 10;
  vy = 10;
}
```

What does this set the ball up to do?

---

# `void update() { ... }`

- After the constructor we see the other _methods_ of our class
- These are the things that objects of the class can _do_
- So the `update()` method in our `Ball` class presumably... updates the ball each frame
- It should probably make the ball move (change its position based on its velocity)
- Note that _this_ is the `update()` being called in the main program by `ball.update()`
- That is calling the `update()` method for that _specific instance_ of a `Ball`

???

```java
void update() {
  // Move the ball here
}
```

---

Here's some possible code for updating our ball, including bouncing and constraining to the window

```java
void update() {
  x += vx;
  y += vy;

  if (x < 0 || x > width) {
    vx = -vx;
  }

  if (y < 0 || y > height) {
    vy = -vy;
  }

  x = constrain(x,0,width);
  y = constrain(y,0,height);
}
```

---

# `void display() { ... }`

- The other method is `display()` which should... display the ball on the screen
- Again, these methods are literally just functions that any object of class `Ball` we create knows how to do
- And we call them with the _dot notation_ we see in the main program
- So for `display()` we call it on our specific object with `ball.display()`

???

```java
void display() {
  // Display the ball here
}
```

---

Here's some code for displaying our ball...

```java
void display() {
  fill(255);
  rectMode(CENTER);
  rect(x,y,10,10);
}
```

---

# All together now...

So if we put all that together...

<sub>(Code in the presenter view.)</sub>


???

```java
class Ball {
  int x;
  int y;
  int vx;
  int vy;

  Ball() {
    x = width/2;
    y = height/2;
    vx = 10;
    vy = 10;
  }

  void update() {
    x += vx;
    y += vy;

    if (x < 0 || x > width) {
      vx = -vx;
    }
    if (y < 0 || y > height) {
      vy = -vy;
    }

    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
  }

  void display() {
    fill(255);
    rectMode(CENTER);
    rect(x, y, 10, 10);
  }
}
```

---

# Multiball action!

We should be able to have _multiple instances_ of Ball now!

```java
Ball ball;
Ball ball2;

void setup() {
  size(640,480);
  ball = new Ball();
  ball2 = new Ball();
}

void draw() {
  ball.update();
  ball2.update();
  ball.display();
  ball2.display();
}
```
--

__DANG IT!__
--

What went wrong?
--

Yeah. Both balls have the same `x`, `y`, `vx`, and `vy`.
--

How do we fix it?
--

Yeah. Arguments in the constructor.

---

# Building a better constructor

- It would make more sense to be able to pass some parameters to our `Ball()` constructor so we can say, for example, where we want our new ball to start and how fast it should be moving
- We can add arguments to our constructor (and our methods) in the same way we already saw last week

```java
Ball(int tempX, int tempY, int tempVX, int tempVY) {
  x = tempX;
  y = tempY;
  vx = tempVX;
  vy = tempVY;
}
```

???

- Note the weirdness of naming the arguments with `temp` in front of them
- This is just because we want to call them something _different_ from the actual names of the properties
- Here I'm following Daniel Shiffman's convention in _Learning Processing_

---

# And so...

Now we can make our two `Ball` objects and give them _different parameters_

```java
Ball ball;
Ball ball2;

void setup() {
  size(640,480);
  ball = new Ball(width/3,height/2,5,5);
  ball2 = new Ball(2*width/3,height/2,-5,-5);
}

void draw() {
  ball.update();
  ball2.update();
  ball.display();
  ball2.display();
}
```

They both act like bouncing balls! OOP!

---

# Objects and Classes

- Let's go over this again
- A `class` is the _abstract definition_ of what something (like a ball) can do, including properties and method
- So the class `Ball` defines the _idea_ of a ball
- An `object` is a specific _instance_ of a class that exists in your running program
- So the variable `ball` contains an _object_ that actually exists and does things in your program (like bounce around)

---

# Multiple classes and objects

- Generally speaking when we're making a little world we probably want more than _one_ kind of thing
- Pong, for example, has _two_ kinds of things (at least): one ball (usually) and two paddles (usually)
- Our current Ball has some of the behaviour of a Pong ball already (though currently it bounces of _all_ sides of the window)
- How would we add a Paddle class as well?
- Maybe it could have the option of being controller by the mouse or the arrow keys?
- Let's do it?

???

- Note that chapter 8 of the book has a really great example of working through making a specific program in it
- In making a version of Pong I'm going to demonstrate how I would think through it (with you)
- But you should absolutely read Shiffman's example too

---

class: middle

# The Elements of (Programming) Style

???

- While we have some time, it would be a good idea to officially look at what constitutes good looking code
- Because it's important that our work is consistent and presentable

---

# The big three

## Formatting

## Commenting

## Naming

---

# Formatting

```java
int variableOne = 0;
int variableTwo = 0;

void setup() {
  size(500,500);
}

void draw() {
  if (variableOne < 0 && variableTwo < 0) {
    println("That was surprising...");
  }
  else {
    println("Just like I thought.");
  }
}
```

- Note that there is plenty of white space
- Everything is indented correctly
- `command-t` on a Mac / `control-t` on Windows to auto-format

???

- Ignore the actual (stupid) code here
- And ignore the lack of comments
- And the poor naming
- We'll get to those

---

background-image: url(images/turing.png)
background-style: contain

# No.

???

- NOT LIKE THIS
- "endoh1" from the 24th International Obfuscated C Code Contest (2015)

---

# Commenting

- The Pong code template for the midterm is commented thoroughly but not excessively
- Every file should have an _introduction_ at the top that explains it
- Every _function_ and _method_ should have an _explanation_
- Any _potentially confusing/difficult line_ should have an _explanation_
- Comments should be written in _plain language_
- They should _not_ just restate exactly what the code does

---

# Not like this...

```java
void update() {
  x += vx;
  y += vy;

  if (y - SIZE/2 < 0 || y + SIZE/2 > height) {
    vy = -vy;
  }
}

void reset() {
  x = width/2;
  y = height/2;
}

boolean isOffScreen() {
  return (x + SIZE/2 < 0 || x - SIZE/2 > width);
}
```

- Well-written code is still quite readable
- But you _need comments_. "No comment" is not an option.

---

# Not like this...

```java
// updates the ball's x and y location with vx and vy and
// checks if y minus SIZE/2 is less than 0 or if y plus
// SIZE/2 is greater than height and if it is it sets vy
// to negative vy
void update() {
  // Add vx to x
  x += vx;
  // Add vy to y
  y += vy;
  // Check if y - SIZE/2 < 0 or y + SIZE/2 > height
  if (y - SIZE/2 < 0 || y + SIZE/2 > height) {
    // set vy to negative vy
    vy = -vy;
  }
}
```

- Comments should not just _restate_ the code literally in English (or French)
- Comments are meant to _explain_ the code

---

# Naming

```java
void draw() {
  background(backgroundColor);

  leftPaddle.update();
  rightPaddle.update();
  ball.update();

  ball.collide(leftPaddle);
  ball.collide(rightPaddle);

  if (ball.isOffScreen()) {
    ball.reset();
  }

  leftPaddle.display();
  rightPaddle.display();
  ball.display();
}
```

- Name your variables and functions and methods with names that explain what they do

---

# Just, no.

```java
void draw() {
  background(gg);

  lp.upit();
  rp.upit();
  zoomer.zoomitbaby();

  zoomer.bap(lp);
  zoomer.bap(rp);

  if (zoomer.wtf()) {
    zoomer.nuhUh();
  }

  lp.s();
  rp.s();
  zoomer.hereItIs();
}
```

- "Same" code. Just awful.
- Nobody knows what this does anymore.

---

# Leading by example

- I will do my very best to follow all these rules myself when I show or give you code
- With the exception of brevity to fit on a slide, or because we're just trying something
- If you see code from me that breaks any of these rules, tell me
- I'll apologise

---

# The [Midterm Project](https://github.com/pippinbarr/cart253-2017/wiki/Midterm-Project)

- It's still here!
- Now you know the basics of OO it should make sense
- Shall we look at the code quickly?

---

# The Computation Lab

- It's still there!
- Sabine reports that she isn't seeing many people come by
- It's a really important resource for getting help outside class hours
- It's better to use it early than let things get into crisis-mode

---

# Homework/Nowwork
- __Now:__ Finish [Exercise 02](https://github.com/pippinbarr/cart253-2017/wiki/Exercise-02) if you haven't and make sure it is submitted (pushed to your repository online) and that you and your repository are listed on the [People](https://github.com/pippinbarr/cart253-2017/wiki/People) page.
- [Exercise 03](https://github.com/pippinbarr/cart253-2017/wiki/Exercise-03) is on the wiki and due next week
- Work on the [Midterm Project](https://github.com/pippinbarr/cart253-2017/wiki/Midterm-Project), pitch ideas to us!
- The readings from _this week_ are chapters 8 and 10 of _Learning Processing_ (objects and algorithms)
- The reading for _next week_ is chapter 11  of _Learning Processing_ (debugging)
- That is, next week is a _light week_ in terms of lecture to focus on the Midterm
