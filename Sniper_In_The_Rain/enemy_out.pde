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
    strokeWeight(3);
  line(x + 10, y + 60, x + 25, y + 55); // there weapon 
  line(x + 25, y + 55, x + 25, y + 57); 
  strokeWeight(2);
  }
  void display2(){
  fill(0); //dead body
  triangle(x + 0, y + 55, x - 20, y + 85, x + 20, y + 85);
  triangle(x - 15, y + 70, x - 25, y + 80, x - 5, y + 75);
  triangle(x + 10, y + 65, x + 15, y + 75, x + 25, y + 70);
  fill(255, 0, 0);
  ellipse(x - 10, y + 63, 4, 4);
  ellipse(x + 5, y + 67, 3, 3);
  ellipse(x - 5, y + 75, 5, 5);
  ellipse(x + 8, y + 80, 4, 4);
  ellipse(x - 18, y + 73, 3, 3);
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
