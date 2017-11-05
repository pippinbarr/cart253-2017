// I don't understand how Schiffman means for us to access
// left and right volume levels of the audio input, I don't
// see anything about it in the documentation.

// But I'm guessing it's the channel listed in the AudioIn
// constructor...

import processing.sound.*;

AudioIn micL;
AudioIn micR;

Amplitude analyzerL;
Amplitude analyzerR;

void setup() {
  size(200, 200);
  micL = new AudioIn(this, 0);
  micR = new AudioIn(this, 1);
  micL.start();
  micR.start();

  analyzerL = new Amplitude(this);
  analyzerL.input(micL);
  analyzerR = new Amplitude(this);
  analyzerR.input(micR);
}

void draw() {
  background(255);
  float volumeL = analyzerL.analyze();
  float volumeR = analyzerR.analyze();
  fill(127);
  stroke(0);
  ellipse(width/3, height/2, 10 + volumeL*200, 10 + volumeL*200);
  ellipse(2*width/3, height/2, 10 + volumeR*200, 10 + volumeL*200);
}