class: middle

# CART 253 | 10 | Text+

---

# Today

## Exercise 06?
## Pitches?
## Text
## +

---

# Exercise 06?

- Remember to commit! Early and often!

---

# Pitches?

- Key approach: work out the _minimal viable product_ for your project and _make that first_
- So, figure out the _smallest version of the project_ that would get across the basic idea
  * Maybe that's a car driving down a road or a square collecting coins
  * or a ghost that moves around on the screen, etc.
- _Then_ start adding things progressively from there
- (e.g. _Don't try to make the whole thing at once_)

---

class: middle

# Text

---

# Intere`String`

- Texts are represented in programming is as a `String`
- A `String` is a specific type of variable that can hold any number of characters
- We declare them like this:

```java
String myString;
```

- And we put `String` values into them (called "String literals" in fact) like this

```java
myString = "This is a String for the ages!";
```

---

# Intere`String`

- We've seen `String`s used in different situations
- Such as for writing the _filename_ of an image file when we call `loadImage()`

```java
PImage myImage = loadImage("images/picture_of_a_cat.png"); // The filename is in a String
```

- Or even just printing messages to ourselves with `println()`

```java
println("O Brave New World, that has such Strings in it!");
```

---

# `String`s are from Java

- A `String` is a type that comes from the language Java unlike something like `PImage` which is provided by Processing specifically
- And in fact the idea of a `String` is common across most programming languages
- We can get information about how to use `String`s both from [The Processing Reference page on Strings](https://processing.org/reference/String.html) and from the official [Java documentation about Strings](https://docs.oracle.com/javase/7/docs/api/java/lang/String.html).

---

# The size of a `String`

- When we talk about `String`s we can talk about their _length_
- `"This String is forty-one characters long."`
- The length of a `String` includes spaces, punctuation, etc.
- You can get the length of a String like this

```java
String myString;
myString = "This String is forty-one characters long.";
int myStringLength = myString.length();
println(myStringLength);
```

---

# Characters in numbered places

- Because a `String` of text is in a specific _order_ we can also talk about characters in a `String` being in a numbered location in the `String`
- In the `String` `"This is a beautiful String."` the first `s` is at position `3` (we count from `0` like always)
- We can get the character at a specific location using `charAt()`

```java
String myString = "Keep calm and write Strings.";
char fourthChar = myString.charAt(3);
println(fourthChar); // Which is 'p'
```

- So a `String` is conceptually very similar to an _array of `char`s_

---

# Changing `String`s

- There are methods for changing the representation of a String such as

```java
String myString = "What a lovely Winter's day!";
String myUpperString = myString.toUpperCase();
String myLowerString = myString.toLowerCase();
println(myUpperString);
println(myLowerString);
println(myString);
```

- Notice that `myString` _isn't changed_ by those methods - they return a _new_ `String` with the changes applied to it

---

# Comparing `String`s

- We _can_ compare two `String`s just using the usual equality operator `==` like this:

```java
String string1 = "This is String number one.";
String string2 = "This is String number two.";

if (string1 == string2) {
  println("Strings are the same.");
} else {
  println("Strings are different.");
}
```

---

# Comparing `String`s

- _But_, it's considered better to use the `equals()` method instead, like this:

```java
String string1 = "This is String number one.";
String string2 = "This is String number two.";

if (string1.equals(string2)) {
  println("Strings are the same.");
} else {
  println("Strings are different.");
}
```

- The reasons for this concern the fact that `equals()` actually checks if the two `String`s have the same _characters_ in them, while `==` actually just checks whether they're in the same location in memory!

---

# `String` arithmetic

- We can use `+` with `String`s to create composite `String`s, which is nice

```java
String myString = "This";
myString = myString + " is my String.";
myString = myString + " There are many like it, but this one is mine.";

println(myString);
```

- We saw this with _filename generation_ last week for example.

---

# Seeing `String`s

- Most, if not all, of us have already figured out that we can _display_ a `String` using the `text()` function
- Along with its helpers for changing styling etc.

```java
size(640,640);
background(255);
fill(255,0,0);
textSize(64); // Font size
textAlign(CENTER,CENTER); // Center align both horizontally and vertically
textLeading(64); // Line height for text
text("Say it\nlike you\nmean it.",width/2,height/2); // Note that \n means "new line"
```

---

# Other fonts

- Processing can use different fonts
- To do that, you create a `PFont` and load the font into it
- One way is to use `createFont()` to create a font based on a font already installed on the computer

```java
PFont courierFont = createFont("Courier",64); // Create a Courier font
size(640,640);
background(255);
fill(255,0,0);
textFont(courierFont); // Use the Courier font
textSize(64); // Font size
textAlign(CENTER,CENTER); // Center align both horizontally and vertically
textLeading(64); // Line height for text
text("Say it\nlike you\nmean it.",width/2,height/2); // Note that \n means "new line"
```

---

# Other fonts

- Using `createFont()` that way won't work if the person using your program doesn't have the specific font installed
- So another way is to specifically create a font file in Processing
- You go to `Tools > Create Font...`
- You choose your font and settings
- You hit okay
- And you have a `.vlw` file in your `data` directory containing that font
- Now you can use `loadFont()` to load that file and use that font...

---

_(After creating `myNiceFont.vlw`)_

```java
PFont myNiceFont = loadFont("myNiceFont.vlw"); // Load the font file
size(640,640);
background(255);
fill(255,0,0);
textFont(myNiceFont); // Use the new font
textSize(64); // Font size
textAlign(CENTER,CENTER); // Center align both horizontally and vertically
textLeading(64); // Line height for text
text("Say it\nlike you\nmean it.",width/2,height/2); // Note that \n means "new line"
```

---

# Measuring texts...

- When a `String` is represented on screen with a font, it has actual dimensions that it might be nice to know
- We can use `textWidth("String I want the width of.")` to find out the width of a specific String in the currently active font
- And we can use `textAscent()` and `textDescent()` to find out how far above and below the base line the currently active font goes
- So `textAscent() + textDescent()` gives us the _height_ of text and `textWidth()` gives us the _width_
- (Note this gets more complicated for multiline text!)

---

# Screensaver

See Presenter Notes ('P')

???

```java
// The font
PFont myNiceFont;
// The text
String myString = "Boing";

// Position and dimensions
float x;
float y;
float w;
float h;

// Velocity
int vx = 5;
int vy = 5;

void setup() {
  size(640, 640);
  // Load the font file
  myNiceFont = loadFont("myNiceFont.vlw");
  // Set the font, size, alignment
  textFont(myNiceFont);
  textSize(64);
  textAlign(CENTER, CENTER);
  // Starting position
  x = width/2;
  y = height/2;
  // Calculate dimensions based on width and ascent/descent
  w = textWidth(myString);
  h = textAscent() + textDescent();
}

void draw() {
  // Draw the text on screen
  background(255);
  fill(255, 0, 0);
  text(myString, x, y);
  // Update position with velocity
  x += vx;
  y += vy;
  // Check for bouncing (possible because we know the dimensions)
  if (x + w/2 > width || x - w/2 < 0) {
    vx = -vx;
  }
  if (y + h/2 > height || y - h/2 < 0) {
    vy = -vy;
  }
}
```

---

# Star Wars

See Presenter Notes ('P')

???

```java
// The text
String crawler = "A long time ago, in a galaxy\nfar, far away, Pippin was typing a\n long String for an example in\nhis programming class.\n\nBut it was never quite long enough.";

// Position and velocity
float x;
float y;
float z;
// We'll move UP and IN on the y and z axes
int vz = -2;
int vy = -2;

void setup() {
  size(640, 640, P3D);
  // Set up the font
  textSize(64); // Font size
  textAlign(CENTER,CENTER); // Center align both horizontally and vertically
  // Starting position (below the bottom fo the window)
  x = width/2;
  y = 2*height;
  z = 0;
}

void draw() {
  background(0);
  // Using randomSeed to get the same stars every frame
  randomSeed(1);
  // Draw a bunch of stars for a galaxy far, far away
  for (int i = 0; i < 500; i++) {
    stroke(255);
    point(random(width),random(height));
  }
  // Use Star Wars Yellow
  fill(255,255,0);
  pushMatrix();
  // Translate to the current location of the text
  translate(x,y,z);
  // Rotate on the X so it "leans away from us"
  rotateX(radians(45));
  // Draw the text
  text(crawler, 0, 0, 0);
  popMatrix();
  // Update position based on velocity
  z += vz;
  y += vy;
}
```

---

class: middle

# +

---

# Example: Typewriter Text

See `typewriter_text` in `10-Text-plus` in the `examples/` folder on the class repository.

---

# Example: Proddable Text

See `proddable_text` in `10-Text-plus` in the `examples/` folder on the class repository.

---

# Example: Animating Sprites by hand

See `sprite_animation_by_hand` in `10-Text-plus` in the `examples/` folder on the class repository.

---

# Example: Animating Sprites with the Sprites library

See `sprite_animation_by_library` in `10-Text-plus` in the `examples/` folder on the class repository.

---

# Homework/Nowwork

- __Now:__ Finish [Exercise 07](https://github.com/pippinbarr/cart253-2017/wiki/Exercise-07)
- __Nowish:__ Start [Exercise 08](https://github.com/pippinbarr/cart253-2017/wiki/Exercise-08), due next week
- There are _no readings for next week_
- The readings for _this week_ were Chapters 20 and 21 of _Learning Processing_ (Sound and Exporting)
