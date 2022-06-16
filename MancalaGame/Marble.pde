public class Marble{
  int row;
  int slot;
  int x;
  int y;
  float w;
  float h;
  float red;
  
  public Marble(int row, int slot){
    this.row = row;
    this.slot = slot;
    
    // Make marbles look more organic by
    // generating a random width, height and shade of red.
    w = random(40, 50);
    h = random(40, 50);
    red = random(200, 255); 
    
    placeMarble();
  }
  
  public void placeMarble(){
    // Determine y position of marble
    if(row == 0 && slot != 0 && slot != 13){
      y = int(random(40, 150)); 
    }else if(row == 1 && slot != 0 && slot != 13){
      y = int(random(240, 350)); 
    }else if(row == 0 && (slot == 0 || slot == 13)){
      y = int(random(10, 350));
    }else if(row == 1 && (slot == 0 || slot == 13)){
      y = int(random(10, 350)); 
    }
    
    // Determine x position of marble
    
    // Left end slot
    if(slot == 0){
      x = int(random(20, 80));
    }
    // Middle slots share x range when stacked
    else if(slot == 1 || slot == 7){
      x = int(random(120, 180));
    }else if(slot == 2 || slot == 8){
      x = int(random(220, 280));
    }else if(slot == 3 || slot == 9){
      x = int(random(320, 380));
    }else if(slot == 4 || slot == 10){
      x = int(random(420, 480));
    }else if(slot == 5 || slot == 11){
      x = int(random(520, 580));
    }else if(slot == 6 || slot == 12){
      x = int(random(620, 680));
    }
    // Right end slot
    else if(slot == 13){
      x = int(random(720, 780));
    }
  }
  
  public void drawMarble(){
    strokeWeight(5);
    fill(red, 0, 0);
    ellipse(x, y, w, h);
  }
}
