class: middle

# CART 253 | 11 | Other worlds

---

# Today

## Exercise 07
## JavaScript
## Course evaluations

---

# Exercise 07

- Once again, everyone is basically doing a good job there
- Once again, please remember to
  - Commit early
  - Commit often
  - Commit with a detailed commit message that explains what you did

---

class: middle

# JavaScript

---

# We have come a long way

- We've learned a lot of programming concepts
- `setup()` and `draw()`, mouse event handlers, calling functions, variables, `if` statements, functions, `while`-loops, `for`-loops, `class`es, arrays, libraries, math, `String`s, ...
--

- As I kept promising along the way, these concepts are highly _transferrable_
- That is, to a very large extent, programming in Processing is just _programming_
--

- So briefly today I wanted to take a look at p5.js, a Processing-like library for JavaScript
- As a way to notice how your knowledge can _transfer_

---

# This course is still in Processing

- You _do not need to know JavaScript for this course_
- We're just going to look at it as an example of another programming language
- Which conveniently uses a library based on Processing
- So that we can see the similarities
- You _do not need to learn JavaScript right now_

---

# Bouncers in JavaScript

- In order to see how similar JavaScript (with p5.js) and Processing are, I've rewritten our favourite Bouncers
- To work in JavaScript with p5.js you need three main files
  - `index.html` - the HTML for your webpage (that will display the program)
  - `p5.js` - the p5 library (that recreates Processing in JavaScript)
  - `sketch.js` - the program you are actually writing
- Because Bouncers are best represented as a class, I'm adding
  - `Bouncer.js` - the Bouncer class definition

---

# index.html

```html
<!DOCTYPE html>
<html>
  <head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.5.11/p5.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.5.11/addons/p5.dom.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.5.11/addons/p5.sound.min.js"></script>
    <link rel="stylesheet" type="text/css" href="style.css">
    <meta charset="utf-8" />
  </head>
  <body>
    <script src="Bouncer.js"></script>
    <script src="sketch.js"></script>
  </body>
</html>
```

---

# p5.js

- I'm not going to cut-and-paste the entire p5.js library into this slide!
- It's a bit too big for that
- But of course we need it, because it provides all the functions that make Processing Processing
- Like `rect()` and `random()` and `constrain()` and so on

---

# sketch.js

```javascript
var numBouncers = 5;
var bouncers = [];

function setup() {
  createCanvas(480,480);
	for (var i = 0; i < numBouncers; i++) {
		var b = new Bouncer(width/2,height/2,10 - random(20),10 - random(20));
		bouncers.push(b);
	}
}

function draw() {
  background(220);
	for (var i = 0; i < bouncers.length; i++) {
		bouncers[i].update();
		bouncers[i].display();
	}
}
```

---

# Bouncer.js

- The code is in the presenter notes

???

```javascript
class Bouncer {
	constructor(x,y,vx,vy) {
		this.x = x;
		this.y = y;
		this.vx = vx;
		this.vy = vy;
		this.size = 25;
		this.fill = color(random(255),random(255),random(255));
		this.tone = new Audio("bounce.wav");
	}

	update() {
		this.x += this.vx;
		this.y += this.vy;

		if (this.x - this.size/2 < 0 || this.x + this.size/2 > width) {
			this.vx = -this.vx;
			this.tone.play();
		}

		if (this.y - this.size/2 < 0 || this.y + this.size/2 > height) {
			this.vy = -this.vy;
			this.tone.play();
		}

		this.x = constrain(this.x, this.size/2, width - this.size/2);
		this.y = constrain(this.y, this.size/2, height - this.size/2);
	}

	display() {
		fill(this.fill);
		noStroke();
		ellipse(this.x,this.y,this.size,this.size);
	}
}
```

---

# The p5.js online code editor

- The people who creates p5.js have kindly put together a web-based editor
- At https://alpha.editor.p5js.org (It's in alpha, so expect issues perhaps)
- This will allow us to easily view our program running online
- Let's do that now

---

# That's it!

- We learned the syntax of Java via Processing
- But JavaScript uses essentially the same _concepts_, just with a different _syntax_
- So learning JavaScript from here would be a matter of learning the _syntax_ more than anything
- That is an amazing thing!

---

class: middle

# Course Evaluations

---

# Homework/Nowwork

- __Now:__ Please fill out the course evaluation on [my.concordia.ca](http://my.concordia.ca) (I believe the link is that the bottom left of the page when you log in - I will leave the room for twenty minutes so you can do it now)
- __Also:__ Don't forget to finish and submit your final project prototype as [Exercise 08](https://github.com/pippinbarr/cart253-2017/wiki/Exercise-07)
- __Otherwise:__ Work on your final project! Get help! Make art!
- There are _no readings for next week_
- There were _no readings for this week_
