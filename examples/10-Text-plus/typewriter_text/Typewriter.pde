// Typewriter
//
// Very basic class that can display text like a typewriter,
// one character at a time.

class Typewriter {

  // The whole text to display
  String text = "";
  
  // The current text being displayed
  String currentText = "";
  
  // The character to display next in the text
  int currentChar = 0;
  
  // How many frames between characters displayed
  int framesPerChar;
  
  // Position and size
  int x;
  int y;
  int size;

  // Typewriter constructor
  //
  // Takes the position of the text, the size of the text, and the
  // number of frames between characters displaying
  
  Typewriter (int tempX, int tempY, int tempSize, int tempFramesPerChar) {
    x = tempX;
    y = tempY;
    size = tempSize;
    framesPerChar = tempFramesPerChar;
  }

  // setText(String)
  //
  // Set the text for this Typewriter to display
  void setText(String tempText) {
    // Reset the currentText to be empty
    currentText = "";
    // Store the text to display
    text = tempText;
  }

  // display()
  //
  // Should be called every frame, displays the text at the
  // position given and at the size given, updates the text
  // over time to display each character one at a time.
  void display() {
    // Make sure there's a text to display
    if (text != "") {
      // Check if this frame is a multiple of our frame rate
      if (frameCount % framesPerChar == 0) {
        // Check whether there are more characters to display
        if (currentChar < text.length()) {
          // Add the next character to our display String
          currentText += text.charAt(currentChar);
          // Increase the character index
          currentChar++;
        }
      }
      // Set the size
      textSize(size);
      // Display the current text at the position
      text(currentText,x,y);
    }
  }
}