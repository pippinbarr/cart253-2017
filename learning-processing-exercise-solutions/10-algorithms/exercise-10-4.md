Additions to the code are all in the Main file and are indicated by being surrounded by comments with '+++' in them.

# Main file

```java
Catcher catcher;    // One catcher object
Timer timer;        // One timer object
Drop[] drops;       // An array of drop objects
int totalDrops = 0; // totalDrops

// +++
int startingScore = 10; // Score you start with in a level
int score = startingScore; // Player's score
boolean gameOver = false; // Whether the game is over
int level = 1; // The current level
// +++


void setup() {
  size(480, 270);
  catcher = new Catcher(32); // Create the catcher with a radius of 32
  drops = new Drop[1000];    // Create 1000 spots in the array
  timer = new Timer(300);    // Create a timer that goes off every 300 milliseconds
  timer.start();             // Starting the timer
}

void draw() {
  // +++
  if (gameOver) {
    // Display a red background if the player lost
    background(255, 0, 0);
    // By calling return here we skip all the rest of the game logic below!
    // So we'll just have a red screen and nothing.
    return;
  }
  // +++

   background(255);

  // Set catcher location
  catcher.setLocation(mouseX, mouseY);
  // Display the catcher
  catcher.display();

  // Check the timer
  if (timer.isFinished()) {
    // Deal with raindrops
    // Initialize one drop
    drops[totalDrops] = new Drop();

    // +++
    // Set the speed of drops based on the current level!
    drops[totalDrops].speed *= level;
    // +++

    // Increment totalDrops
    totalDrops ++ ;
    // If we hit the end of the array
    if (totalDrops >= drops.length) {
      totalDrops = 0; // Start over

      // +++
      // Go up a level
      level++;
      // Reset the score
      score = startingScore;
      // +++
    }
    timer.start();
  }

  // Move and display all drops
  for (int i = 0; i < totalDrops; i++ ) {
    drops[i].move();
    drops[i].display();
    if (catcher.intersect(drops[i])) {
      drops[i].caught();
    }

    // +++
    // Check for drops that reach the bottom of the screen
    if (drops[i].reachedBottom()) {
      // This drop reached the bottom, so
      // Decrease the score
      score--;
      // Use caught() to move the drop out of the game
      drops[i].caught();
      // Check if the game is over
      if (score == 0) {
        // The player has lost the game
        gameOver = true;
        // Remove all the drops by declaring them caught()
        for (int j = 0; j < totalDrops; j++) {
          drops[j].caught();
        }
      }
    }
    // +++
  }

  // +++
  // Display the "score rectangle", aka "health bar"
  // No stroke
  noStroke();
  // Make it red
  fill(255, 0, 0);
  // Display a rectangle relative to the width of the window
  // width/startingScore tells us how wide one health unit should be
  // if full health would fill the width of the window
  // Multiplying by score lets us display the current health
  rect(0, 0, (width/startingScore) * score, 10);
  // +++
}
```

# `Catcher.pde`

```java
class Catcher {
  float r;    // radius
  color col;  // color
  float x, y; // location

  Catcher(float tempR) {
    r = tempR;
    col = color(50, 10, 10, 150);
    x = 0;
    y = 0;
  }

  void setLocation(float tempX, float tempY) {
    x = tempX;
    y = tempY;
  }

  void display() {
    stroke(0);
    fill(col);
    ellipse(x, y, r*2, r*2);
  }

  // A function that returns true or false based on
  // if the catcher intersects a raindrop
  boolean intersect(Drop d) {
    // Calculate distance
    float distance = dist(x, y, d.x, d.y);

    // Compare distance to sum of radii
    if (distance < r + d.r) {
      return true;
    } else {
      return false;
    }
  }
}
```

# `Drop.pde`

```java
class Drop {
  float x, y;   // Variables for location of raindrop
  float speed;  // Speed of raindrop
  color c;
  float r;      // Radius of raindrop

  Drop() {
    r = 8;                   // All raindrops are the same size
    x = random(width);       // Start with a random x location
    y = -r*4;                // Start a little above the window
    speed = random(1, 5);    // Pick a random speed
    c = color(50, 100, 150); // Color
  }

  // Move the raindrop down
  void move() {
    // Increment by speed
    y += speed;
  }

  // Check if it hits the bottom
  boolean reachedBottom() {
    // If we go a little beyond the bottom
    if (y > height + r*4) {
      return true;
    } else {
      return false;
    }
  }

  // Display the raindrop
  void display() {
    // Display the drop
    fill(c);
    noStroke();
    for (int i = 2; i < r; i++ ) {
      ellipse(x, y + i*4, i*2, i*2);
    }
  }

  // If the drop is caught
  void caught() {
    // Stop it from moving by setting speed equal to zero
    speed = 0;
    // Set the location to somewhere way off-screen
    y = -1000;
  }
}
```

# `Timer.pde`

```java
class Timer {

  int savedTime; // When Timer started
  int totalTime; // How long Timer should last

  Timer(int tempTotalTime) {
    totalTime = tempTotalTime;
  }

  // Starting the timer
  void start() {
    // When the timer starts it stores the current time in milliseconds.
    savedTime = millis();
  }

  // The function isFinished() returns true if 5,000 ms have passed.
  // The work of the timer is farmed out to this method.
  boolean isFinished() {
    // Check how much time has passed
    int passedTime = millis() - savedTime;
    if (passedTime > totalTime) {
      return true;
    } else {
      return false;
    }
  }
}
```
