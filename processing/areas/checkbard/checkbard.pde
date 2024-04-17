int squareSize = 50;
int numRows, numCols;
color[] colors = {#FF0000, #00FF00};

void setup(){
  size (700, 700);
  numRows = height / squareSize;
  numCols = width / squareSize;
  for (int row = 0; row < numRows; row++){
    for (int col = 0; col < numCols; col++){
      fill(colors[(row + col) % 2]);
      rect(col * squareSize, row * squareSize, squareSize, squareSize);
    }
  }
}
