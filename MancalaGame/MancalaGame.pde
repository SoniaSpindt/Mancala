Board board;

void setup(){
  size(800, 400);
  background(255, 255, 255);
  board = new Board();
  board.drawBoard();
  Marble[][][] b = board.getBoard();
  println(b[0][1][2]);
}

void draw(){
}

void mousePressed(){
  
}
