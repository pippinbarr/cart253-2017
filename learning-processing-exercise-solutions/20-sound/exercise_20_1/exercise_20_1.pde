// Import the sound library
import processing.sound.*;

// A sound file object
SoundFile dingdong;

// A doorbell object (that will trigger the sound)
Doorbell doorbell;

void setup() {
  size(200, 200);

  // Create a new doorbell
  doorbell = new Doorbell(width/2, height/2, 64, "doorbell.mp3", this);
}

void draw() {
  background(255);
  // Show the doorbell
  doorbell.display(mouseX, mouseY);
}

void mousePressed() {;
  // If the user clicks on the doorbell, play the sound!
  if (doorbell.contains(mouseX, mouseY)) {
    doorbell.ring();
  }
}