class ENEMYIN{
  ENEMYIN(){
  }
  void draw(int x,int y){
    fill(252, 232, 78,200);//windows
    rect(x,y,50,50);
    stroke(0);
    strokeWeight(2);
    fill(0);
    ellipse(x + 25, y + 30, 12, 12);
    line(x + 25, y + 36, x + 25, y + 48);
    line(x + 25, y + 38, x + 15, y + 45);
    line(x + 25, y + 38, x + 35, y + 45);
    rect(x + 17, y + 23, 16, 2);
    rect(x + 22, y + 18, 6, 6);
  }
}
