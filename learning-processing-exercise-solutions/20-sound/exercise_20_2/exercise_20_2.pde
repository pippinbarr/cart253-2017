// Import the sound library
import processing.sound.*;

// Buttons
Button button1;
Button button2;

void setup() {
  size(200, 200);

  button1 = new Button(width/3, height/2, 64, "doorbell.mp3", this);
  button2 = new Button(2*width/3, height/2, 64, "barking.mp3", this);
}

void draw() {
  background(255);
  // Show the buttons
  button1.display(mouseX, mouseY);
  button2.display(mouseX, mouseY);
}

void mousePressed() {
  ;
  // If the user clicks on a button, play the sound!
  if (button1.contains(mouseX, mouseY)) {
    button1.play();
  } else if (button2.contains(mouseX, mouseY)) {
    button2.play();
  }
}