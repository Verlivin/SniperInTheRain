class CLOCK {
  int t = 30;
  int s;
  PVector c;

  CLOCK(float x, float y) {
    c = new PVector(x, y);
    s = second(); //reset time
  }

  void reset() {
    s = second(); //reset time
  }
  boolean timeUp() { //check if time is up, if so return false
    int e = (second() - s + 60) % 60;
    int rem = t - e;
    if (rem < 0){ 
      rem = 0;
    }
    return rem == 0;
   }

  void update() {  //draw the clock
    fill(255);
    noStroke();
    ellipse(c.x, c.y, 50, 50);

    stroke(0);
    strokeWeight(1);
    noFill();
    ellipse(c.x, c.y, 50, 50);

    stroke(180);
    strokeWeight(1);
    PVector i = PVector.fromAngle(-1.5708); //draw the pointer and use pvector and pie to turn it
    i.mult(25);
    i.add(c);
    line(c.x, c.y, i.x, i.y);

    int e = (second() - s + 60) % 60;
    int rem = t - e;
    if (rem < 0) rem = 0;

    float a = map(rem, 0, t, 0, 6.2832) - 1.5708;
    PVector p = PVector.fromAngle(a);
    p.mult(25);
    p.add(c);

    stroke(255, 0, 0);
    strokeWeight(2);
    line(c.x, c.y, p.x, p.y);

    fill(0);// just a circle in the middle
    noStroke();
    ellipse(c.x, c.y, 4, 4);
  }
}
