class: middle

# CART 253 | 02 | What if?

## Variables and conditionals

---

class: middle

# Any questions about [Exercise 00](https://github.com/pippinbarr/cart253-2017/wiki/Exercise-00)?

---

class: middle

## Variables

## Conditionals

## GitHub

???

- Today we’re going to learn two of the fundamental ideas of coding
- Once you grasp these things, you'll have a huge amount of power over programming and making things happen
- As with all coding, the main thing is to get the gist, and then play around, and then try the book, and play around some more


---

class: middle

# Variables

or

# Numbers suck

---

class: middle

# Numbers are too permanent

```java
size(500,500);
rect(200,200,100,200);
rect(225,150,50,50);
rect(200,400,25,100);
rect(275,400,25,100);
```

- Which of these rects are the legs?
- How do I change the lengths of the legs?
- How do I put my avatar somewhere else?

--

_Hardcoded numbers are a huge pain to edit and are mostly meaningless to look at in code_

---

class: middle

# Numbers can't change

```java
size(500,500);
rect(200,200,100,200);
rect(225,150,50,50);
rect(200,400,25,100);
rect(275,400,25,100);
```

- How would I make my avatar move around on the screen?
--

- Yeah, I'd need to change the _numbers_ representing its location, but I _can't_, because...

--

_Once the program is running, hardcoded numbers cannot change_

---

class: middle

# Enter the variable

---

class: middle

# A variable is like an... x

- A variable is a place to store some information in your program that you want to remember, refer back to, or change
- It's like a box!
--
 It's like a sticky!
--
 It's like a folder!
--
 It's like a drawer!
--
 It's like a... place you use to store some information!
--

- It has three key qualities:
--
 a _name_
--
, a  _type_
--
, and a  _value_

---

class: middle

# A name

- Variables have names - otherwise what would you call them?
- Names have _meanings_. "Thomas" means "twin" (via Aramaic), "Jeanne" means "Yahweh is merciful" (via Hebrew)
--

- `mouseX` means "the pixel on the x-axis that the mouse is over right now"
--

- `avatarY` probably means "the location of the avatar on the y-axis"

---

class: middle

# A type

- In Processing (Java) you need to say what kind or _type_ of value a variable has in it
- Like a number or a colour or a string of letters for example
- This is so the language knows what kinds of things you can do with it
- You don't multiply a letter by a number, for instance

???

- There _are_ programming languages where you don't have to explicitly state what type a variable is, like JavaScript
- But Processing isn't like that, and it's our language for the moment, so we need to care!
- It's also quite a useful way to learn about how variable work

---

class: middle

# A value

- A variable has a value in it, the thing that variable is storing
- The variable will keep it safe until we need to remember it, use it, or change it
- And a change is as good as a holiday

---

class: middle

# `int meaningOfLife = 42;`

- This is a _variable declaration_ in Processing
- This line is us telling Processing "I want a _variable_ to store an _integer_ called _meaningOfLife_, and put the integer `42` in it to start with, thanks"
- Let's go through the pieces of this

---

class: middle

# .codeHighlight[`int`] `meaningOfLife = 42;`

- First we write the _type_ of the variable
- In this case we want an _integer_, which is abbreviated to `int` in programming
- An integer is a whole number that can be positive, negative, or zero

---

class: middle

# `int ` .codeHighlight[`meaningOfLife`] ` = 42;`

- Next we have the _name_ of the variable
- Here we have called it `meaningOfLife`
- Just like with functions, the name should _explain_ what the variable is for, what it _means_
- Notice the way the variable name is written

  - All one word - no spaces
  - If there are multiple words make the first lowercase and each next word starts with a capital
  - You can have numbers, but not at the start of the name

---

class: middle

# `int meaningOfLife ` .codeHighlight[`=`] ` 42;`

- Next we have the _assignment operator_
- This is because we are giving our variable a value right away
- It means "I am about to tell you what to put inside this variable"
- Be ready for this use of an equals sign to be confusing when we need to actually check whether two things are equal!

---

class: middle

# `int meaningOfLife = ` .codeHighlight[`42`]`;`

