class RAIN {

  float x;
  float y;  
  RAIN(float ex, float ey){
    x =ex;
    y =ey;
  }

  void update() {
    y += 8;      //rain "drop"   

    if (y > 400) {  //reset rain
      y = 0;     
    }
  }

  void display() {
    pushMatrix();
    noStroke();
    translate(x, y);  
    rotate(radians(100)); //rotate a little so it look like rain drop

    fill(201, 222, 255);
    rect(0, 0, 20, 3); 
    popMatrix();
  }
}
