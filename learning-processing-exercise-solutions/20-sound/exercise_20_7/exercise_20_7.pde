import processing.sound.*;

AudioIn mic;

Amplitude analyzer;

float clapLevel = 0.5;  // How loud is a clap
float threshold = 0.25; // How quiet is silence
int clapcount = 0;

void setup() {
  size(200, 200);
  background(255);

  // Create an audio input and grab the first channel
  mic = new AudioIn(this, 0);

  // Start the audio Input
  mic.start();

  // Create a new amplitude analyzer
  analyzer = new Amplitude(this);

  // Patch the input to the analyzer
  analyzer.input(mic);
}

void draw() {
  // Get the overall volume (between 0 and 1.0)
  float volume = analyzer.analyze();

  if (volume > clapLevel) {
    clapcount++;
  }

  if (clapcount == 2) {
    clapcount = 0;
    stroke(0);
    fill(0, 100);
    rect(random(40, width), random(height), 20, 20);
  }  
  
  // Graph the overall volume
  // First draw a background strip
  noStroke();
  fill(200);
  rect(0, 0, 20, height);
  float y = map(volume, 0, 1, height, 0);
  float ybottom = map(threshold, 0, 1, height, 0);
  float ytop = map(clapLevel, 0, 1, height, 0);

  // Then draw a rectangle size according to volume
  fill(100);
  rect(0, y, 20, y);

  // Draw lines at the threshold levels
  stroke(0);
  line(0, ybottom, 19, ybottom);
  line(0, ytop, 19, ytop);
}