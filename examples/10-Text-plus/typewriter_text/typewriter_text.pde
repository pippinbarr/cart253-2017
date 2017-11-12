// We're using a class to handle displaying strings like a typewriter
Typewriter myText;

void setup() {
  size(500,500);
  // Create the typewriter with a position, font size, and animation speed
  myText = new Typewriter(100,100,32,10);
  // Set the text
  myText.setText("Hello, world!\nIt's great to see you!");
}


void draw() {
  background(0);
  // Display the typewriter each frame (it will handle displaying characters at the right time)
  myText.display();
}