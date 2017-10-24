Cell[][] board;
int cols = 3;
int rows = 3;

char turn = 'O';

void setup() {

  board = new Cell[cols][rows];

  float cellWidth = width/cols;
  float cellHeight = height/rows;

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      board[i][j] = new Cell(i*cellWidth, j*cellHeight, cellWidth, cellHeight);
    }
  }
}

void draw() {
  background(0);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      board[i][j].display();
    }
  }
}

void mousePressed() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {

      boolean turnSuccess = board[i][j].click(mouseX, mouseY, turn);

      if (turnSuccess) {
        if (turn == 'O') {
          turn = 'X';
        } else if (turn == 'X') {
          turn = 'O';
        }
        // We can stop our loop because the player played a
        // legal move
        return;
      }
    }
  }
}