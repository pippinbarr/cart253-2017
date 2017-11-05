import processing.sound.*;

// A sound file object
SoundFile song;

void setup() {

  size(200, 200);

  // Load a sound file
  song = new SoundFile(this, "song.mp3");

  // Loop the sound forever
  // (well, at least until stop() or pause() are called)
  song.loop();
}

void draw() {
  background(255);

  float volume = map(mouseX, 0, width, 0, 1);
  song.amp(volume);

  // Set the rate to a range between 0 and 2
  // Changing the rate alters the pitch
  float speed = map(mouseY, height, 0, 0, 2);
  song.rate(speed);

  // Draw some circles to show what is going on
  stroke(0);
  fill(51, 100);
  ellipse(mouseX, 100, 48, 48);
  stroke(0);
  fill(51, 100);
  ellipse(100, mouseY, 48, 48);
}