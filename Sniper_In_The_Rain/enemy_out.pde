class ENEMYOUT{
  ENEMYOUT(){
  }
  void draw(int x,int y){
    noStroke();
    fill(252, 232, 78, 150); //street light
    triangle(x, y, x - 30, y + 90, x + 30, y + 90);
    //enemy
    
  stroke(0);
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
}
