PImage[] landscapes = new PImage[6];
ImageSequence[] sequences = new ImageSequence[4];

void setup() {
  size(480, 480);
  for (int i = 0; i < landscapes.length; i++) {
    landscapes[i] = loadImage("landscape" + (i+1) + ".jpg");
  }

  // This could be done with a for loop, but it's kind of awkward
  // and maybe just easier to do element by element.
  sequences[0] = new ImageSequence(landscapes,0,0,width/2,height/2);
  sequences[1] = new ImageSequence(landscapes,width/2,0,width/2,height/2);
  sequences[2] = new ImageSequence(landscapes,width/2,height/2,width/2,height/2);
  sequences[3] = new ImageSequence(landscapes,0,height/2,width/2,height/2);
  
  frameRate(2);
}

void draw() {
  background(0);
  for (int i = 0; i < sequences.length; i++) {
    sequences[i].update();
    sequences[i].display();
  }
}