- Next we have the _value_ of the variable, `42`
- Importantly, `42` is an `int` and it is also the `meaningOfLife`
- Note that because we said this variable is an `int` we're _not allowed_ to put any other kind of value here

  - Can't have a number like `1.2345`
  - Can't have a string of characters like `"Hello, world!"`

???

- This is one of the differences between Java and JavaScript - JavaScript doesn't enforce types

---

class: middle

# `int meaningOfLife = 42`.codeHighlight[`;`]

- Just like any line of code that is an _instruction_, we end with a semicolon to say we're done
- If you're a polite kind of person, you could think of it as saying "thanks" perhaps...

---

class: middle

# Other types

- Processing doesn't just have integer variables using `int`, there are other types too, like:

```java
float piToThreeDecimalPlaces = 3.14;
char theCharacterA = 'a';
String helloWorld = "Hello, World!";
color red = color(255,0,0);
```

- Notice how the different values are written in different ways - a `float` can have a decimal point, a `char` is inside single quotes, a `String` is inside double quotes, a `color` requires that you use the _function_ `color(r,g,b)` to create the value

???

- Do we understand what each of these types is?

---

class: middle

# Declaring a variable without a value

- We can also declare a variable we want to use in our program _without_ giving it a value right away

```java
int meaningOfLife;
```

- Later on, when we work out the meaning of life, we can use the _assignment operator_ in the same way to put the value in

```java
meaningOfLife = 42;
```

- Notice that when we put the value in we don't need `int` anymore, because Processing already _knows_ it's an `int`

---

class: middle

# `println()` is pretty helpful

- Last week we used `println()` to print out "Hello, World!" on the console
- But we can also use it to print out the values of variables, which can be very helpful

```java
int meaningOfLife = 42;
println(meaningOfLife);
```

--
- Pop quiz: what would happen if we _didn't_ give a value to `meaningOfLife` and then tried to `println()` it?

???

- Let's try out the Pop quiz...
- In one version Processing is helpful:

```java
int meaningOfLife;
println(meaningOfLife);
```

- But in another version it isn't...

```java
int meaningOfLife;

void setup() {
  println(meaningOfLife);
}
```

- The second case is more likely to come up in programming... sad!

---

class: middle

# Using variables...

- You can use variables __as if they are the value inside them__
- So you can use an `int` variable anywhere you might use a hardcoded integer, a `String` variable anywhere you would have put a string, and so on!

```java
int meaningOfLife = 42;
rect(meaningOfLife,meaningOfLife,50,50);

String helloWorld = "Hello, World!";
println(helloWorld);
```

???

- Note how variable names are important?
- Processing doesn't care that you're positioning a rectangle with its top-left corner at coordinates `(meaningOfLife,meaningOfLife)`, but anyone reading your code would find it rather confusing

---

class: middle

# Arithmetic!

- You can do arithmetic on numbers in Processing, and also on variables with numbers in them
- It uses symbols you probably already know from calculators and so on

```java
int meaningOfLife = 21 + 21; // addition
println(meaningOfLife - 2); // subtraction
fill(meaningOfLife * 5,0,0); // multiplication
rect(meaningOfLife/2,0,50,50); // division
```

- There are other operators too, which you can look up in the reference
- What will the above code actually do?

---

class: middle

# More arithmetic!

- You can use parentheses to prioritise parts of your arithmetic, just like in math class...

```java
int meaningOfLife = (42 + 42) / 2;
```

is not the same as

```java
int meaningOfLife = 42 + 42 / 2;
```

---

class: middle

# Variable names, again

- Remember that there are _rules_ for naming variables
- They _must_ start with a letter and continue only with letters, numbers, or the underscore character `_`
- They _must_ be unique and cannot already be in use by Processing
- They _must_ be meaningful
- They _should_ use "camel case" where you start with a lowercase letter and then use capital letters to indicate word breaks

???

- Actually you can also start a variable name with a `_` or a `$` but let's not

---

class: middle

# Example variable names

YES:

```java
int age = 30;
String dayOfTheWeek = "Friday";
float pi = 3.14159;
char theLetterE = 'E';
int theNumber1 = 1;
```

NO:

