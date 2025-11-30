ENEMYIN[] enemyin;//although they are both enemy, there are two types of animation of death
ENEMYOUT[] enemyout; //so make two class is easier for me.
SCOPE scope;
RAIN[] rain;
PImage title,play,win,again;
int stage=0;  //this is going to use for game menu
int killCount=0;

void setup(){
  size(400, 400);
  title = loadImage("title.png");
  play = loadImage("play.png");
  win = loadImage("win.png");
  again = loadImage("again.png");
  rain = new RAIN[500];
  for(int i = 0; i < 500; i++){
    rain[i]= new RAIN(random(400),random(400));
  } 
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
  if(stage ==0){
    background(0);
    image(title,50,50,300,150);
    fill(255);
    image(play,100,250,200,100);
  }
   //-----------------------------split---------------------------
  else if(stage==1){
    if(killCount>=15){
      stage=2;
    }
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
    else{
      e.display2();
    }
    
    //---------------------------------------split------------------------------
   
    for(int j = 0; j < enemyout.length; j++){
      ENEMYOUT m = enemyout[j];
      if(m.alive==true){
        m.display();
        m.update();
      }
      else{
      m.display2();
    }
     }
    }
   //-----------------------------------split------------------------------------
     for(int l = 0; l < rain.length-1; l++){
       RAIN r = rain[l];
         r.display();
         r.update();
     }
  //-------------------------------------split----------------------------------
      scope.display();
   }
  else if(stage==2){
    background(0);
    image(win,50,50,300,150); 
    image(again,150,250,100,100);
  }
  }
//---------------------------------------split-------------------------------------
void mousePressed(){
  if(stage==0){
    if(mouseX>100 && mouseX<300 && mouseY >250 && mouseY <350){
      stage=1;
      killCount=0;
  }
  }
  else if(stage==1){
  for(int i = 0; i < enemyin.length; i++){
    ENEMYIN e = enemyin[i];
    if (e.alive && e.isClicked()) {
      killCount+=1;
      e.alive=false;
    }
  }
  for(int i = 0; i < enemyout.length; i++){
    ENEMYOUT m = enemyout[i];
    if (m.alive && m.isClicked()) {
      killCount+=1;
      m.alive=false;
    }
   }
  }
  else if(stage == 2){
    if(mouseX>150 && mouseX<250 && mouseY >250 && mouseY <350){
      stage=0;
   }
  }
}
