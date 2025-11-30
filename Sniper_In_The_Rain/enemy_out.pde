class ENEMYOUT{
  ENEMYOUT(){
  }
  void draw(int x,int y){
    noStroke();
    fill(252, 232, 78, 150);
    triangle(x, y, x - 30, y + 90, x + 30, y + 90);
  }
}
