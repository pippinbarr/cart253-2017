import processing.video.*;

// From Schiffman:
// Note that not all video formats support backwards playback. 
// For example, the theora codec does support backward playback, 
// but not so the H264 codec, at least in its current version.
//
// From Pippin:
// The file used here is H.264, so no reverse playback. Sad!

Movie movie;

void setup() {
  size(640, 480);
  background(0);
  movie = new Movie(this, "movie.mp4");
  movie.loop();
}

void movieEvent(Movie movie) {
  movie.read();
}

void draw() {
  // Ratio of mouse X over width
  float ratio = mouseX / (float) width;
  float newSpeed = map(ratio, 0, 1, 0, 2);
  println(newSpeed);
  movie.speed(newSpeed);
  image(movie, 0, 0, width, height);
}