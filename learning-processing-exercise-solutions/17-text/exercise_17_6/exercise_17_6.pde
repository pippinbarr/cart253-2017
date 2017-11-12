// An array of news headlines
String[] stocks = {
  "AAAA 245", 
  "BBBB 123", 
  "CCCC 890", 
  "OOOG 1111", 
  "BEMM 122", 
  "ZOOM 000", 
  "CONC 101", 
  "CART 253"
};

int[] stockPositions; // The current x location of each stock
int speed = 4; // How fast the ticker moves
int spacing = 50; // Gap between stocks (note that at 0 they overlap! Weird.)
int totalWidth; // The total width off all the stocks (for resetting position)

PFont f; // Global font variable

int index = 0;

void setup() {
  size(400, 200);
  f = createFont("Arial", 16);

  stockPositions = new int[stocks.length];
  int stockX = 0;
  for (int i = 0; i < stockPositions.length; i++) {
    stockPositions[i] = stockX;
    int w = textWidth(stocks[i]) + spacing;
    stockX += w;
    totalWidth += w;
  }
}

void draw() {
  background(255);
  fill(0);

  // Display stocks starting at x location
  textFont(f, 16);
  textAlign(LEFT);

  for (int i = 0; i < stocks.length; i++) {
    text(stocks[i], stockPositions[i], height);
    stockPositions[i] -= speed;
    if (stockPositions[i] < -textWidth(stocks[i]) - spacing) {
      stockPositions[i] += totalWidth;
    }
  }
}