class ENEMYIN{
    int x;
    int y;
    int count=0;
    boolean alive=true;
  ENEMYIN(int ex, int ey){
    x=ex;
    y=ey;
  }
  void display(){
      fill(252, 232, 78,200);//windows
      rect(x,y,50,50);
      
      stroke(0); //man
      strokeWeight(2);
      fill(0);
      ellipse(x + 25, y + 30, 12, 12);
      line(x + 25, y + 36, x + 25, y + 48);
      line(x + 25, y + 38, x + 15, y + 45);
      line(x + 25, y + 38, x + 35, y + 45);
      rect(x + 17, y + 23, 16, 2);
      rect(x + 22, y + 18, 6, 6);
    }
  void display2(){ //dead
  count++;
  strokeWeight(2);
  fill(150, 150, 150); //grey for light out
  rect(x, y, 50, 50);
  fill(0);
  strokeWeight(2);
  ellipse(x+25,y+25,10,10);
  line(x + 25, y + 25, x + 5, y + 5);
  line(x + 25, y + 25, x + 10, y + 2);
  line(x + 25, y + 25, x + 45, y + 8);
  line(x + 25, y + 25, x + 48, y + 20);
  line(x + 25, y + 25, x + 5, y + 40);
  line(x + 25, y + 25, x + 12, y + 48);
  line(x + 25, y + 25, x + 40, y + 45);
  line(x + 25, y + 25, x + 35, y + 10);
  if(count>30){ // a little animation for shot effects
    fill(255, 0, 0);
    ellipse(x + 30, y + 30, 6, 6);
    ellipse(x + 20, y + 35, 4, 4);
    ellipse(x + 35, y + 20, 5, 5);
    strokeWeight(2);
  }

  }
  void update(){
    noFill();
    rect(x+15,y+15,20,35);//hitbox
  }
  boolean isClicked() {
    return mouseX >= x+15 && mouseX <= x+35 &&
           mouseY >= y+15 && mouseY <= y+50;
  }
}
