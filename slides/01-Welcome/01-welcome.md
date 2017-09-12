class: middle

# CART 253 | 01 | Welcome

## Introducing Creative Computation I

???

Welcome welcome!

---

class: middle

## Introducing Creative Computation I

## Introducing ourselves

## Introducing Processing

## Drawing

## Living code

---

class: middle

# Introducing Creative Computation I

---

class: middle

# The course repository

http://www.github.com/pippinbarr/cart253-2017/

???

- [The course repository](http://www.github.com/pippinbarr/cart253-2017/) contains
  - The course wiki
  - The solutions to examples from _Learning Processing_ as we get to those chapters
  - These slides, written in [Markdown](https://en.wikipedia.org/wiki/Markdown) and using [Remark.js](https://remarkjs.com/#1)
    - You can view the slides by going to
      - https://pippinbarr.github.io/cart253-2017/slides/01-Welcome/ (For week one, for instance)
    - You can press `F` to put the slides in full screen
    - You can press `P` to put the slides in presenter mode (but avoid this during class please)

---

class: middle

# The course wiki

http://www.github.com/pippinbarr/cart253-2017/wiki

???

- The course wiki, which contains
  - Course philosophy
  - Course outline
  - Course schedule
  - Exercises

---

class: middle

# The course software

__Processing__  –  http://www.processing.org/

---

class: middle

# The course textbook

[Learning Processing](http://learningprocessing.com/) by Daniel Shiffman

[Available digitally](http://clues.concordia.ca/search?/Xlearning+processing&SORT=D/Xlearning+processing&SORT=D&SUBKEY=learning+processing/1%2C1979%2C1979%2CB/frameset&FF=Xlearning+processing&SORT=D&1%2C1%2C) on ScienceDirect via the Concordia library

???

* On the course wiki:

https://github.com/pippinbarr/cart253-2017/wiki/Learning-Processing

---

class: middle

# The course evaluation

- Exercises
- Mid-term project
- Final project ([Last year's final projects](https://vimeo.com/195505173))

???

- Exercises will be very explicit and step by step
- Mid-term will involve modifying existing code in interesting way
- Final project will be open, you can think about it starting now!
  - While you're writing code or reading code, let it influence how you're thinking about your final project!

---

class: middle

# Introducing ourselves

---

class: bottom
background-image: url(images/pippin.png)
background-style: contain

## .highlight[Hi, my name is Pippin...]

---

class: middle

- Office: EV 6.745
- Website: [pippinbarr.com](http://www.pippinbarr.com)
- Email: [pippin.barr@concordia.ca](mailto:pippin.barr@concordia.ca)
- Twitter: [@pippinbarr](http://www.twitter.com/pippinbarr)
- Instagram: [@pippinbarr](http://www.instagram.com/pippinbarr)
- Lab: [Technoculture, Art and Games (TAG) Lab](http://tag.hexagram.ca)
- Institute: [Milieux Institute for Arts, Culture and Technology](http://milieux.concordia.ca)

---

class: middle

## We have a wonderful teaching assistant!

---

class: middle

## Hi, my name is ...............

## My programming experience is ...............

## My reason for doing Computation Arts is ...............

---

class: middle

# Introducing Processing

---

class: middle
background-image: url(images/processing-window.png)
background-size: contain

## .highlight[Hi, my name is... Processing]

???

- Launch Processing on your computer.
- (On a Mac: Command-Space to use Spotlight and then type “Processing” is a nice way.)
- (Or you can find it in the Applications folder on the computer.)

---

class: middle

# Say "Hello"

0. Type the following text into the text area:

```java
println(“Hello, World!”);
```

0. Press the play button at the top left of the window.

0. Look at the black area below the text area.

0. Feel the sheer power of programming.

---

class: middle

# The interface

We'll learn the Processing interface as we go, but for now notice:

- The play and stop buttons
- The console and errors tabs
- The Help menu
- The File > Examples menu

???

- The play button runs your sketch/program
- The stop button stops your sketch/program
- The Help menu has links to useful webpages on the Processing website
- The Examples menu contains a lot of example sketches that do fun things

---

class: middle

# Why Processing?

It is a programming environment made specifically for people to learn how to program from a creative perspective

It is actually a more friendly window into Java, which is a Real Serious Programming Language™

It is free, open-source, and has an excellent community around it

???

All that said, we will gradually be looking to shift toward JavaScript in the next two years, and you will be learning JavaScript in other courses as well.

Fear not, learning Processing will get you a long way toward learning every other programming language out there.

---

class: middle
background-image: url(images/my-little-piece-of-privacy.png)
background-size: contain;

## .highlight[[Feel the power...](http://www.niklasroy.com/project/88/my-little-piece-of-privacy)]

???

[My Little Piece of Privacy by Niklas Roy
http://www.niklasroy.com/project/88/my-little-piece-of-privacy

I also made my first ever game [GuruQuest](http://www.pippinbarr.com/2011/05/02/guruquest/) in Processing!

---

class: middle

# Drawing

---

# The grid

- Computer screens are divided up into _pixels_
- Everything we see on the screen involves setting the colours of the pixels
- By changing the colours of pixels over time, things appear to move!
- If you can zoom your screen, you can even see the individual pixels!

???

- What does 'pixel' stand for? _Picture Element_!
- On a Mac you can go to the Accessibility Settings and activate Zoom
- On Windows you can use the _Magnifier_ application

---

class: middle
background-image: url(images/grid-plain.png)
background-style: contain


---

class: middle

# Where on the grid?

- In a graphics application you specify what pixel you want to change the colour of by just clicking on it with a pencil or paintbrush...
- But if you're programming you're working in text...
- ... so how would you refer to a specific pixel?
--

- That's right! It's our friend _coordinates_!

---

class: middle

# Life on the grid

- Just like on a graph we have an _x-axis_ and a _y-axis_
--

- The x-axis starts at the _left_ of the screen (or window)
--

- The y-axis starts at the...
--
_top_ of the screen (or window)
--

- And we count pixels along the axes from _zero_ up

???

---

class: middle
background-image: url(images/grid-axes.png)
background-style: contain

---

class: middle

# There on the grid!

- We specify the location of a pixel on the screen (or in our window) by giving its coordinates
- Like in maths etc. we specify coordinates as _(x,y)_
--

- So where would (5,2) be?
--
 _Exactly_. _6_ pixels to the right from the left edge and _3_ pixels down from the top edge
--

- And where would (525,100) be?
--
 _Uh-huh_. _526_ pixels to the right from the left edge and _101_ pixels down from the top edge

???

- Let's actually try this out with a tiny bit of code so we can see how it looks in processing
- For this we're going to use two instructions, `size()` and `point()` that we'll come back to
- Here's some code to draw a pixel at (5,5) in a tiny little window!

```java
size(10,10);
point(5,2);
```

- Note that although (525,100) is _out of the window_ you can still refer to it and draw things there...

---

class: middle

# Getting to the `point()`

- We saw just now that we can tell Processing to draw a point using the command `point()`
--

- In programming we call that _calling a function_
--

- The function is called `point` and we _call_ it to ask it to draw a point (makes sense)
--

- Let's look at how the function works in some detail...

---

class: middle

# `point(x,y);`

- So this is the _function_ for drawing a point in our window

---

class: middle

# .codeHighlight[`point`]`(x,y);`

- First we have the _name_ of the function, which is `point`
- In a perfect world the name of the function tells us what it does!
- The name of a function is _case sensitive_ and _spelling sensitive_
- Welcome to programming, where the tiniest inaccuracy will break everything!

---

class: middle

# `point`.codeHighlight[`(`]`x,y);`

- Next we have an _opening parenthesis_ (or _bracket_ if you prefer)
- This tells Processing we are about to give it the information it needs to carry out the function
- In the case of our `point` that will be the _coordinates_ of the point
--

- There are a _lot_ of parentheses in programming and if you miss one, things break. Sorry!

---

class: middle

# `point(`.codeHighlight[`x`]`,y);`

- Now we give the function the first piece of information it needs to draw the point, known as a _parameter_
- Which is the _x coordinate_
- We would need to replace this `x` with an actual number, like `10`
- I'm writing it as `x` here because it better shows us what the nature of this parameter is

---

class: middle

# `point(x`.codeHighlight[`,`]`y);`

- Because we have _multiple parameters_ we need a _comma_ next
- The parameters of a function are always separated by commas like this

---

class: middle

# `point(x,`.codeHighlight[`y`]`);`

- Now we give the function the final piece of information it needs to draw the point, the second _parameter_
- Which is the _y coordinate_
- Again, we would replace with this an actual number, like `55`

---

class: middle

# `point(x,y`.codeHighlight[`)`]`;`

- Now we've finished giving all the parameters the function needs
- So we _close_ the parentheses we _opened_ earlier to say "that's the end of the parameters!"
- Making sure your parentheses _match_ is really important
- And yet we will all, many times, forget to do so
- Because we are humans
- Right?

---

class: middle

# `point(x,y)`.codeHighlight[`;`]

- Now we meet an aspect of coding that nobody really enjoys
- The semicolon or `;`
- In programming, we put a semicolon at the end of instructions we give the computer
- It basically means "I'm finished telling you what I want you to do for this line!"
- It's so, so, _so_ easy to forget semicolons
--

- But please don't
--

- But you will. And that's okay.

---

class: middle

# `point(x,y);`

- That was kind of exhausting, but that's how we call a function in Processing
- (And in most other programming languages, too)
- We give its name, specify the parameters, and end with a semicolon
- So now we can read something like `point(10,15);` and know that it means...
--

- _Draw a point at position (10,15) in the window!_

---

class: middle

# `size()` matters

- So far we've been drawing our points on the default size window for Processing, which is 100x100
- That's kind of small
--

- Fortunately we can specify the size of window we want with a command called...
--
 `size();`
--

- We use it like this:

`size(w,h);`

- Where `w` is the width of the window we want, and `h` is the height of the window we want

???

- Try out a new `size()`...
- Like `size(640,480);`
- or `size(1,1000);`!

---

class: middle

## Shapes

???

- Drawing points on a tiny grid is not especially inspiring
- We'd have to draw all the pixels to make up a shape individually!
- Luckily there are other functions!
- Let's learn some other functions!
- They all work in really similar ways!

---

class: middle

# So you want to draw a line...

- What do you think the function would be called?

--

`line()`
--

- And what parameters does it need?
--

- It needs the starting coordinates and the ending coordinates!
- So how will it look with parameters?

--

`line(x1,y1,x2,y2);`

--

`line(0,0,100,100);`

---

class: middle

# So you would also like to draw a rectangle...

- What would the function be called?

--

`rect()`  

???

- Sorry if you thought it would be `rectangle()`
- It probably should be!

--

- And what would its parameters be?

--
- There are a few different and reasonable options here, but the one Processing uses by default is

`rect(x,y,w,h);`

- That is, the (x,y) coordinates of the _top left corner_ of the rectangle, and then its _width_ and _height_

---

class: middle

# What about a circle?

- What would the function be called?

--

`ellipse()`

???

- Ha ha, surprise!
- It's kind of reasonable, since a circle is just a specific kind of ellipse

--

- And what would its parameters be?

--
- Again, there are different options, but the default in Processing is

`ellipse(x,y,w,h);`

- The (x,y) coordinates of the _centre_ of the ellipse, and then its _width_ and _height_

---

class: middle

# And so on!

`point(x,y);`  
`line(x1,y1,x2,y2);`  
`rect(x,y,w,h);`  
`ellipse(x,y,w,h);`  
`triangle(x1,y1,x2,y2,x3,y3); // New!`  
`quad(x1,y1,x2,y2,x3,y3,x4,y4); // New!`

???

- Let's try these out just to make sure we get this idea of typing in commands (functions) and getting results!

---

class: middle

# But...

- A question arises: "How the heck am I supposed to _know_ the names and parameters and effects of all this stuff???"
--

- It's a good question, and the answer for us is [The Processing Reference](http://www.processing.org/reference).
- In fact, _no_ programmer "just knows" all the possible functions and their parameters
- All of us are _constantly_ looking things up in the reference to remember them or to find new things
- Getting used to reading the reference is a crucial skill

---

class: middle

# Different ways to draw the same shapes

- As we saw a few times, there are different ways to specify something like a rectangle
- You might give the top-left corner and width and height
- But you might also give the center and width and height
- Or you might even give the top-left corner and the bottom-right corner
- And you might even have a preference!
- Processing gives us functions for us to _tell_ it which style we like...

---

class: middle

# `rectMode()`

`rectMode(CORNER);`  
The _default_ we're used to (top-left corner and dimensions)

`rectMode(CENTER);`  
Instead of the top-left corner the `x` and `y` in `rect(x,y,w,h)` now specify the _center_ of the rectangle

`rectMode(CORNERS);`
Now you write it `rect(x1,y1,x2,y2)` where the first coordinates are the top-left corner and the second coordinates are the bottom-right corner

---

class: middle

# `ellipseMode()`

We can do all the same things with the same results to set different ways of drawing an `ellipse()` as well:

`ellipseMode(CENTER);`  
The _default_ we're used to (draw from the center)

`ellipseMode(CORNER);`  
Specify the top-left 'corner' of the ellipse

`ellipseMode(CORNERS);`  
Specity the top-left and bottom-right 'corners' of the ellipse

---

class: middle

# Pop-quiz, hotshots!

- Why does `ellipse(0,0,50,50)` look the same with both `CORNERS` and `CORNER`?

- How can we draw a rectangle in the center of the window?

- How can we draw an ellipse centered on the bottom-right corner of the window?

???

- Remember that we need to know the dimensions of our window to do this, either by using `size()` or remembering the default size is 100x100

---

class: middle

# Remember the Reference

- Don't forget you don't have to _memorise_ everything
- _Use the reference!_

http://www.processing.org/reference

???

- With the reference in mind, I will spend a lot less time laboring over every detail of every function we learn
- Instead, if you have any doubts you can
  - Ask me, obviously
  - But more importantly, you can look things up and check for yourself!

---

class: middle

# Make it grey

- All the points, lines, and shapes we've drawn have had a black outline and a white fill on a grey background
- But we can specify what shade of grey Processing will use for these things with more functions!

`background(shade);` sets the background shade

`fill(shade);` sets the fill shade

`stroke(shade);` sets the line shade (includes the lines around the edges of shapes)

---

class: middle

# Two-hundred and fifty-six shades of grey

- Shades of grey in Processing are just numbers
- Specifically you can use numbers between 0 and 255
- `0` means _black_ (you can think of the 0 as meaning a total absence of white)
- `255` means _white_ (all the white!)
- `127` means a _mid-grey_ (half-way between black and white)
- (Notice how our old friend 'counting from zero' is making an appearance again!)

---

class: middle

# And so...

We can put our numbers meaning different greys into our functions for setting background, fill, and stroke!

`background(0);` means set the background to black

`fill(220);` means set the fill to a very light grey

`stroke(50);` means set the stroke to a kind of charcoal grey

Let's try!

???

- An important thing to notice and to remember is that like `rectMode()` and `ellipseMode()` these 'stay on' until you change them
- So if you set a `fill()` then _every_ shape will have that fill until you set something else

---

class: middle

# Colourful nights

- We're not actually limited to making arthouse movie-style things in black and white
- If we use _three_ numbers instead of one, we can set colours instead
- What do you think the three numbers refer to?
--

- Exactly, the _red_, _green_, and _blue_ amounts for our colour
- That is, we're using the _RGB colour model_

---

class: middle

# And so...

`background(255,0,0);` sets the background to pure red
--


`background(0,0,255);` sets the background to...
--
 pure blue
--


`background(85,107,47);` sets the background to...
--
 a kind of olive-ish green?

---

class: middle

# Finding colours

- In Processing in the __Tools__ menu you'll find a __Color Selector__ that you can use to pick a colour and see its RGB values
- You can do similar things in applications like Photoshop, which may also give you an 'eyedropper' to pick colours from your screen
- You can also Google 'RGB colour picker' and it will bring one up
- Plenty of ways to find colours

???

- You might notice in the color selector that if you hit _Copy_ it actually copies a set of numbers and letters after a hash symbol, like #12FF08.
- This is called the _hexadecimal_ representation of the colour and you can use it in your code too if you want, as in

`background(#00FF00);` sets a pure green background

---

class: middle

# Losing colours

- You might want to make things transparent sometimes - e.g. give them _no colour at all_
- You can do this with the following functions:

`noFill();` means have transparent fill

`noStroke();` means have transparent stroke

---

class: middle

# See-through colours

- On computers colours often have an _alpha_ value which refers to how transparent the colour should be
- In Processing we can set this by adding an extra number to our RGB colours
- `0` means completely transparent, `255` means completely opaque
- So `fill(255,0,0,127);` will give us a semi-transparent red
- And `stroke(0,0,0,0);` will give us an invisible black line!

---

class: middle

# Pop-quiz

What will we see on our screen with this code? (Try not to cheat by typing it into Processing!)

```java
size(640,480);
background(100,0,0);
fill(255);
rect(0,0,250,250);
noStroke();
fill(0,0,250,250);
ellipse(250,250,250,250);
background(0,100,0);
```

???

- It's a traaaap!
- That final `background()` will overwrite everything on the screen with a dark green!

---

class: middle

# Food for thought

- We're now able to see "behind the scenes" of software
- One thing we know now is that Processing doesn't really know about "rectangles", it just knows how to set a particular set of pixels to a particular colour
- If we wanted that rectangle to move, _we_ would have to write the code to move it
- As Spiderman's uncle said, "_With great power comes an excruciating amount of time and effort!_"

---

class: middle

# Living code

---

class: middle

# Deadish code

- So far the code we've written just runs once and stops
- Processing carries out our instructions from the top to the bottom and that's that
- But that's not going to lead to especially interesting programming
- And in particular we're not going to be able to make something _interactive_ this way

- _So what do we need?_

???

- There are many ways to answer this question
- But something along the lines of
  - Execution over time
  - and Reaction in time

---

class: middle

# The three parts of interactive code

- Generally speaking there are three key elements involved in interactive applications

1. We _set up_ the initial conditions of the program
2. We _update_ the state of the program over and over to carry out the program's instructions over time
3. We _handle events_ like user and other input

---

class: middle

# Set up

- Before a program really gets going, we often want to set some starting conditions that will help to define how it runs

In a game, for example, we might need to create the player's avatar, put it in front of the door of the dungeon, load the sound effects of the player's footsteps, configure the physics parameters that will be applied during play, etc.

- These are all things we want to do _once_ at the _start_ of the program

---

class: middle

# Update

- Once the program is ready, we want it to keep running until it's time to stop
- The way we tend to do this is with an _update loop_, which runs code for making the program work over and over again (once per frame)

In a game, for example, every frame we need to run the physics simulation, animate the avatar, play a footstep sound if the player is moving, check if the player has made contact with the door so we can open it for them, etc.

- These are all things we want to do _every frame_ that the program runs

---

class: middle

# Handle events

- While a program is running, we want to be able to react to input either from the person using it, or from other sources
- Sometimes we can do this in the _update loop_ and sometimes we have special functions called _event handlers_ which run only when a specific kind of event happens (like a mouse click, say)

In a game, for example, we need to react whenever the player presses the spacebar by making the avatar jump, and we also need to react when the player is within 10 meters of an orc by having the orc run after them, etc.

- These are things we want to do _in reaction to events_

---

class: middle

# Set up, update, handle events

So, one more time

1. We _set up_ the conditions for our program
2. We _update_ the state of our program every frame
3. We _handle events_ that occur while our program is running

- That's the secret to writing interactive software!
- And Processing has already got specific ways of dealing with these things!

---

class: middle

# `setup()`

```java
void setup() {
  size(640,480);
  fill(255,0,0);
  stroke(0,255,0);
}
```

- This is the Processing `setup()` function
- It's where we write what we want to happen at the _start_ of our program
- It's also the first time we're _writing a function_ ourselves
- So let's look at this piece by piece...

---

class: middle

# `setup()`

```java
void setup() {  
  size(640,480);
  fill(255,0,0);
  stroke(0,255,0);
}
```

- First we have .codeHighlight[`void`]
- We're going to a_void_ talking about it for now, ha ha
- But no, seriously, we'll talk about it in two weeks time!
- For now, just know it _needs to be there_

---

class: middle

# `setup()`

```java
void setup() {  
  size(640,480);
  fill(255,0,0);
  stroke(0,255,0);
}
```

- Next we have .codeHighlight[`setup`]
- This is the _name_ of the function
- In this case, `setup` is the name of a function Processing _already_ knows about
- But later we'll learn how to make up our _own_ functions, too
- Notice how the _name explains what the function is for_

---

class: middle

# `setup()`

```java
void setup() {  
  size(640,480);
  fill(255,0,0);
  stroke(0,255,0);
}
```

- Next we have empty parentheses, .codeHighlight[`()`]
- We know from earlier that this is where the parameters go when we _call_ a function
- When we're _writing_ a function it's where we say what the parameters need to be
- `setup()` has no parameters, but we still _need_ these empty parentheses here to _tell Processing there are no parameters_

---

class: middle

# `setup()`

```java
void setup() {  
  size(640,480);
  fill(255,0,0);
  stroke(0,255,0);
}
```

- Next we have an _opening curly bracket_, .codeHighlight[`{`]
- Now that we've given the name and parameters of our function, this opening curly bracket means "now I'm going to tell you what to _do_ in this function"
- So in this case the curly bracket means "now I'm going to tell you _how to set up_ the program, do this stuff _once at the start_"

---

class: middle

# `setup()`

```java
void setup() {  
  size(640,480);
  fill(255,0,0);
  stroke(0,255,0);
}
```

- After the opening curly bracket we have three lines of example code that would run when this program starts
- In this case it sets the size of the window, and sets colours for fill and stroke

---

class: middle

# `setup()`

```java
void setup() {  
  size(640,480);
  fill(255,0,0);
  stroke(0,255,0);
}
```

- Finally, we have the _closing curly bracket_ on its own line, .codeHighlight[`}`]
- This means "I'm done telling you what to do in this function"
--

- Sad fact: you and everyone you love will forget to put curly brackets in the right place and those programs will not work for that reason

---

class: middle

# `draw()`

```java
void draw() {
  rect(0,0,100,100);
}
```

- This is the Processing `draw()` function
- It's where we write what we want to happen _every frame_ of our program
- As you can see, it's _syntactically_ the same as the `setup()` function
- In this case the program will draw a rectangle every frame! Exciting!

---

class: middle

# Let's try this...

```java
void setup() {  
  size(640,480);
  fill(255,0,0);
  stroke(0,255,0);
}

void draw() {
  rect(0,0,100,100);
}
```

- So here is an actual Processing program that runs over time
- What will happen?
--

- Kind of a downer - it's a bit like _nothing_ happens!
--

- But it's not that _nothing_ is happening, it's that nothing is _changing_!

---

class: middle

# Let's try this again...

```java
void setup() {  
  size(640,480);
  fill(255,0,0);
  stroke(0,255,0);
}

void draw() {
  rect(0,0,100,100);
}
```

- Based on our knowledge, what could we change to make the fact our program is running visible?

???

- Using transparency is a nice option based on what we know
- Question: On my computer if I use a fill of `fill(255,0,0,1);` it never goes totally red... why?
- Seriously... why?

---

class: middle

# What was the other thing?

- We now have `setup()` for getting our program ready to run
- And we have `draw()` that runs every frame so that our program works over time
- What was that other thing?
--

- Oh yeah, we need to _handle events_ so that our program doesn't just ignore us the whole time

---

class: middle

# `mouseX` and `mouseY`

- One nice way to react to the user is to know where their mouse is in our window
- And Processing gives an easy way to get that location
- The x coordinate of the user's mouse is called `mouseX`
- The y coordinate of the user's mouse is called `mouseY`
- These two things are called _variables_ and we'll talk about them next week
- Let's see this in action...

---

class: middle

# `mouseX` and `mouseY`

```java
void setup() {
  size(640,640);
  fill(255,0,0);
  stroke(100,0,0);
  background(255,255,255);
}

void draw() {
  rect(mouseX,mouseY,25,25);
}
```

--

- Holy crap it's a drawing program!

???

- What if we didn't want this to draw, but instead just move a rectangle around?

---

class: middle

```java
void setup() {
  size(640,640);
  fill(255,0,0);
  stroke(100,0,0);
}

void draw() {
  background(255,255,255);
  rect(mouseX,mouseY,25,25);
}
```

- Holy crap it's like the start of a game with the mouse as an avatar!

---

class: middle

# Event handlers

- Processing also has some special functions like `setup()` and `draw()` that let us react to user input
- The easiest ones to understand right now are probably the ones to do with pressing buttons on the computer
- Specifically, Processing can tell when the user presses a key on the keyboard or clicks their mouse button

---

class: middle

# `mousePressed()`

```java
void setup() {
    size(640,480);
}

void draw() {

}

void mousePressed() {
  rect(mouseX,mouseY,10,10);
}
```

- What do we think this would do?

--
- Exactly. When we click the mouse in our window, a little rectangle gets drawn at the click location

---

class: middle

# `mouseReleased()`

```java
void setup() {
    size(640,480);
}

void draw() {

}

void mouseReleased() {
  rect(mouseX,mouseY,10,10);
}
```

- Same thing, but now the rectangle is drawn when we _let go_ of the mouse button
- Subtle, but sometimes we want to make the distinction

---

class: middle

# `keyPressed()`

```java
void setup() {
  size(640,480);
}

void draw() {

}

void keyPressed() {
  rect(mouseX,mouseY,10,10);
}
```

- Same thing, but now the rectangle is drawn when we press a _key_
- `keyReleased()` exists too and does what you might expect!
- In fact, there's more, and you can look it up under _Input_ in the [Processing Reference](https://processing.org/reference/)

---

class: middle

# Actual programming

- We've come a long way!
- We can now write a Processing program that

  - Sets up the starting conditions
  - Runs over and over each frame
  - Reacts to user input
- There's more to come, but that's a lot of the heart of writing code!

---

class: middle

# Food for thought

- Now when we think about interactive software we're not just the people _using it_, we're the people _making it_
- We're like gods, creating little worlds for our users or players to interact with
- Which means we have to think not just about what we want to happen, but also about what the user/player _might do_
- And that is where _design_ and _technology_ meet in programming

---

class: middle

# Next week

- We're going to learn about __variables__ and __conditionals__
- Readings from _this week_ are chapters 1, 2, and 3 of _Learning Processing_
- Readings for _next week_ are chapters 4 and 5 of _Learning Processing_
- You can decide whether you want to read the readings _before_ or _after_ our lectures

---

class: middle

# On leaving

- If you want to leave studio time like 10 minutes early at the end of class, that's fine
- If you need to leave earlier than that for some reason, talk to Pippin - otherwise it'll be counted as an absence!

---

class: middle

# Now / Homework

- In Processing __go to `File > Examples` and play around with stuff__ (change numbers, go wild!)
- __Do [Exercise 00](https://github.com/pippinbarr/cart253-2017/wiki/Exercise-00)__. Note that it is __not graded__ and __not submitted__, but look at it anyway! (It introduces _comments_ for one thing.)
- __Do exercises from [Learning Processing](https://github.com/pippinbarr/cart253-2017/wiki/Learning-Processing)__ chapters 1, 2 and 3 to experiment with what we've learned.
- __.codeHighlight[**]__ __[Sign up](https://github.com/) for a GitHub account__ if you don't have one already.
- __.codeHighlight[**]__ __Add yourself to the [People](https://github.com/pippinbarr/cart253-2017/wiki/People) page__ on the course wiki. (Part of your participation grade.)
- __.codeHighlight[**]__ __Come with me to the Computation Lab at the end of class__ to meet Sabine and see where it is.
