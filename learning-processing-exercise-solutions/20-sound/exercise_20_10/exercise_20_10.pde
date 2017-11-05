import processing.sound.*;
import processing.pdf.*;

AudioIn mic;

FFT fft;
int bands = 32;

void setup() {
  size(512, 360);

  // Create an audio input and grab the first channel
  mic = new AudioIn(this, 0);
  // Start the audio Input
  mic.start();

  fft = new FFT(this, bands);
  fft.input(mic);
}

void draw() {
  background(255);
  fft.analyze();
  for (int i = 0; i < fft.size(); i++) {
    float y = map(fft.spectrum[i], 0, 0.5, height * 0.75, 0);
    noStroke();
    fill(int(200/bands)*i);
    rect((width/bands)*i, y, (width/bands)*(i+1), height);
  }
}