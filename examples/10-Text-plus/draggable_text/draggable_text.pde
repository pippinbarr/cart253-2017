// ProddableText
//
// Totally largely taken from the book. Allows you to
// move individual characters in a displayed String
// around with the mouse.


// Font
PFont font;
// The string to work with
String prodString = "Stylish and modern.";
// An array of Letters to represent the string on screen
Letter[] letters;


// setup()
//
// 
void setup()  {
  size(500,500);
  
  // Set up font
  font = createFont("Helvetica",32,true);
  textFont(font);
  fill(255);

  // Create an array to store individual Letter objects
  // for each character in our string
  letters = new Letter[prodString.length()];
  
  // Starting position on the screen for displaying the string
  int x = 100;
  int y = 200;
  
  // Now go through each character in the string and 
  // store a new Letter object for it.
  // Set its x such that it will be nicely kerned
  // based on the width of the character in the current font.
  for (int i = 0; i < prodString.length(); i++) {
    letters[i] = new Letter(prodString.charAt(i));
    letters[i].setPosition(x,y);
    // Here we calculate the width of the current character
    // and update x so the next character will be drawn
    // after it!
    x += textWidth(prodString.charAt(i));
  }
}


// draw()
//
// Just goes through each Letter in the string and updates
// and displays it.
void draw() {
  background(0);
  
  // Go through all the Letters and use update()
  // to change their positions based on the mouse
  // and display() to draw them on the screen
  for (int i = 0; i < letters.length; i++) {
    letters[i].update();
    letters[i].display();
  }
}