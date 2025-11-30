ENEMYIN[] enemyin;//although they are both enemy, there are two types of animation of death
ENEMYOUT[] enemyout; //so make two class is easier for me.
SCOPE scope;

void setup() {
  size(400, 400);
  noCursor();  //hide mouse
  scope = new SCOPE();
  enemyin = new ENEMYIN[12];
  enemyout = new ENEMYOUT[3];
  
  enemyin[0] = new ENEMYIN(50,80);
  enemyin[1] = new ENEMYIN(110,80);
  enemyin[2] = new ENEMYIN(240,80);
  enemyin[3] = new ENEMYIN(300,80);
  enemyin[4] = new ENEMYIN(50,145);
  enemyin[5] = new ENEMYIN(110,145);
  enemyin[6] = new ENEMYIN(240,145);
  enemyin[7] = new ENEMYIN(300,145);
  enemyin[8] = new ENEMYIN(50,210);
  enemyin[9] = new ENEMYIN(110,210);
  enemyin[10] = new ENEMYIN(240,210);
  enemyin[11] = new ENEMYIN(300,210);
  
  enemyout[0] = new ENEMYOUT(20,270);
  enemyout[1] = new ENEMYOUT(200,270);
  enemyout[2] = new ENEMYOUT(380,270);
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
  //-------------------------------split---------------------------------------------
  
  
  for(int i = 0; i < enemyin.length; i++){
    ENEMYIN e = enemyin[i];
    if(e.alive==true) {
    e.display();
    e.update();
  }
  
  //---------------------------------------split------------------------------
 
  for(int j = 0; j < enemyout.length; j++){
    ENEMYOUT m = enemyout[j];
    if(m.alive==true){
      m.display();
      m.update();
    }
   }
  }
//-------------------------------------split----------------------------------
    scope.display();
}
//---------------------------------------split-------------------------------------
void mousePressed(){
  for(int i = 0; i < enemyin.length; i++){
    ENEMYIN e = enemyin[i];
    if (e.alive && e.isClicked()) {
      println("bang");
      e.alive=false;
    }
  }
  for(int i = 0; i < enemyout.length; i++){
    ENEMYOUT m = enemyout[i];
    if (m.alive && m.isClicked()) {
      println("bang");
      m.alive=false;
    }
  }
}