```java
int foo = 30;
String WhatDayIsIt? = "Friday";
float 314159 = 3.14159;
int int = 1;
char the_letter_a = 'A';
```

???

- That last "NO" is actually a different _style_ of writing variables
- If you have a really strong reason for wanting to us a different style, ask if it's okay
- Otherwise, just stick with camel case...

---

class: middle

# Built-in variables

- We met `mouseX` and `mouseY` last week - they are _built-in variables_ that store the current coordinates of the mouse
- There are other helpful variables like this, including:

  - `width` and `height`: the width and height of the window
  - `frameCount`: the number of frames the code has run for
  - `frameRate`: the frame-rate of the code
  - `mousePressed`: true if the mouse button is currently pressed down, false otherwise
  - `key` and `keyCode`: the most recently pressed key

???

- There are many more of these in the Processing reference
- Look for things listed in the reference _without_ parentheses after them (things that aren't _functions_)

---

class: middle

# Pop-quiz, hotshots!

```java
color 127LevelGrey = color(127);
String $money$ = "Money!";
char theLetterC = 'c'
int myLuckyNumber = 4.7;
floaty theNumberPi = 3.14159;
int mouseX = 21;
String myName = "Pippin";
int thetruemeaningoflife = 1;
float exampleFloat = 22.2.2;
char foo = `1`;
```

???

- What is wrong with these?

---

class: middle

# Variables FTW!

Variables give us a lot of power in programming.

__Memory__. Now we can _remember_ values over time.

__Sense__. Now we can _label_ values with their meaning instead of hard-coding them.

__Change__. Now we can _change_ the values in variables to make things happen while the program is running.

---

class: middle

# Variables save the day

Remember this guy?

```java
size(500,500);
rect(200,200,100,200);
rect(225,150,50,50);
rect(200,400,25,100);
rect(275,400,25,100);
```

Now we can rewrite him with variables to get our benefits of memory, sense, and change...

---

class: middle

```java
int avatarX = 50;
int avatarY = 50;
int avatarHeadSize = 50;
int avatarBodyWidth = 100;
int avatarBodyHeight = 200;
int avatarLegWidth = 25;
int avatarLegHeight = 150;

void setup() {
  size(500,500);
}

void draw() {
  rect(avatarX, avatarY, avatarBodyWidth, avatarBodyHeight);
  rect(avatarX + (avatarBodyWidth - avatarHeadSize)/2, avatarY - avatarHeadSize,
       avatarHeadSize, avatarHeadSize);
  rect(avatarX, avatarY + avatarBodyHeight, avatarLegWidth, avatarLegHeight);
  rect(avatarX + avatarBodyWidth - avatarLegWidth, avatarY + avatarBodyHeight,
       avatarLegWidth, avatarLegHeight);
}
```

---

class: middle

# Variables save the day

Notice how we can

- Understand the code significantly better because of the names
- Easily adjust the way the avatar appears by changing the variables at the top

--

_What if we added something to the `draw()` function that changed one of the variables?_

--

`avatarX = avatarX + 1;`

???

- One option would be to add `avatarX = avatarX + 1;`
- Which can be written as `avatarX += 1;`
- Which can also be written as `avatarX++;` (add one to avatarX)
- But there are others of course!
- Why does it leave a trail?

---

class: middle

# This is a pretty big deal

- We have created _life_!
- Well, we have created movement at the very least...
- Effectively we have the start of _code-based animation_

???

- Consider my not very good game [You Say Jump I Say How High](http://www.pippinbarr.com/2012/01/24/you-say-jump-i-say-how-high/)
- It uses this idea of changing variables for physics to make gameplay
- Or consider another of my games, [Get X Avoid Y](http://www.pippinbarr.com/2014/06/24/get-x-avoid-y/)
- It basically uses variables to store different pictures so that the game looks different even with the same code

---

class: middle

# Let's get `random()`

- Let's talk about my favourite function in all of programming: `random()`
- Most programming languages have a version of this and it does what you might expect...
--
 yeah, it gives you a random number.
--

- In Processing it works like this:

```java
float randomNumber = random();
```

- This will put a random `float` between 0 and 1 (not including 1) into our `randomNumber` variable

---

class: middle

# Let's get more `random()`

- You can also specify a _range_ for your random number like this

```java
float red = random(0,255);
float green = random(0,255);
float blue = random(0,255);
background(red,green,blue);
```

- Which will do what?

???

- You can even cut out the middle-person like this

```java
background(random(0,255),random(0,255),random(0,255));
```

- But that's significantly harder to read, I think you'll agree

---

class: middle

# Ah, `random()`!

- Random numbers are a source of endless joy.
- What would this do in the `draw()` loop of our avatar code?

```java
avatarX = (int) random(0,width);
avatarY = (int) random(0,height);
```

- What is that `(int)` thing, you ask? It's called _casting_ - it turns the `float` you get from `random()` into the `int` that is meant to go into `avatarX` and `avatarY`
- Generally let's avoid it, but we needed it here

???

```java
int avatarX = 50;
int avatarY = 50;
int avatarHeadSize = 50;
int avatarBodyWidth = 100;
int avatarBodyHeight = 200;
int avatarLegWidth = 25;
int avatarLegHeight = 150;

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  rect(avatarX, avatarY, avatarBodyWidth, avatarBodyHeight);
  rect(avatarX + (avatarBodyWidth - avatarHeadSize)/2, avatarY - avatarHeadSize, avatarHeadSize, avatarHeadSize);
  rect(avatarX, avatarY + avatarBodyHeight, avatarLegWidth, avatarLegHeight);
  rect(avatarX + avatarBodyWidth - avatarLegWidth, avatarY + avatarBodyHeight, avatarLegWidth, avatarLegHeight);
  avatarX = (int) random(0,width);
  avatarY = (int) random(0,height);
}
```

---

class: middle

# Follow that mouse!

- What if we wanted to make a shape move toward the mouse cursor over time?

???

- We'd need to know _where_ the shape is (and where it _starts_)
- We'd need to know _where_ the mouse is
- Each draw loop we'd need to work out how to change the shape location based on the mouse location
- One way would be to add a fraction of the distance between the shape's x and y and the mouse's x and y...

```java
float x;
float y;

void setup() {
  size(640,640);
  x = width/2;
  y = height/2;
}

void draw() {
 float distX = mouseX - x;
 float distY = mouseY - y;
 x += distX/10;
 y += distY/10;
 ellipse(x,y,10,10);
}
```

- Another way would be to use the amazing `lerp()` function - look it up! Quite confusing, but amazing!

---

class: middle

# One last amazing type!

- Before we move on I want to very briefly introduce another type
- It's called `PImage` and it is a special Processing type that can contain...
--
 an _image_!

--
- I want us to see it now because drawing things out of shapes can be amazing...
- ... but it can also be nice to use images as well (like people do in the real world)

---

class: middle

# `PImage`

To use a `PImage` we need to

  0. Declare a `PImage` variable
  0. Load the image file into the variable
  0. Display the image like any old shape

Generally we do this the same way each time, so here's a template of it...

---

class: middle

```java
PImage myImage;

void setup() {
  size(500,500);
  myImage = loadImage("dog.png");
}

void draw() {
  image(myImage,0,0);
}
```

__Note!__ You have to use `loadImage()` inside `setup()` or it won't work!

__Note!__ Your image file (`dog.png` here) must be inside a folder called `data` inside your sketch folder!

__Note!__ You can learn plenty more about `PImage` in... [the reference](https://processing.org/reference/) under _Image_!

???

- See chapter 15 in _Learning Processing_ for more on images, but we'll get there in time

---

class: middle

# Conditionals

or

# What if?

???

- It's time to be able to do _different things_ in our programs _depending on what's happening_!

---

class: middle

# You _can_ handle the truth!

- The ideas of `true` and `false` are central to our general understanding of the world
- Of course, in reality, working out what's `true` and what's `false` is quite difficult
- But in programming, things are a _lot more certain_
- Probably something to do with all those 1s and 0s floating around in there...

---

class: middle

# Decisions, decisions....

- One way we use the ideas of `true` and `false` is that we use them to _make decisions_
- We say things like "_if_ the metro stays broken down for two more minutes _then_ I'm going to get off and walk home"
- That is, we're going to _do something_ based on whether a statement turns out `true` or `false`

---

class: middle

# From context to action

- This idea of going from _knowing something_ to _doing something_ is at the heart of what makes programming and software interesting
- This is a huge part of what makes programs _react_ to context, instead of just doing the same thing every time
- They might react to the weather, or the date, or the keyboard, or something else...
- ... but in all cases they need to use these "_if_ this _then_ I'll do that" kinds of structures

---

class: middle

# Some ifs...

- If the player presses the spacebar, do an amazing skateboard trick
- If the date is the 25th of December, play a Christmas Carol
- If the weather is cloudy, making the interface grey and hard to read
- If the user is shouting, making the screen vibrate
- AND SO ON!

---

class: middle

# What is `true`? What is `false`?

- In Processing we talk about things that can be `true` or `false` as _conditional expressions_ and they're often kind of like maths:

`23 < 24` is `true`  
`1 + 1 == 3` is `false`

- We use these kinds of expressions to _check what's happening_ in our code, and then react to it
- Usually it's better if we use variables!

`avatarX > width` would be `true` if the avatar has gone off the right side of the screen...

---

class: middle

# Conditional operators

- We make _conditional expressions_ with _conditional operators_ and the main ones are:

```java
1 < 2 // Less than
2 > 1 // Greater than
1 <= 2 // Less than or equal to
2 >= 1 // Greater than or equal to
1 != 2 // Inequality
1 == 1 // Equality
```

- See? Maths. All the above are `true`
- Note that this means we are very often checking _numbers_ with these operators (like `int` and `float`)

---

class: middle

# Getting iffy

- So how do we _use_ these conditional expressions to check what's going on in our program?
- We use `if` statements
- An `if` statement _checks_ if a condition is `true`, and will do something based on the result

---

class: middle

# A basic `if` statement

```java
if (mouseX > width/2) {
  background(0);
}
```

- This is an `if` statement that checks whether the mouse is to the right of the middle of the window
- And if the mouse _is_ over there, it makes the background of the window black
- Let's break it down...

---

class: middle

# A basic `if` statement

```java
if (mouseX > width/2) {
  background(0);
}
```

- First we have the word .codeHighlight[`if`]
- This is what tells Processing we're going to use an `if` statement
- It kind of means we're about to _ask a question_

---

class: middle

# A basic `if` statement

```java
if (mouseX > width/2) {
  background(0);
}
```

- Next we have .codeHighlight[`(`], an opening parenthesis
- We've seen this before in _functions_ where we were saying "I'm going to tell you the parameters"
- This time it's similar, but it means "I going to tell you the _condition_ I want you to check"
- So parentheses tend to mean "I'm going to give you information to help you do your job"

---

class: middle

# A basic `if` statement

```java
if (mouseX > width/2) {
  background(0);
}
```

- Next we have .codeHighlight[`mouseX > width/2`], our _condition_
- This is _the thing we want to check_
- We want to know if it's `true` or `false`
- In this case we're asking "is the mouse's x coordinate greater than half the width of the window?"

---

class: middle

# A basic `if` statement

```java
if (mouseX > width/2) {
  background(0);
}
```

- Then we have .codeHighlight[`)`], a closing parenthesis
- That is, "I'm done telling you what to check!"

---

class: middle

# A basic `if` statement

```java
if (mouseX > width/2) {
  background(0);
}
```

- Now we have .codeHighlight[`{`], an opening curly bracket!
- Like in a _function_ this means "Now I'm going to tell you _what to do_!"
- But in this case it specifically means "Now I'm going to tell you what to do _if that condition is `true`_"

---

class: middle

# A basic `if` statement

```java
if (mouseX > width/2) {
  background(0);
}
```

- Now we have the actual code we want to run _if the condition is true_
- In this case we just want to make the background black with .codeHighlight[`background(0);`]
- But we could do _anything_ in here!
- _ANYTHING!!!_
- And we can have _as many lines of code as we want in here_

---

class: middle

# A basic `if` statement

```java
if (mouseX > width/2) {
  background(0);
}
```

- Finally we have .codeHighlight[`}`], a closing curly bracket
- That is, "I'm done telling you what do if that condition is `true`"
- As you can see, we use _curly brackets_ to surround _blocks_ of code that belong together
- In this case the curly brackets are around _all the code to run if the condition is true_

---

class: middle

# What `else`?

- Of course we might not _only_ want to react to the condition being `true`
- We may also want to do something only if it's `false`
- And for this we can extend the `if` statement with an `else` to do just that

---

class: middle

# An `if else` statement

```java
if (mouseX > width/2) {
  background(0);
}
else {
  background(255);
}
```

- Here we have the same `if` statement, but now with a bit extra after the closing curly bracket of our original `if`

---

class: middle

# An `if else` statement

```java
if (mouseX > width/2) {
  background(0);
}
else {
  background(255);
}
```

- First we have the word .codeHighlight[`else`]
- This signals that we're going to deal with the case where the condition turns out to be `false`
- In this case, that means when `mouseX <= width/2`
- That is, when the mouse is to the _left_ of the middle of the window

---

class: middle

# An `if else` statement

```java
if (mouseX > width/2) {
  background(0);
}
else {
  background(255);
}
```

- Then we have our friend .codeHighlight[`{`], the opening curly bracket
- Which means "Now I'm going to tell you what to do if the condition is false"
- Note that we _don't_ need parentheses, because we don't need _new information_ here
- We're still relying on the information in the original condition

---

class: middle

# An `if else` statement

```java
if (mouseX > width/2) {
  background(0);
}
else {
  background(255);
}
```

- Then we have the code we want to run when the condition is `false`
- In this case .codeHighlight[`background(255);`] to make the background white

---

class: middle

# An `if else` statement

```java
if (mouseX > width/2) {
  background(0);
}
else {
  background(255);
}
```

- Finally we have .codeHighlight[`}`], the closing curly bracket
- This says "I'm done telling you what to do if the condition is false"

---

class: middle

# But what if...

- Sometimes we might want to get even more complicated
- Often, even!
- We might want to check _another_ condition if the first one is `false` instead of _only_ deciding based on the first condition
- And we can...

---

class: middle

# An `if else if` statement

```java
if (mouseX > width/2) {
  background(0);
}
else if (mouseX > width/4) {
  background(255);
}
else {
  background(255,0,0);
}
```

- So we can have _another if_ after our else that will check _another condition_
- Note that it will _only_ check that second condition _if_ the first condition is `false`, right?
- And note we can still have an `else` at the end that handles if _both_ the conditions are `false`

---

class: middle

# An `if else if` statement

```java
if (mouseX > width/2) {
  background(0);
}
else if (mouseX > width/4) {
  background(255);
}
else {
  background(255,0,0);
}
```

- What do you figure this will do?
--

- Yeah, it will make the background _black_ if the mouse is in the right half of the screen, _white_ if it's in the right half of the left half of the screen, and red if it's in the left half of the left half of the screen...
--

- Interesting how the code is kind of _easier_ to read than that.

---

class: middle

# `if else if else if else if...`

```java
if (mouseX > width/2) {
  background(0);
}
else if (mouseX > width/4) {
  background(255);
}
else if (mouseX > width/8) {
  background(0,255,0);
}
else if (mouseX > width/16) {
  background(0,0,255);
}
else {
  background(255,0,0);
}
```

- This can go on for a while!

---

class: middle

# What if also this other thing?

- Because we can put whatever instructions we want inside the curly brackets of an `if` statement...
- ... we could put another `if` in there!
- That is, having checked one condition is true, we might want to check another condition after that...

---

class: middle

# `if` this thing _and_ `if` this other thing

```java
if (mouseX > width/2) {
  if (mouseY > height/2) {
    background(0);
  }
}
```

- There we have it, _another_ `if` statement _inside_ the first `if` statement, this is called _nesting_ the `if`s
- Now the `background(0);` instruction will only happen if we pass _both_ tests
- So the mouse has to be in the right half of the window
- _And_ then it has to be in the bottom half of the window

???

- This is getting kind of cool
- It's clear we can check really _specific_ conditions
- Which helps give our program a kind of personality
- It's like it _cares_ about really particular things being true (or false)

---

class: middle

# Cold, hard logic

- Sometimes we need to check more complicated ideas than we can express in a math-style condition
- To help out, programming uses _logic operators_

`&&` means AND  
`||` means OR  
`!` means NOT

- Kind of nice, since this is _literally_ how computers work at the circuit level!
- But how does this work in code?

---

class: middle

# Logically speaking...

.codeHighlight[`(condition1 && condition2)`]  
This is `true` if _both_ `condition1` and `condition2` are `true`, otherwise it is `false`.

.codeHighlight[`(condition1 || condition2)`]  
This is `true` if _either_ `condition1` _or_ `condition2` are `true`, otherwise it is `false`.

.codeHighlight[`(!condition)`]  
This is `true` if `condition` is `false`, and `false` if it's `true`.

---

class: middle

# In practice...

```java
if (mouseX > width/2 && mouseY > height/2) {
  background(0);
}
```

- We can recreated the _nested `if`s_ from before using `&&` this time
- The background will be black if the mouse is in the right half AND in the bottom half of the window

---

class: middle

# In practice...

```java
if (avatarX < 0 || avatarX > width) {
  // The avatar has gone off the screen!
}
```

- We can check multiple possibilities in one line now
- This checks whether the avatar is _either_ off the left edge of the window _or_ off the right edge of the window
- Maybe it should... die for this!

---

class: middle

# Pop-quiz!

What will this do?

```java
if (2 > 0 || 10 < 9) {
  println("Go Cowboys!");
}
else if (10 < 20 && 9 <= 9) {
  println("Go Giants!");
}
if (!(10 > 0 && 9 < 10)) {
  println("Go whoever!");
}
```

???

- __Hint:__ I'm a Dallas Cowboys fan.

---

class: middle

# Let's get physical...

- So far we've only looked at conditions involve hardcoded numbers
- But the true value of `if` statements is in checking the values of _variables_
- Let's use all this to have some physics!

---

class: middle

```java
int avatarX = 0; // Avatar's x location
int avatarY = 0; // Avatar's y location
int avatarSize = 20; // Avatar's size
int avatarVX = 5; // Avatars x (horizontal) velocity

void setup() {
  size(500,500); // Set the size of the window!
}

void draw() {
  background(255); // Fill the background for animation effect

  avatarX = avatarX + avatarVX; // Move the avatar's location by velocity
  rect(avatarX,avatarY,avatarSize,avatarSize); // Draw the avatar

  // Check if the avatar has gone off the screen...
  if (avatarX < 0 || avatarX > width) {
    // If it has, reverse its velocity
    avatarVX = -avatarVX;
  }
}
```

???

- Notice how the bounce looks a bit weird on the right side? Why?
- Right, because `avatarX` refers to the _top left corner_ of our square
- If we want to account for that we need to adjust for the width

`if (avatarX < 0 || avatarX + avatarSize > width)`

---

class: middle

# Let's get controllable...

- So far we've been watching stuff happen...
- But now we have conditionals we can add the idea of controls
- Keyboard controls for example...

???

- Here's something I prepared earlier...
- It's a bit more complex than what we've been seeing!

```java
int avatarX = 0; // Avatar location on X
int avatarY = 0; // Avatar location on Y
int avatarSize = 10; // Avatar size (will be a square)
int avatarSpeed = 5;
int avatarVX = 0; // Number of pixels avatar should move each frame on X
int avatarVY = 0; // Number of pixels avatar should move each frame on Y

void setup() {
  size(500, 500);
}

void draw() {
  background(255); // Fill the background to create animation
  avatarX += avatarVX; // Add the X velocity to the avatar's X location so it moves
  avatarY += avatarVY; // Add the Y velocity to the avatar's Y location so it moves
  rect(avatarX, avatarY, avatarSize, avatarSize); // Draw the avatar in its new location
}

void keyPressed() {
  // Check which key just got pressed and change the avatar's velocity appropriately!
  // Note that Processing has built in variables UP, DOWN, LEFT, RIGHT which store the
  // keyCode of the corresponding arrow key!
  if (keyCode == UP) {
    avatarVY = -avatarSpeed;
    avatarVX = 0;
  }
  else if (keyCode == DOWN) {
    avatarVY = avatarSpeed;
    avatarVX = 0;
  }
  else if (keyCode == LEFT) {
    avatarVX = -avatarSpeed;
    avatarVY = 0;
  }
  else if (keyCode == RIGHT) {
    avatarVX = avatarSpeed;
    avatarVY = 0;
  }
}

void keyReleased() {
  // Check which key just got released and change the avatar's velocity appropriately!
  if (keyCode == UP) {
    avatarVY = 0;
  }
  else if (keyCode == DOWN) {
    avatarVY = 0;
  }
  else if (keyCode == LEFT) {
    avatarVX = 0;
  }
  else if (keyCode == RIGHT) {
    avatarVX = 0;
  }
}
```

---

class: middle

# `true` and `false` are `boolean`s

- We've already seen variables can have a _type_ like `int` and `float` and `String`
- There is another type called `boolean` we can use to store either `true` or `false`
- Which means we can track a condition in a variable!

```java
int meaningOfLife = 42;
boolean lifeHasMeaning = (meaningOfLife == 42);
if (lifeHasMeaning) {
  println("Phew.");
}
else {
  println("Oh no...");
}
```

---

class: middle

# Push the button...

```java
boolean lightIsOn = false;

void setup() {
  size(500,500);
}

void draw() {
  if (lightIsOn) {
    background(255);
  }
  else {
    background(0);
  }
}

void mouseReleased() {
  lightIsOn = !lightIsOn;
}
```

---

class: middle

# Food for thought...

- Now we can make _decisions_ in our code based on _context_ and _input_
- This is a huge step because it means our programs can _behave differently_ based on what happens
- But be aware that this is a double-edged (+10) sword... can you think of a danger?
--

- Exactly. It can be very tempting to think of programming as

_if this then that otherwise that but if this then that other thing unless this in which case that and then that..._

---

class: middle

# Food for thought...

_If the player smiles then make the sun get brighter, if the player tries to shave with their broadsword check their shaving skill tree and if they have at least 4 shave points and the sun is up and they talked to the priest then the shave is successful but otherwise they cut their own head off and if they climb a mountain and if the mountain is actually a giant then the giant wakes up if the sun is in its eyes and otherwise there is a five percent chance it wakes up but only if the player prayed at the Homunculus altar at the start of the game and if..._

- This is the problem of _content generation_ in games in particular
- And this is why the actual things you can do in games is _so limited_

???

- A big part of the solution concerns not modeling games at the level of “action and reaction” but creating the underlying systems.
- So you make a physics system rather than “what happens if they jump off a mountain, what about off a chair?”
- Procedural content modeling is a major area of research here, too.
- Ultimately this is a very serious issue in creating games/worlds.

---

class: middle

# On leaving

- If you want to leave studio time like 10 minutes early at the end of class, that's fine
- If you need to leave earlier than that, you need a reason and you need to talk to Pippin

---

class: middle

# Office Hours

- Wednesdays from 15:00–17:00 was the winner
- I'll be in either EV 6.743 or EV 6.745 during that time
- All questions of any kind are completely welcome
- Remember it's a form of _participation_!

---

class: middle

# Homework
- __Now:__ Get a GitHub Account and make your `cart253` repository following the [tutorial on the wiki](https://github.com/pippinbarr/cart253-2017/wiki/CART253-GitHub-Desktop-Introduction)
- Add yourself to the [People](https://github.com/pippinbarr/cart253-2017/wiki/People) page if you haven't already, and make sure you have a link to the `cart253` repository on it
- Do [Exercise 01](https://github.com/pippinbarr/cart253-2017/wiki/Exercise-01) and __make sure the final version is in your repository on github.com before the deadline__ (we will make sure of this next week)
- The readings from _this week_ are chapters 4 and 5 of _Learning Processing_ (variables and conditionals)
- The readings for _next week_ are chapters 6 and 7 of _Learning Processing_ (loops and functions)
