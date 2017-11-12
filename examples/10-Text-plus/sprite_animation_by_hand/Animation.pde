// Animation
// From: https://processing.org/examples/animatedsprite.html
//
// Allows us to create a simple frame-by-frame animation based on
// a set of numbered image files

class Animation {
  // An array of PImages to store the separate frames
  PImage[] images;
  // The number of images we're going to use in the animation
  int imageCount;
  // The current frame being displayed
  int currentFrame;
  // The number of frames of the program per frame of animation
  int rate;

  // Animation constructor
  //
  // Loads the separate images into the PImage array
  // Sets the rate to display
  Animation(String imagePrefix, int count, int tempRate) {
    // Save the count of images
    imageCount = count;
    // Create the array
    images = new PImage[imageCount];
    // Loop through the number of images and generate their filenames
    // then load that image into the array
    for (int i = 0; i < imageCount; i++) {
      String filename = imagePrefix + (i+1) + ".png";
      images[i] = loadImage(filename);
    }
    // Save the rate
    rate = tempRate;
  }

  // display(x,y)
  //
  // Should be called every frame.
  // Displays the appropriate frame of animation
  void display(float xpos, float ypos) {
    // Check if this frame is one where we should update the animation
    if (frameCount % rate == 0) {
      // Change the frame (loop if we reach the end of the array)
      currentFrame = (currentFrame+1) % imageCount;
    }
    // Draw the image corresponding to this frame
    imageMode(CENTER);
    image(images[currentFrame], xpos, ypos);
  }

  // getWidth()
  //
  // Returns the width of the animation image
  int getWidth() {
    return images[0].width;
  }

  // getHeight()
  //
  // Returns the height of the animation image
  int getHeight() {
    return images[0].height;
  }
}