// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 10-4
// Pippin Barr

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