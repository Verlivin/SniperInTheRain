class SCOPE{
  SCOPE(){
  }
  void display(){
    stroke(255, 0, 0);
    strokeWeight(3);
    line(mouseX - 10, mouseY, mouseX + 10, mouseY);
    line(mouseX, mouseY - 10, mouseX, mouseY + 10);
    noFill();
    stroke(0);
    rect(mouseX - 20,mouseY -20,40,40);
 }
}
