import processing.sound.*;

int x = 0;
int speed = 2;

SoundFile dog1;
SoundFile dog2;

void setup() {
  size(480, 270);

  dog1 = new SoundFile(this, "dog1.mp3");
  dog2 = new SoundFile(this, "dog2.mp3");
}

void draw() {
  background(255);

  // Add the current speed to the x location.
  x = x + speed;

  // Remember, || means "or."
  if (x > width) {
    dog1.pan(1);
    dog1.play();
    speed = speed * -1;
  } else if (x < 0) {
    dog2.pan(-1);
    dog2.play();
    speed = speed * -1;
  }

  // Display circle at x location
  stroke(0);
  fill(175);
  ellipse(x, 100, 32, 32);
}