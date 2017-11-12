PFont f;

int x = 0;
int y = 100; // Note I added a y variable to display the y coordinate
int speed = 2;

void setup() {
  size(480, 270);
  f = createFont("Arial",16);
}

void draw() {
  background(255);

  // Add the current speed to the x location.
  x = x + speed;

  // Remember, || means "or."
  if ((x > width) || (x < 0)) {
    // If the object reaches either edge, 
    // multiply speed by -1 to turn it around.
    speed = speed * -1;
  }

  // Display circle at x location
  stroke(0);
  fill(175);
  ellipse(x, y, 32, 32);
  
  // Display the circle's location as text
  fill(0);
  textFont(f);
  String locationString = x + "," + y;
  text(locationString,x + 20,y);
}