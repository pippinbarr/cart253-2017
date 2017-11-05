class: middle

# CART 253 | 09 | Sound

---

# Today

## Exercise 05?
## Sound
## Exporting

---

# Exercise 05?

- Commitment issues? Commit harder!
- Interactivity = the user/player can affect the program while it runs

---

class: middle

# Sound

---

# We're going to need a library or two

- Sound input and output doesn't just automatically work in Processing
- So we're going to need a library
- Processing has a basic Sound library that will work for us here

---

# Installing the Sound library

- As with Video, if the Sound library isn't installed we need to install it
- We can check by going to `Sketch > Import Library...`
- If Sound is there, it's installed
- If not, we go to `Add Library...` and scroll/search for Sound
- Then click `Install`

---

# `import processing.sound.*;`

- In order to use the Sound library we have to do the same `import` thing we did for the Video library:

```java
import processing.sound.*;
```

- You can type it in at the top of your program
- Or you can go to `Sketch > Import Library...` and choose Sound

---

# Playing a sound file

```java
import processing.sound.*;

// The SoundFile class comes with the library, it allows us to store
// a sound in a variable (similar to PImage storing an image)
SoundFile tone;

void setup() {
  // We load a sound by creating a new SoundFile and giving it the path to the file
  // Notice that sound file is in a subfolder called "sounds" - that's organised!
  tone = new SoundFile(this, "sounds/tone01.wav");
}

void draw() {
  // Nothin'
}

void mouseClicked() {
  // We play our sound with... play()
  tone.play();
}
```

---

# File formats

- The Processing Sound library can play the following sound formats:

  - MP3 (`.mp3`)
  - WAV (`.wav`)
  - AIFF (`.aif`, `.aiff`)

---

# Looping a sound file

```java
import processing.sound.*;

SoundFile tone;

void setup() {
  tone = new SoundFile(this, "sounds/tone01.wav");
}

void draw() {
}

void mouseClicked() {
  // All the same except that instead of play() we use loop()
  // Which makes sense.
  tone.loop();
}
```

---

# Stereo loops???

- For some reason with this library we _cannot_ loop stereo files
- It's a bug, not a feature

```java
import processing.sound.*;

SoundFile stereoSound;

void setup() {
  // This time we're loading a file that is created in stereo
  stereoSound = new SoundFile(this, "sounds/stereo_sound_file.wav");
}

void draw() {
}

void mouseClicked() {
  stereoSound.loop(); // This doesn't work! It just plays once!
}
```

---

# Oh libraries, when will you ever learn?

- If you desperately want to `loop()` stereo files then you have two key options

- _Option one_: Use _mono_ files so that `loop()` works
- _Option two_: Use the _Minim_ audio library instead

- The Minim library is very similar to the Sound library but is more sophisticated
- If you're really into audio, it might be more fun to play around with
- We'll see it again shortly

---

# `loop()`ing with Minim

```java
// Import the Minim library
import ddf.minim.*;

Minim minim; // Minim has a special class to handle sound tasks
AudioPlayer stereoSound; // And a separate class for something like an audio file

void setup() {
  minim = new Minim(this); // Make the Minim manager class into an object
  stereoSound = minim.loadFile("sounds/stereo_sound_file.wav"); // Load our sound file
}

void draw() {
}

void mouseClicked() {
  stereoSound.loop(); // Now this works fine
}
```

---

# Back to Sound, though!

- We'll stick with the basic Sound library for now as it's a little more straightforward
- So, we can `play()` a sound, and that's nice
- We can `loop()` a sound, also nice
- We would probably like to be able to `stop()` a sound too...
- And we can.

---

# `stop()` the music and go home

```java
import processing.sound.*;

SoundFile song;

void setup() {
  song = new SoundFile(this, "sounds/song.wav");
  song.loop();
}

void draw() {
}

void mouseClicked() {
  song.stop(); // Make it stop! Make it stop!
}
```

---

# Other playback fun

- `play()`, `loop()`, and `stop()` are the essentials, but there's more too (see the Reference!)
- For example there is `rate(factor)` allows us to change the rate of the sound,
- So `rate(2)` would double its speed... `rate(0.5)` would halve it...

---

# `rate()`

```java
import processing.sound.*;

SoundFile song;

void setup() {
  song = new SoundFile(this, "sounds/song.wav");
  // We'll loop our sound file so we can hear the effects of rate
  song.loop();
}

void draw() {
  // Calculate the rate the sound should play at based on the mouse location
  // Over to the left means very slow (minimum of 0.01x speed)
  // Over to the right means very fast (maximum of 5x speed)
  float newRate = map(mouseX,0,width,0.01,5);
  // Set the new rate
  song.rate(newRate);
}
```

---

# The pause that refreshes

- Weirdly there's no `pause()` available to us in the Sound library
- How could we pause?
--
 Very clever! We could use `rate(0)`!

---

# Go! Pause! Go!

