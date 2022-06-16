public class Board{
  // The integer at each index represents how many marbles are in a slot.
  // 2 rows of slots
  // 14 possible slots -- 2 ends and 12 middle
  // 48 marbles in play, which means each slot is capped at 48.
  Marble[][][] board = new Marble[2][14][48];
  
  public Board(){
    setupBoard();
    println("A new game has been setup!"); 
  }
  
  public Marble[][][] getBoard(){
    return board; 
  }
  public void setupBoard(){
    for(int row = 0; row < 2; row++){
     for(int slot = 1; slot < 13; slot++){
       for(int marble = 0; marble < 4; marble++){
         board[row][slot][marble] = new Marble(row, slot); 
       }
     }
    }
  }
  
  public void drawBoard(){
    background(255, 255, 255);
    drawBoardOutline();
    drawMarbles();
  }
  
  public void drawMarbles(){
    for(int row = 0; row < 2; row++){
      for(int slot = 0; slot < 7; slot++){
        for(int marble = 0; marble < 48; marble++){
          if(board[row][slot][marble] != null){
            board[row][slot][marble].drawMarble();
          }
        }
      }
    }
  }
  
  public void drawBoardOutline(){
    strokeWeight(5);
    fill(255, 255, 255);
    // End slots
    rect(10, 10, 90, height - 20);
    rect(700, 10, 90, height - 20);
    
    // Top middle slots
    rect(100, 10, 100, (height/2) - 20);
    rect(200, 10, 100, (height/2) - 20);
    rect(300, 10, 100, (height/2) - 20);
    rect(400, 10, 100, (height/2) - 20);
    rect(500, 10, 100, (height/2) - 20);
    rect(600, 10, 100, (height/2) - 20);
    
    // Bottom middle slots
    rect(100, (height/2) + 10, 100, (height/2) - 20);
    rect(200, (height/2) + 10, 100, (height/2) - 20);
    rect(300, (height/2) + 10, 100, (height/2) - 20);
    rect(400, (height/2) + 10, 100, (height/2) - 20);
    rect(500, (height/2) + 10, 100, (height/2) - 20);
    rect(600, (height/2) + 10, 100, (height/2) - 20);
  }
}
