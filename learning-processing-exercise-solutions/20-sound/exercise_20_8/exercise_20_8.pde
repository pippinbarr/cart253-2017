import processing.sound.*;

AudioIn mic;
Amplitude analyzer;

float clapLevel = 0.5;  // How loud is a clap
float threshold = 0.25; // How quiet is silence
boolean clapping = false;
boolean scoredClap = false; // Have we added points for the current clap

float targetX;
float targetY;
int targetW = 200;
int targetH = 200;

float moverX;
float moverY;
int moverW = 100;
int moverH = 100;

float xtime = 0.0;
float ytime = 100.0;
float increment = 0.01;

int score = 0;


void setup() {
  size(640, 480);
  background(255);
  // Create an audio input and grab the first channel
  mic = new AudioIn(this, 0);
  // Start the audio Input
  mic.start();
  // Create a new amplitude analyzer
  analyzer = new Amplitude(this);
  // Patch the input to the analyzer
  analyzer.input(mic);
  
  targetX = width/2;
  targetY = height/2;
}

void draw() {
  background(255);
  checkClapping();
  moveMover();
  drawTarget();
  
  if (clapping && !scoredClap) {
    if (overlap()) {
      score++;
      scoredClap = true;
    }
    else {
      score -= 10;
    }
  }
  
  fill(0);
  textSize(18);
  text(score + " POINTS",100,100);
}


void moveMover() {
  noStroke();
  fill(0, 127);
  moverX = map(noise(xtime), 0, 1, 0, width);
  moverY = map(noise(ytime), 0, 1, 0, height);

  ellipse(moverX, moverY, moverW, moverH);

  xtime += increment;
  ytime += increment;
}

void drawTarget() {
  fill(255, 0, 0, 127);
  ellipse(width/2, height/2, targetW, targetH);
}

boolean overlap() {
  return dist(moverX, moverY, width/2, height/2) < moverW/2+targetW/2;
}

void checkClapping () {
  // Get the overall volume (between 0 and 1.0)
  float volume = analyzer.analyze();
  if (volume > clapLevel && !clapping) {
    clapping = true; // I am now clapping!
  } else if (clapping && volume < threshold) {
    clapping = false;
    scoredClap = false;
  }
}