```java
import processing.sound.*;

SoundFile song;
// We now need to keep track of what rate the sound is playing at
// By default it's 1, which is to say: normal
int currentRate = 1;

void setup() {
  song = new SoundFile(this, "sounds/song.wav");
  // Loop so that we can actually hear this working
  song.loop();
}

void draw() {
}

void mouseClicked() {
  // A little equation for flipping the rate between 0 and 1
  currentRate = 1 - currentRate;
  // Set the rate (if 0, it pauses, if 1 it plays on)
  song.rate(currentRate);
}
```

---

# A sense of timing

- What if we wanted to make a very basic generative music program?
- It would play a random sound according to a set rhythm
- Which might sound like music?
- What would we need?
--

- An array of sound files to randomly play
- The ability to check how much time has passed

---

```java
import processing.sound.*;

// Somewhere to store our 5 sound files
SoundFile[] tones = new SoundFile[5];
// The number of frames per beat of music
int framesPerBeat = 15;

void setup() {
  // Go through the array loading sound files into it
  for (int i = 0; i < tones.length; i++) {
    // We can use the i variable to work out which filename to use!
    tones[i] = new SoundFile(this, "sounds/tone0" + (i+1) + ".wav");
  }
}

void draw() {
  // Use modulo to check if this frame is a multiple of the beat count
  if (frameCount % framesPerBeat == 0) {
    // Pick a random index in the array
    int randomIndex = floor(random(0, tones.length));
    // Bonus! Set the pan of the sound based on the mouse!
    // -1 means full left, 1 means full right
    tones[randomIndex].pan(map(mouseX,0,width,-1,1));
    // Bonus! Set the amplitude of the sound based on the mouse!
    tones[randomIndex].amp(map(mouseY,0,height,1,0));
    // Play the sound
    tones[randomIndex].play();
  }
}
```

---

# Oscillators!

- Those pesky trigonometry functions are back, and they have a song to sing!
- One representation of something like `sin()` is to think of it as a sound waveform
- In which case you can _hear_ it!
- The Processing Sound library allows us to create _oscillators_ based on those functions
- So we can _generate_ sounds instead of using sound files...

---

# The sound of sin...

```java
import processing.sound.*;
// We can use one of the library's oscillator classes to represent a sine wave
SinOsc sine;

void setup() {
  // Create the sine oscillator.
  sine = new SinOsc(this);
  // Start it, ooooooooo
  sine.play();
}

void draw() {
  // Map the mouse x to control the frequency
  sine.freq(map(mouseX,0,width,110,880));
  // Map the mouse y to control the amplitude
  sine.amp(map(mouseY,0,height,1,0));
}
```

See also: `SawOsc`, `SqrOsc`, `TriOsc`, `WhiteNoise`, `PinkNoise`, `BrownNoise`

---

```java
import processing.sound.*;

int[] frequencies = new int[5]; // Somewhere to store our 5 wave frequencies
int framesPerBeat = 15; // The number of frames per beat of music
SawOsc saw; // Oscillator to play tones

void setup() {
  // Go through the array loading frequencies into it
  for (int i = 0; i < frequencies.length; i++) {
    // We can use the i variable to set up equidistant frequencies
    frequencies[i] = 110 + (i * 55);
  }
  // Create the oscillor, set its frequency to a default, and play it
  saw = new SawOsc(this);
  saw.freq(110);
  saw.play();
}

void draw() {
  // Use modulo to check if this frame is a multiple of the beat count
  if (frameCount % framesPerBeat == 0) {
    // Pick a random index in the array
    int randomIndex = floor(random(0, frequencies.length));
    // Set the new frequency
    saw.freq(frequencies[randomIndex]);
  }
}
```

---

# Drums?

See the presenter notes for an expanded version of this idea with a drum loop. (Press 'P')

???

```java
import processing.sound.*;

// Somewhere to store our 5 wave frequencies
int[] frequencies = new int[5];
// The number of frames per beat of music
int framesPerBeat = 10;
// Oscillator to play tones
SawOsc saw;
// Sound files for kick and snare
SoundFile kick;
SoundFile snare;

// A string to represent our drum loop
// o = kick
// x = snare
// - = nothing
String drumPattern = "o-x-oox-o-xoooxx";
// Track which character we're playing
int currentDrumBeat = 0;
// Tempo of the drums
int framesPerDrumbeat = 20;

void setup() {
  // Go through the array loading frequencies into it
  for (int i = 0; i < frequencies.length; i++) {
    // We can use the i variable to set up equidistant frequencies
    frequencies[i] = 110 + (i * 55);
  }
  // Create the oscillor, set its frequency to a default, make it a bit quieter,
  // and then play it
  saw = new SawOsc(this);
  saw.freq(110);
  saw.amp(0.2);
  saw.play();

  // Load our drum samples
  kick = new SoundFile(this,"sounds/kick.wav");
  snare = new SoundFile(this,"sounds/snare.wav");
}

void draw() {
  // Use modulo to check if this frame is a multiple of the beat count
  if (frameCount % framesPerBeat == 0) {
    // Pick a random index in the array
    int randomIndex = floor(random(0, frequencies.length));
    // Set the new frequency
    saw.freq(frequencies[randomIndex]);
  }

  // Use modulo to check if this frame is a drum beat frame
  if (frameCount % framesPerDrumbeat == 0) {
    // Check whether the current point in the drum pattern is a kick
    // or a snare and play them if so
     if (drumPattern.charAt(currentDrumBeat) == 'o') {
        kick.play();
     }
     else if (drumPattern.charAt(currentDrumBeat) == 'x') {
       snare.play();
     }
     // Increment the drum beat (and loop back to the start if finished)
     currentDrumBeat = (currentDrumBeat + 1) % drumPattern.length();
  }
}
```

