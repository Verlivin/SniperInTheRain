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
    rect(mouseX - 30,mouseY -30,60,60);
    
    noStroke();
    fill(0);
  
    rect(0, 0, width, mouseY - 30);
    rect(0, mouseY + 30, width, height - (mouseY + 30));
    rect(0, mouseY - 30, mouseX - 30, 60);
    rect(mouseX + 30, mouseY - 30, width - (mouseX + 30), 60);
    
    
 }
}
