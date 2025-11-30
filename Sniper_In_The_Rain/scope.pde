class SCOPE{
  SCOPE(){
  }
  void display(){
    stroke(255, 0, 0);
    strokeWeight(3);
    line(mouseX - 10, mouseY, mouseX + 10, mouseY); //crosshair
    line(mouseX, mouseY - 10, mouseX, mouseY + 10);
    noFill();
    stroke(0);
    rect(mouseX - 30,mouseY -30,60,60);
    
    noStroke();
    fill(0);
    //fill(0,0,0,150);   //replace fill(0); with this if you want to see everything I draw
    rect(0, 0, width, mouseY - 30); //huge rect that cover every thing
    rect(0, mouseY + 30, width, height - (mouseY + 30));
    rect(0, mouseY - 30, mouseX - 30, 60);
    rect(mouseX + 30, mouseY - 30, width - (mouseX + 30), 60);
    
    
 }
}
