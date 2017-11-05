import processing.sound.*;

SinOsc osc;

float[] notes = {261.63,293.66,329.63,349.23,392.00,440.00,493.88,523.25};

void setup() {
  size(200, 200);
  
  osc = new SinOsc(this);
  
  frameRate(5);
}

void draw() {
  background(255);
  
  osc.stop();
  int randomNoteIndex = int(random(notes.length));
  osc.freq(notes[randomNoteIndex]);
  osc.play();
}