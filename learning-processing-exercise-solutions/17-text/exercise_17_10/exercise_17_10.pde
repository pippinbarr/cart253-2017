PFont f;
String message = "My name is Ozymandias";

// An array of Letter objects
Letter[] letters;

void setup() {
  size(260, 200);

  // Create the font
  f = createFont("Arial", 20);
  textFont(f);

  // Create the array the same size as the String
  letters = new Letter[message.length()];

  // Initialize Letters at the correct x location
  int x = 16;
  for (int i = 0; i < message.length(); i++) {
    letters[i] = new Letter(x, 100, message.charAt(i));
    x += textWidth(message.charAt(i));
  }
}

void draw() {
  
  background(255);
  
  for (int i = 0; i < letters.length; i++) {
    // Uncomment this line to move letters around with mouse
    // (Doesn't play well with .move())
    //letters[i].push(mouseX,mouseY);
    letters[i].move();
    letters[i].display();
  }
}