---

# Input!

- Not only can we play and manipulate sound files
- Not only can we play and manipulate waveforms
- We can also get sound input through the microphone
--

- For this we'll want to use Minim instead though
- Particularly its `AudioInput` class

---

# Input volume level!

```java
import ddf.minim.*;

Minim minim;
AudioInput mic; // The class that lets us get at the microphone

void setup() {
  size(500,500);
  minim = new Minim(this);
  // We use minim.getLineIn() to get access to the microphone data
  mic = minim.getLineIn();
}

void draw() {
  background(0);
  rectMode(CENTER);
  // Get the current level (volume) going into the microphone
  float level = mic.mix.level();
  // Draw a rectangle with dimensions defined by microphone level
  rect(width/2, height/2, width * level, height * level);
}
```

---

# Input frequency spectrum!

- We can also analyse the frequency spectrum of incoming sound
- To do that we need to use some mathematics called a _Fast Fourier Transform_ or FFT
- Fortunately it's built into the library, so we don't need to do or, frankly, understand the math involved
- If we use Minim's `FFT` class, we can analyse our `AudioInput` into frequency bands...

---

```java
import ddf.minim.*;
import ddf.minim.analysis.*; // We need this one for FFT

Minim minim;
AudioInput mic; // Microphone input
FFT fft; // Fast Fourier Transforms

void setup() {
  size(500, 500);
  minim = new Minim(this); // Create Minim
  mic = minim.getLineIn(); // Get the microphone
  fft = new FFT(mic.bufferSize(), mic.sampleRate()); // Create our FFT
}

void draw() {
  background(255);
  fft.forward(mic.mix); // Apply the FFT to the current input
  // Now go through the spectrum generated
  for (int i = 0; i < fft.specSize(); i++) {
    // Get the value of this band
    float b = fft.getBand(i);
    // Map the location in the spectrum to x
    float x = map(i, 0, fft.specSize(), 0, width);
    // Map the amplitude of the band to height
    float h = map(b, 0, 10, 0, height);
    // Draw a line representing this band
    line(x,height - h,x,height);
  }
}
```

---

# Back to imagination

- As with video, the real power of audio input depends on what you can imagine doing with it
- See, for example [GNILLEY](https://www.youtube.com/watch?v=QYPwYfbi8jA), which just uses input volume
- Or reverse GNILLEY and think about requiring silence?
- Or think about the fact that _whistling_ generates a very specific and clean frequency spectrum?
- Or imagine requiring the user to generate sounds very high in the frequency range? Opera simulator?
- Should we make something now?

---

class: middle

# Exporting

---

# Getting it out there

- Processing can export you code to a number of interesting formats
- Most obviously it can export _applications_ for Mac OS X, Windows, and Linux by selecting `File > Export Application...` (though if you embed Java this leads to _huge_ file sizes)
- Less obviously there are opportunities to export to PDF, images, and image sequences (which could be stitched back into a movie), and the book covers these
- Helpfully, there is also a JavaScript library called Processing.js that allows us to run Processing code in the browser via JavaScript
- It works really well for simple cases!

---

# Processing.js

- To use [Processing.js](http://www.processingjs.org/) we need to follow a few steps, as detailed on their website
- You should really follow their tutorials, but for now let's go through the process...
--

- First we have to _download processing.js itself_ as a file
- Then we need to create a webpage to display our sketch on that uses processing.js
- And of course we need our sketch code to be available to the script
--

- Let's follow their [Quick Start Guide](http://processingjs.org/articles/p5QuickStart.html)

---

# Wha'?

- Generally speaking, Processing.js is great, but of course limited too
- You can't really use any libraries with it
- And it can cause you some headaches thanks to the fact it's in JavaScript
- If you're really planning to use it seriously, make sure you read the documentation!
- And of course I will help as much as possible!

---

# Homework/Nowwork

- __Now:__ Finish [Exercise 06](https://github.com/pippinbarr/cart253-2017/wiki/Exercise-06)
- __Nowish:__ Start [Exercise 07](https://github.com/pippinbarr/cart253-2017/wiki/Exercise-07), due next week
- The readings for _next week_ are Chapters 20 and 21 of _Learning Processing_ (Sound and Exporting)
- The readings for _this week_ were Chapters 20 and 21 of _Learning Processing_ (Sound and Exporting)
