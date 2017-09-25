class: middle

# CART 253 | 03 | Loops and functions

---

class: middle

# Any questions about [Exercise 01](https://github.com/pippinbarr/cart253-2017/wiki/Exercise-01)?

---

class: middle

## Loops

## Functions

## GitHub?

???

- Today is about two new key structures in programming
- One is about leveraging the awesome power of computers not to get bored doing the same thing over and over: loops
- The other is about being able to better organise our code so we don't get totally confused


---

class: middle

# Loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops loops

---

class: middle

# Repetition

- We've seen how useful repetition is in _time_ to create a dynamic program using the `draw()` loop
- But repetition can also be useful when we just need to do the 'same kind of thing' over and over in our code

---

class: middle

# Building the fence...

```java
int boardWidth = 20;
int boardHeight = 200;

size(640,480);
background(100,200,100);
fill(100,80,80);

rect(0,height-boardHeight,boardWidth,boardHeight);
rect(1*boardWidth,height-boardHeight,boardWidth,boardHeight);
rect(2*boardWidth,height-boardHeight,boardWidth,boardHeight);
rect(3*boardWidth,height-boardHeight,boardWidth,boardHeight);
rect(4*boardWidth,height-boardHeight,boardWidth,boardHeight);
rect(5*boardWidth,height-boardHeight,boardWidth,boardHeight);
...
```
--
And then you die of boredom.

---

class: middle

# But I don't want to die of boredom...

- This feels too much like work, and computers are meant to do that!
- Can't we just tell Processing how to draw _one_ board, and have it understand how to draw all of them?
- Yes, we can do that
- And it's called a _loop_

---

class: middle

# `while`ing away the time...

```java
while (condition) {
  // Do something, like draw a board!
}
```

- This will execute the code inside the curly brackets _over and over_ for as long as the _condition is true_
- It checks the condition, if it's true it runs the code, then it checks the condition again, if it's true it runs the code, and so on until the condition is _false_, then it's over.

???

- It's like an `if` statement except it runs the code over and over until the condition is false

---

class: middle

# Building that fence...

```java
while (theFenceIsNotBuilt) {
  // Add a board
}
```

- This is theoretically what we need, but obviously it won't work
- We need some specific elements...

---

class: middle

# In the loop

- There are three main things we need to know when we write a loop:

  - A __start condition__ that defines the way things are before the loop starts. (The fence is not built.)
  - A __stopping condition__ that defines when we should stop our loop. (The fence is built.)
  - One or more __actions__ that are carried out in the loop that eventually cause it to stop. (Add one board.)

---

class: middle

```java
int boardX = 0;
int boardWidth = 20;
int boardHeight = 200;

size(640, 480);
background(100,200,100);
fill(100,80,80);

while (boardX < width) {
  rect(boardX, height-boardHeight, boardWidth, boardHeight);
  boardX += boardWidth;
}
```

???

