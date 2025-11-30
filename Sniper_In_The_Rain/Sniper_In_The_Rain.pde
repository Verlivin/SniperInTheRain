void setup() {
  size(400, 400); 
}

void draw() {
  background(31, 20, 50);
  stroke(1);
  fill(152, 107, 56); //building
  rect(40,70,130,340);
  rect(230,70,130,340);
  fill(89, 62, 34); //door 
  rect(120,290,40,60);
  rect(310,290,40,60);
  fill(209, 167, 82); //door handle
  ellipse(150,320,5,5);
  ellipse(340,320,5,5);
  fill(117); //chimney
  rect(60,50,40,20);
  rect(250,50,40,20);
  fill(87, 91, 99);//street
  rect(0,350,400,100);
  fill(218, 224, 235);
  noStroke();
  rect(175,355,50,8);
  rect(175,370,50,8);
  rect(175,385,50,8);
  stroke(1);
  fill(60); //street light                    
  rect(15, 270, 10, 80);
  rect(195, 270, 10, 80);
  rect(375, 270, 10, 80);
  fill(40);
  rect(5, 260, 30, 10);
  rect(185, 260, 30, 10);
  rect(365, 260, 30, 10);
}
