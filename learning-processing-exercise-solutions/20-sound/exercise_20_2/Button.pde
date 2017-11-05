class Button {
  // Location and size
  float x;
  float y;
  float r;
  color c;
  SoundFile sound;

  // Create the button
  Button(float x_, float y_, float r_, String filename_, PApplet sketch) {
    x = x_;
    y = y_;
    r = r_;
    c = color(random(255), random(255), random(255));
    sound = new SoundFile(sketch, filename_);
  }

  // Is a point inside the doorbell? (used for mouse rollover, etc.)
  boolean contains(float mx, float my) {
    if (dist(mx, my, x, y) < r/2) {
      return true;
    } else {
      return false;
    }
  }

  void play() {
    // Schiffman requested we use isPlaying() here, but the current
    // version of the sound library doesn't appear to support it
    // properly.
    sound.play();
  }

  // Show the doorbell (hardcoded colors, could be improved)
  void display(float mx, float my) {
    if (contains(mx, my)) {
      fill(c);
    } else {
      fill(0);
    }
    stroke(0);
    strokeWeight(4);
    ellipse(x, y, r, r);

    println(sound.isPlaying());
  }
}