- Here we have a loop version of building the fence!
- The start conditions are the variables along with the size of the window
- The stopping condition is when `boardX` is greater than the width (we've filled the window)
- The actions are to draw a board in the current location, and then _move_ the location to the right

---

class: middle

# The loop

```java
while (boardX < width) {
  rect(boardX, height-boardHeight, boardWidth, boardHeight);
  boardX += boardWidth;
}
```

- The loop _ends_ when `boardX` is greater than the width (e.g. we've drawn a fence all the way across the window)
- Notice that we need to _change_ `boardX` in the loop or it would _never end_
- So we need that condition to become _false_ at some point

---

class: middle

# So what does this do?

```java
void setup() {
  size(640,480);
}

void draw() {
  int currentLocation = 0;
  while (currentLocation < mouseX) {
    rect(currentLocation,mouseY,10,10);
    currentLocation += 20;
  }
}
```

---

class: middle

_This is the song that doesn't end_  
_Yes it goes on and on my friend_  
_Some people started singing it, not knowing what it was_  
_And they'll continue singing it forever, just because..._  
_This is the song that doesn't end_  
_Yes it goes on and on my friend_  
_Some people started singing it, not knowing what it was_  
_And they'll continue singing it forever, just because..._  
_This is the song that doesn't end_  
_Yes it goes on and on my friend_  
_Some people started singing it, not knowing what it was_  
_And they'll continue singing it forever, just because..._  
_This is the song that doesn't end_  
_Yes it goes on and on my friend_  
_Some people started singing it, not knowing what it was_  
_And they'll continue singing it forever, just because..._  
_This is the song that doesn't end_  
_Yes it goes on and on my friend_  
_Some people started singing it, not knowing what it was_  
_And they'll continue singing it forever, just because..._  
_This is the song that doesn't end_  
_Yes it goes on and on my friend_  
_Some people started singing it, not knowing what it was_  
_And they'll continue singing it forever, just because..._  

???

- The song that doesn't end from Lamb Chop Play-ALong: https://www.youtube.com/watch?v=HNTxr2NJHa0

---

class: middle

```java
while (true) {
  singTheSongThatDoesntEnd();
}
```

- This is an infinite loop
- It is evil, because will never end, which is a really long time
- It will crash the program
- And sadly not all infinite loops are as obvious as this one

---

class: middle

# Is this... okay?

```java
void draw() {
  int x = 0;
  while (mouseX < width) {
    rect(x,mouseY,10,10);
    x += 20;
  }
}
```

???

- What happens here?
- It kind of looks like the code from earlier and that it should draw squares between the left of the window and the mouse position
- But there's a trap here, which is that `mouseX` will _never change_ because we don't ever repeat the `draw()` loop
- `mouseX` will always be `0`, and so the `while` condition will always be `true`

---

class: middle

# Bean counting

- In programming, a lot of the time what we want to do with a loop is to perform some action a _set number of times_
- Basically we want the program to count up to some number, doing an action with each count
- There is a special kind of loop syntax for exactly this situation
- It's called a `for` loop

---

class: middle

# `for` what it's worth...

```java
for (int i = 0; i < 10; i++) {
  println("The value of i is " + i);
}
```

- This `for` loop counts from `0` to `9` in the variable `i` and prints out the value of `i` each time
- So we will see "The value of i is 0", "The value of i is 1", "The value of i is 2", etc...
- Let's look at this syntax, which is a bit odd...

---

class: middle

# `for` what it's worth...

```java
for (int i = 0; i < 10; i++) {
  println("The value of i is " + i);
}
```

- First we have the word .codeHighlight[`for`]
- It means, "this is a `for` loop", somewhat unsurprisingly

---

class: middle

# `for` what it's worth...

```java
for (int i = 0; i < 10; i++) {
  println("The value of i is " + i);
}
```

- Next we have .codeHighlight[`(`], an opening parenthesis
- We know these days that this means "I'm going to give you the information needed to do this"
- Unlike a `while` loop, though, we give _three pieces of information_ in here

---

class: middle

# `for` what it's worth...

```java
for (int i = 0; i < 10; i++) {
  println("The value of i is " + i);
}
```

- The first part of the information here is .codeHighlight[`int i = 0`]
- This is the _starting condition_ of our loop
- In this case we're setting up a _counting variable_ (or _iterator_) that will count the times we've gone through the loop
- Calling it `i` is very traditional
- This happens _once_ at the very beginning of the loop

---

class: middle

# `for` what it's worth...

```java
for (int i = 0; i < 10; i++) {
  println("The value of i is " + i);
}
```

- Now we have .codeHighlight[`;`] to signal we're moving to the next piece of information
- Which is annoying, because normally we separate information commas!
- But in a for loop we separate with semicolons
- So be it

---

class: middle

# `for` what it's worth...

```java
for (int i = 0; i < 10; i++) {
  println("The value of i is " + i);
}
```

- Now we see .codeHighlight[`i < 10`]
- This is the _condition_ for this `for` loop
- While the condition is `true` the for loop keeps going, once it's `false` the `for` loop ends
- This is _checked at the start of the loop each time_

---

class: middle

# `for` what it's worth...

```java
for (int i = 0; i < 10; i++) {
  println("The value of i is " + i);
}
```

- Then we get .codeHightlight[`;`]
- Another day, another semicolon

---

class: middle

# `for` what it's worth...

```java
for (int i = 0; i < 10; i++) {
  println("The value of i is " + i);
}
```

- And now our third piece of information is .codeHighlight[`i++`]
- This is the _updating_ step that will run at the _end_ of the loop each time
- In this case we are adding `1` to `i` each time through the loop
- So the first time `i` is `0`, then it's `1`, then it's `2`, and so on
- Adding `1` is the most common update step by far
- But you can do other things if you want

---

class: middle

# `for` what it's worth...

```java
for (int i = 0; i < 10; i++) {
  println("The value of i is " + i);
}
```

- Finally, we have .codeHighlight[`{`], our opening curly
- Followed by the action we want to do over and over in the loop, in this case to print the value of `i`
- And at the very end we have .codeHighlight[`}`], our closing curly, to say the actions in the loop are finished

---

class: middle

background-image: url(images/for-loop-parts.png)
background-style: contain

---

class: middle

# Other `for`age

`for (int i = 0; i < 10; i += 2)`

`for (int i = 10; i > 0; i--)`

`for (int i = 0; i <= 100; i += 10)`

- And so on
- You can do whatever you want so long as you have a start condition, and end condition, and some useful update statement!

---

class: middle

# `for == while`

```java
int i = 0;
while (i < 10) {
  println(i);
  i++;
}
```

```java
for (int i = 0; i < 10; i++) {
  println(i);
}
```

These are exactly the same thing.

`for` is just a bit shorter to write for the specific situation of _counting_.

---

class: middle

# Build that fence with `for`!

```java
int boardWidth = 20;
int boardHeight = 200;

void setup() {
  size(1024, 480);
  background(100,200,100);
  fill(100,80,80);
}

void draw() {
  for (int x = 0; x < width; x += boardWidth) {
    rect(x, height-boardHeight, boardWidth, boardHeight);
  }
}
```

???

- Notice how this isn't _animated_?
- That's because Processing runs the _whole for-loop_ each frame!

---

class: middle

# Scope!

---

class: middle

# Curly heaven!

- We are now in the business of using a _lot_ of curly brackets!
- For functions! For if-statements! For while-loops! For for-loops!
- And we're also using variables constantly!

- And it turns out there is a special and painful relationship between curly brackets and variables.
- It is called _scope_

---

class: middle

# The short and curly story

- Variables not inside _any_ curly brackets exist everywhere
- But variables _inside_ curly brackets _only_ exist in those curly brackets
- They _stop existing_ after the closing curly bracket!

---

class: middle

```java
void setup() {
  int x = 0;
  int y = 0;
}

void draw() {
  rect(x,y,10,10);
}
```

__NO!__

---

class: middle

```java
void setup() {
  int x = 0;
  int y = 0;
} // x and y STOP EXISTING HERE

void draw() {
  rect(x,y,10,10);
}
```

__NO!__

---

class: middle

```java
int x = 0;
int y = 0;

void setup() {

}

void draw() {
  rect(x,y,10,10);
}
```

__OKAY!__

???

- Variables declared at the top like this, outside any curly brackets, are called _global variables_
- They're fine, but they can cause trouble, so be aware that they're "a thing"
- We'll come back to this with object-oriented programming later on

---

class: middle

```java
if (9 < 10) {
  boolean nineIsLessThanTen = true;
}

if (nineIsLessThanTen) {
  println("Nine is less than ten!");
}
```

__NO!__

---

class: middle

```java
if (9 < 10) {
  boolean nineIsLessThanTen = true;
} // nineIsLessThanTen STOPS EXISTING HERE!

if (nineIsLessThanTen) {
  println("Nine is less than ten!");
}
```

__NO!__

---

class: middle

# Food for thought

- Loops reveal a kind of scary, Terminator-like aspect of computation
- The program is prepared to go on forever, until the end of the world, _it will not be stopped_
- If you say, "Hey, Processing, let's print all the numbers starting from zero, one each frame", then Processing will go ahead and do that
- Until you die.

---

class: middle

```java
int counter = 0;

void setup() {
  size(1000,500);
  fill(255);
  stroke(255);
}

void draw() {
  background(0);
  textSize(100);
  textAlign(CENTER,CENTER);
  text(counter,width/2,height/2);
  counter++;
}
```

???

- Here is some code to keep you company...
- ... FOREVER!!
- Although the `int` variable `counter` will also reach its maximum value of `2147483647`
- Which will take about 414 days at 60fps

---

class: middle

# `functions();`

---

class: middle

# Programs get big

- As soon as we want to do something even slightly impressive our programs start to get pretty complicated
- We have to write a lot of code to achieve what we want
- We need some way to deal with this level of complexity

---

class: middle

# Yay! Abstraction!

- Consider `rect(0,0,100,100);`
- We understand this as "draw a rectangle with its top left corner at 0,0 and a width and height of 100"
- But of course there's a _lot_ going on behind the scenes to transform that one line of code into an actual rectangle in our window...

---

class: middle

# `rect(0,0,100,100);`

- We call `rect(0,0,100,100);`
- In the Processing library it calls _another_ kind of `rect()` function
- That calls `rectImpl()`
- That one calls `quad()`
- Which calls `beginShape()` and `vertex()`
- And `vertex()` sets elements in an array called `vertices`
- ... and on and on it goes
--

- Thank god we don't need to know all that and can just say "draw a rectangle"

---

class: middle

# We're on a need-to-know basis

- In programming we only want to know as much as we _need_ to know to get our work done
- Computation is all about _hiding_ the details when they're irrelevant
- This ability to ignore those details frees us up to do more, better, and more creative work
- Now, of course, we know more than we used to - we know about the code level

---

class: middle

# It would be nice to hide things from ourselves!

- Given how helpful it is to have all the details of `rect()` hidden...
- ... it would be nice if we could use this trick of hiding stuff ourselves
- We already do this with variables in some sense, hiding changing numbers inside names
- But we could think more clearly about our code if we could tidy it up based on what it does

---

class: middle

# doThatThingYouDo();

- It will not surprise you to learn that we _can_ hide things from ourselves
- Just like we use the `rect()` function to draw a rectangle without know how it works...
- ... we can define our _own_ functions to organise our code

---

class: middle

# So you want to draw an avatar

```java
void setup() {
  size(640,480);
}

void draw() {
  int avatarX = width/2;
  int avatarY = height/2;
  int avatarSize = 100;
  fill(255);
  ellipse(avatarX,avatarY,avatarSize,avatarSize);
  fill(0);
  ellipse(avatarX - avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse(avatarX + avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse (avatarX,avatarY + avatarSize/4,avatarSize/4,avatarSize/4);
}
```

---

class: middle

# So you want to draw two avatars...

```java
void setup() {
  size(640,480);
}

void draw() {
  int avatarX = width/4;
  int avatarY = height/2;
  int avatarSize = 100;
  fill(255);
  ellipse(avatarX,avatarY,avatarSize,avatarSize);
  fill(0);
  ellipse(avatarX - avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse(avatarX + avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse (avatarX,avatarY + avatarSize/4,avatarSize/4,avatarSize/4);

  int avatar2X = 3*width/4;
  int avatar2Y = height/2;
  int avatar2Size = 100;
  fill(255);
  ellipse(avatar2X,avatar2Y,avatar2Size,avatar2Size);
  fill(0);
  ellipse(avatar2X - avatar2Size/4,avatar2Y,avatar2Size/8,avatar2Size/8);
  ellipse(avatar2X + avatar2Size/4,avatar2Y,avatar2Size/8,avatar2Size/8);
  ellipse (avatar2X,avatar2Y + avatar2Size/4,avatar2Size/4,avatar2Size/4);
}
```

---

class: middle

# Well, that worked, but...

- As soon as we wanted to basically do the same thing twice our code started looking pretty stupid
- We're so obviously doing _almost_ the same thing twice, shouldn't there just be a way to call `drawAvatar()`?
- Well yes there is, __obviously__.

```java
void setup() {
  size(640,480);
}

void draw() {
  drawAvatar();
}
```

---

class: middle

# Okay, fine.

- Apparently our `drawAvatar()` doesn't exist as a function in Processing
--

- __Yet!__
--

- We're going to have to define it ourselves so we can use it

---

class: middle

# Defining a function

```java
void setup() {
  size(640,480);
}

void draw() {
  drawAvatar();
}

void drawAvatar() {
  int avatarX = width/2;
  int avatarY = height/2;
  int avatarSize = 100;
  fill(255);
  ellipse(avatarX,avatarY,avatarSize,avatarSize);
  fill(0);
  ellipse(avatarX - avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse(avatarX + avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse (avatarX,avatarY + avatarSize/4,avatarSize/4,avatarSize/4);
}
```

- Here is a function definition for our avatar

---

class: middle

# Defining a function

```java
void setup() {
  size(640,480);
}

void draw() {
  drawAvatar();
}

void drawAvatar() {
  int avatarX = width/2;
  int avatarY = height/2;
  int avatarSize = 100;
  fill(255);
  ellipse(avatarX,avatarY,avatarSize,avatarSize);
  fill(0);
  ellipse(avatarX - avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse(avatarX + avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse (avatarX,avatarY + avatarSize/4,avatarSize/4,avatarSize/4);
}
```

- It comes _after_ our `draw()` function

???

- This is a stylistic choice - you _can_ put the function _above_ where it is called, but people tend not to do that

---

class: middle

# Defining a function

```java
void setup() {
  size(640,480);
}

void draw() {
  drawAvatar();
}

void drawAvatar() {
  int avatarX = width/2;
  int avatarY = height/2;
  int avatarSize = 100;
  fill(255);
  ellipse(avatarX,avatarY,avatarSize,avatarSize);
  fill(0);
  ellipse(avatarX - avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse(avatarX + avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse (avatarX,avatarY + avatarSize/4,avatarSize/4,avatarSize/4);
}
```

- First we write .codeHighlight[`void`]. We'll explain that soon! I swear!

---

class: middle

# Defining a function

```java
void setup() {
  size(640,480);
}

void draw() {
  drawAvatar();
}

void drawAvatar() {
  int avatarX = width/2;
  int avatarY = height/2;
  int avatarSize = 100;
  fill(255);
  ellipse(avatarX,avatarY,avatarSize,avatarSize);
  fill(0);
  ellipse(avatarX - avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse(avatarX + avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse (avatarX,avatarY + avatarSize/4,avatarSize/4,avatarSize/4);
}
```

- Next we have the _name_ of the function, .codeHighlight[`drawAvatar`]

???

- Note how this is a _good name_ for the function because it describes clearly _what it does_

---

class: middle

# Defining a function

```java
void setup() {
  size(640,480);
}

void draw() {
  drawAvatar();
}

void drawAvatar() {
  int avatarX = width/2;
  int avatarY = height/2;
  int avatarSize = 100;
  fill(255);
  ellipse(avatarX,avatarY,avatarSize,avatarSize);
  fill(0);
  ellipse(avatarX - avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse(avatarX + avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse (avatarX,avatarY + avatarSize/4,avatarSize/4,avatarSize/4);
}
```

- Next is .codeHighlight[`()`] - empty parentheses. This function needs no extra information.

---

class: middle

# Defining a function

```java
void setup() {
  size(640,480);
}

void draw() {
  drawAvatar();
}

void drawAvatar() {
  int avatarX = width/2;
  int avatarY = height/2;
  int avatarSize = 100;
  fill(255);
  ellipse(avatarX,avatarY,avatarSize,avatarSize);
  fill(0);
  ellipse(avatarX - avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse(avatarX + avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse (avatarX,avatarY + avatarSize/4,avatarSize/4,avatarSize/4);
}
```

- Then we have .codeHighlight[`{`], meaning "I'm about to tell you what code this function runs"

---

class: middle

# Defining a function

```java
void setup() {
  size(640,480);
}

void draw() {
  drawAvatar();
}

void drawAvatar() {
  int avatarX = width/2;
  int avatarY = height/2;
  int avatarSize = 100;
  fill(255);
  ellipse(avatarX,avatarY,avatarSize,avatarSize);
  fill(0);
  ellipse(avatarX - avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse(avatarX + avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse (avatarX,avatarY + avatarSize/4,avatarSize/4,avatarSize/4);
}
```

- Then we have the 9 lines of code that execute the function! (Could be more! Could be less!)

---

class: middle

# Defining a function

```java
void setup() {
  size(640,480);
}

void draw() {
  drawAvatar();
}

void drawAvatar() {
  int avatarX = width/2;
  int avatarY = height/2;
  int avatarSize = 100;
  fill(255);
  ellipse(avatarX,avatarY,avatarSize,avatarSize);
  fill(0);
  ellipse(avatarX - avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse(avatarX + avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse (avatarX,avatarY + avatarSize/4,avatarSize/4,avatarSize/4);
}
```

- And we finish off with our .codeHighlight[`}`] to say the function is now _defined_

---

class: middle

# It works!

- We have now _abstracted_ the idea of "draw an avatar" into our function
- Notice how our `draw()` now looks _even more clear than before_
- It literally says what it is going to do: draw an avatar
- This idea of moving blocks of related code into functions to make your programs clearer is a huge win

---

class: middle

# Flow...

- The program starts with `setup()` and runs the code there
- Then it jumps to `draw()` and starts running that code
- It gets to `drawAvatar()`, our function, and jumps to _that_ function
- It runs the code inside `drawAvatar()` then jumps _back_ to where it was in `draw()`
- Then it hits the end of `draw()` and jumps back to the top of `draw()` for the next frame
- And on it goes...

---

class: middle

# All neat and tidy!

```java
void setup() {
  size(640,480);
  setupAvatar();
  setupWorld();
}

void draw() {
  updatePhysics();
  handleInput();
  drawWorld();
  drawAvatar();
  checkWinState();
}

// Actual definitions of those functions would be down here...
```

- We can imagine programs where everything is in functions!
- `draw()` becomes a nice story of what happens in the program

---

class: middle

# All neat and tidy!

```java
void setup() {
  size(640,480);
  setupAvatar();
  setupWorld();
}

void draw() {
  updatePhysics();
  handleInput();
  drawWorld();
  drawAvatar();
  checkWinState();
}

// Actual definitions of those functions would be down here...
```

- We know where to look for specific kinds of problems now
- And we can comment out functions to check for issues

???

- The avatar isn't drawing properly? You should probably check `drawAvatar()`!
- Want to see the avatar without the world? Comment out `drawWorld()`!

---

class: middle

# Okay, but I still want those two avatars...

```java
void setup() {
  size(640,480);
}

void draw() {
  drawAvatar();
  drawAvatar();
}

void drawAvatar() {
  int avatarX = width/2;
  int avatarY = height/2;
  int avatarSize = 100;
  fill(255);
  ellipse(avatarX,avatarY,avatarSize,avatarSize);
  fill(0);
  ellipse(avatarX - avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse(avatarX + avatarSize/4,avatarY,avatarSize/8,avatarSize/8);
  ellipse (avatarX,avatarY + avatarSize/4,avatarSize/4,avatarSize/4);
}
```

---

class: middle

# Oh, right.

- We can call `drawAvatar()` twice, and it works
- But it draws the avatar in the _same place_ both times

---

class: middle

# Information

- Lots of functions only make sense if you can give them _information_
- We don't get a rectangle if we just call `rect();` because it doesn't make sense
- We call `rect(0,0,100,100);` and specify _where_ the rectangle should be and what _dimensions_ it should have
- We want something like that for `drawAvatar()`

---

class: middle

# Defining functions with arguments

```java
void drawAvatar(int x, int y, int size) {
  fill(255);
  ellipse(x,y,size,size);
  fill(0);
  ellipse(x - size/4,y,size/8,size/8);
  ellipse(x + size/4,y,size/8,size/8);
  ellipse (x,y + size/4,size/4,size/4);
}
```

- Here is `drawAvatar()` again, this time with _arguments_

---

class: middle

# Defining functions with arguments

```java
void drawAvatar(int x, int y, int size) {
  fill(255);
  ellipse(x,y,size,size);
  fill(0);
  ellipse(x - size/4,y,size/8,size/8);
  ellipse(x + size/4,y,size/8,size/8);
  ellipse (x,y + size/4,size/4,size/4);
}
```

- It's exactly the same, but now we have something _inside the parentheses_
- And the code in the function has changed a bit too

---

class: middle

# Defining functions with arguments

```java
void drawAvatar(int x, int y, int size) {
  fill(255);
  ellipse(x,y,size,size);
  fill(0);
  ellipse(x - size/4,y,size/8,size/8);
  ellipse(x + size/4,y,size/8,size/8);
  ellipse (x,y + size/4,size/4,size/4);
}
```

- First we have .codeHighlight[`int x`]
- This means the function wants to be given or _passed_ an `int`
- That `int` will be called `x` inside the function
- It specifies the x position of the avatar being drawn
- It's just like a variable

---

class: middle

# Defining functions with arguments

```java
void drawAvatar(int x, int y, int size) {
  fill(255);
  ellipse(x,y,size,size);
  fill(0);
  ellipse(x - size/4,y,size/8,size/8);
  ellipse(x + size/4,y,size/8,size/8);
  ellipse (x,y + size/4,size/4,size/4);
}
```

- Then we have a .codeHighlight[`,`] - a comma
- As you might expect, we use the comma to _separate arguments_
- Because `drawAvatar()` takes multiple arguments

---

class: middle

# Defining functions with arguments

```java
void drawAvatar(int x, int y, int size) {
  fill(255);
  ellipse(x,y,size,size);
  fill(0);
  ellipse(x - size/4,y,size/8,size/8);
  ellipse(x + size/4,y,size/8,size/8);
  ellipse (x,y + size/4,size/4,size/4);
}
```

- Then we have a .codeHighlight[`int y`]
- This is the argument that will specify the y position of the avatar being drawn by the function
- Again, it's like a variable inside the function

---

class: middle

# Defining functions with arguments

```java
void drawAvatar(int x, int y, int size) {
  fill(255);
  ellipse(x,y,size,size);
  fill(0);
  ellipse(x - size/4,y,size/8,size/8);
  ellipse(x + size/4,y,size/8,size/8);
  ellipse (x,y + size/4,size/4,size/4);
}
```

- Another comma before we get our final argument

---

class: middle

# Defining functions with arguments

```java
void drawAvatar(int x, int y, int size) {
  fill(255);
  ellipse(x,y,size,size);
  fill(0);
  ellipse(x - size/4,y,size/8,size/8);
  ellipse(x + size/4,y,size/8,size/8);
  ellipse (x,y + size/4,size/4,size/4);
}
```

- Then we have a .codeHighlight[`int size`]
- This is the argument that specifes the _size_ of our avatar

---

class: middle

# Defining functions with arguments

```java
void drawAvatar(int x, int y, int size) {
  fill(255);
  ellipse(x,y,size,size);
  fill(0);
  ellipse(x - size/4,y,size/8,size/8);
  ellipse(x + size/4,y,size/8,size/8);
  ellipse (x,y + size/4,size/4,size/4);
}
```

- Inside the _code_ of the function we can see that we are using the arguments just like variables
- But it's different now because the function doesn't know what values they have
- It has to wait until it is called and is given the information required

---

class: middle

# Calling a function with arguments

```java
void draw() {
  drawAvatar();
}
```

- If we try to call our function like this now, what will happen?
--

- Yep. Doesn't work.
- Because now that function needs _information_
- So we need to put _parameters_ into our function call

---

class: middle

# Calling a function with arguments

```java
void draw() {
  drawAvatar(width/2,height/2,100);
}
```

- Voilà! Now we can draw an avatar!

---

class: middle

# Calling a function with arguments

```java
void draw() {
  drawAvatar(width/4,height/2,100);
  drawAvatar(3*width/4,height/2,200);
}
```

- Even better! We can draw _two_ avatars in different places using the parameters!
- Notice, too, how we don't need to be able to _see_ the `drawAvatar()` function definition itself
- So long as we _know how it works_
- This is a strong case for _good documentation_ like sensible comments that explain your functions!

---

class: middle

# Functions with _results_

```java
void setup() {
  size(640,480);
}

void draw() {
  int w = 100;
  ellipse(width/4,height/2,w,w);
  tripleTheWidth(w);
  ellipse(3*width/4,height/2,w,w);
}

void tripleTheWidth(int w) {
  w = w * 3;
}
```

- Sometimes we want functions that _change_ something
- What will this do?

---

class: middle

# Functions with _results_

```java
void setup() {
  size(640,480);
}

void draw() {
  int w = 100;
  ellipse(width/4,height/2,w,w);
  tripleTheWidth(w);
  ellipse(3*width/4,height/2,w,w);
}

void tripleTheWidth(int w) {
  w = w * 3;
}
```

- The `int w` inside `draw()` is __not the same__ as the `int w` in `tripleTheWidth()`!
- The function _does_ triple a `w`, just _not the one we wanted_

---

class: middle

# Functions with _results_

```java
void setup() {
  size(640,480);
}

void draw() {
  int w = 100;
  ellipse(width/4,height/2,w,w);
  tripleTheWidth(w);
  ellipse(3*width/4,height/2,w,w);
}

void tripleTheWidth(int w) {
  w = w * 3;
}
```

- That's because when we call `tripleTheWidth(w);` Processing passes through the _value inside_ `w`
- Not the variable itself

---

class: middle

# Many happy returns...

- If we can send things into a function (with parameters/arguments), surely we can get things out?
- Well, yes, __obviously__ we can, geez.
- This is particularly helpful if we have a function that _calculates_ something
- Or perhaps a function that can _check_ something for us and report back

---

class: middle

# `tripleTheWidth` sucks

```java
void tripleTheWidth(int w) {
  w = w * 3;
}
```

- It _does_ triple the value passed in as the argument
- But it doesn't _give it back_ after its tripled
- Pointless!

---

class: middle

# `tripleTheWidth` sucks

```java
void tripleTheWidth(int w) {
  w = w * 3;
}
```

- Finally we're going to talk about that .codeHighlight[`void`] at the start of the function definition
- That `void` means "this function doesn't give anything back"
- And if we can write `void` to mean that, maybe we can write something else to _give something back_...
- Like... what?

---

class: middle

# `tripleTheWidth` still sucks?

```java
int tripleTheWidth(int w) {
  w = w * 3;
}
```

- If, instead of `void` we write .codeHighlight[`int`] we're saying "this function gives you back an integer"
- So that bit in front of the function definition is the _return type_
- It tells us the _kind of thing_ this function gives back
- But this doesn't work... why?

???

- Right, if we put this in Processing it complains because we _still don't give it back_

---

class: middle

# `tripleTheWidth` doesn't suck?

```java
int tripleTheWidth(int w) {
  w = w * 3;
  return w;
}
```

- In order to give something back we need to `return` it inside the function
- We do this by writing `return` and then the thing we want to return, like the resulting argument `w`
- The thing we `return` has to match the _type_ we said we would return at the front of the function definition (an `int` in this case)
- Now Processing doesn't complain

---

class: middle

# Damn you `tripleTheWidth`!!!

```java
void setup() {
  size(640,480);
}

void draw() {
  int w = 100;
  ellipse(width/4,height/2,w,w);
  tripleTheWidth(w);
  ellipse(3*width/4,height/2,w,w);
}

int tripleTheWidth(int w) {
  w = w * 3;
  return w;
}
```

- THIS STILL DOESN'T WORK??? WHYYYYY???
--

- Yeah, because we don't actually _use_ the value `tripleTheWidth` is trying to give back

---

class: middle

# `tripleTheWidth` you beautiful function you!

```java
void setup() {
  size(640,480);
}

void draw() {
  int w = 100;
  ellipse(width/4,height/2,w,w);
  w = tripleTheWidth(w);
  ellipse(3*width/4,height/2,w,w);
}

int tripleTheWidth(int w) {
  w = w * 3;
  return w;
}
```

- We need to _receive_ the value calculated by `tripleTheWidth`
- We can put it back into the `w` variable for instance

---

class: middle

# `tripleTheWidth` you beautiful function you!

```java
void setup() {
  size(640,480);
}

void draw() {
  int w = 100;
  ellipse(width/4,height/2,w,w);
  ellipse(3*width/4,height/2,tripleTheWidth(w),tripleTheWidth(w));
}

int tripleTheWidth(int w) {
  w = w * 3;
  return w;
}
```

- Or we can use it directly wherever we want to use the _value it calculates_
- So we can imagine that function call being substituted with the _value_ that is `return`ed

---

class: middle

# More useful?


```java
void setup() {
  size(500,500);
}

void draw() {
  color bgColour = randomColour(0,255);
  color fgColour = randomColour(100,200);
  background(bgColour);
  fill(fgColour);
  ellipse(250,250,250,250);
}

color randomColour(int low, int high) {
  float r = random(low,high);
  float g = random(low,high);
  float b = random(low,high);
  return color(r,g,b);
}
```

???

- Obviously we don't really need functions that do things like `tripleTheWidth`
- We generally want functions that calculate something more useful

---

class: middle

# Modularity and reuse!

There are two main reasons why functions are so great, and they have special names!

Functions are __modular__. We can tidy our code into separate, self-contained blocks that make sense as a unit. Our code becomes more organised, more readable, easier to fix.

Functions are __reusable__. We can use a function over and over again without writing out all the code in it. This makes our programming more efficient and less lengthy. It's like free code!

---

class: middle

# Food for thought

- With functions it's like we suddenly have this team of different workers who we can ask to do specific things for us whenever we want
- Sometimes we give them some information so they can do their job (parameters / arguments)
- Sometimes they come back and give us some information that they worked out (return values)

The weird thing is that these workers are all also... _us_.

???

- Because we write those functions, right? Get it? Deep.

---

class: middle

# The [Midterm Project](https://github.com/pippinbarr/cart253-2017/wiki/Midterm-Project)

- It's here!
- We can take a look at it!
- Note that it uses coding ideas we will learn __next week__ but which you can read about __now__
- That is: object oriented programming (OOP) (see chapter 8 of _Learning Processing_)
- Also note that [Exercise 02](https://github.com/pippinbarr/cart253-2017/wiki/Exercise-02), assigned this week, uses a lot of the ideas in the Midterm, so you can play around with that while you're learning OOP

---

class: middle

# The Final Project

Just a reminder that we'll have an open-brief final project running for the final six weeks of the course.

It's worth keeping in the back of your mind in case you have ideas for it now - write them down!

Also take note if you find some specific programming concept interesting (whether it's physics, metaphysics, or something else), you might not remember later.

---

# Students with Disabilities

- Teachers are sent an email notifying us if we have students who have registered with the Access Centre for Students with Disabilities
- That email reports names, but nothing more than that
- If you're registered with the centre and want to talk to me about any accommodations you might need in this class, just send me an email and we can set up a time to meet (it's important to talk about this _before_ you need it)
- If you're _not_ registered with the centre because you didn't know about it, for example, you can learn more about it here: http://www.concordia.ca/students/accessibility.html

---

class: middle

# Nowwork/Homework
- __Finish [Exercise 01](https://github.com/pippinbarr/cart253-2017/wiki/Exercise-01)__ if you haven't and make sure it is submitted (pushed to your repository online) and that you and your repository are listed on the [People](https://github.com/pippinbarr/cart253-2017/wiki/People) page.
- If you're still having trouble with GitHub, talk to me or the TA for help!
- [Exercise 02](https://github.com/pippinbarr/cart253-2017/wiki/Exercise-02) is on the wiki and due next week
- Look at and think about the [Midterm Project](https://github.com/pippinbarr/cart253-2017/wiki/Midterm-Project)
- The readings from _this week_ are chapters 6 and 7 of _Learning Processing_ (loops and functions)
- The readings for _next week_ are chapters 8 and 10 of _Learning Processing_ (objects and algorithms)
