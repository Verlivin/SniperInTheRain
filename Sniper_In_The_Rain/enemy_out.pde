class ENEMYOUT{
    int x;
    int y;
    boolean alive = true;
  ENEMYOUT(int ex, int ey){
    x=ex;
    y=ey;
  }
  void display(){
    noStroke();
    fill(252, 232, 78, 150); //street light
    triangle(x, y, x - 30, y + 90, x + 30, y + 90);
    
    stroke(0);//man
    strokeWeight(2);
    fill(0);
    ellipse(x, y + 40, 12, 12); 
    line(x, y + 46, x, y + 66);
    line(x, y + 52, x - 10, y + 60);
    line(x, y + 52, x + 10, y + 60);
    line(x, y + 66, x - 10, y + 84);
    line(x, y + 66, x + 10, y + 84);
    rect(x - 8, y + 33, 16, 2);
    rect(x - 3, y + 28, 6, 1);
  }

  void update(){
    noFill();
    rect(x-15,y+25,30,60);//hitbox
  }
  boolean isClicked() {
    return mouseX >= x-15 && mouseX <= x+15 &&
           mouseY >= y+25 && mouseY <= y+75;
  }
}
