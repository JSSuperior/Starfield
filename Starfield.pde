ascian[] EmetSelch = new ascian[2000];

void setup(){
  fullScreen();
  noStroke();
  for(int k = 0; k < EmetSelch.length; k++)
    EmetSelch[k] = new ascian();
}

void draw() {
  background(0);
  //fill(0,0,0,10);
  //rect(0,0,width,height);
  //fill(255,0,0,10);
  //redShift();
  for(int i = 0; i < EmetSelch.length; i++){
    EmetSelch[i].show();
    EmetSelch[i].move();
    EmetSelch[i].shift();
    EmetSelch[i].hues();
  }
}

class ascian {
  double angle, x, y, speed;
  int size, starSize;
  ascian() {
    x = width/2;
    y = height/2;
    angle = (Math.random()*3)*Math.PI;
    speed = Math.random()*10;
    size = (int)(Math.random()*5);
    for(int k = 0; k < size; k++)
      starSize = 4+(k);
  }
  
  //Shoots star outwards
  void move(){
   x = x + Math.cos(angle)*speed;
   y = y + Math.sin(angle)*speed;
   
   //if(x > 2000 || y > 2000){
   //  x = width/2;
   //  y = height/2;
   //  //speed = Math.random()*10;
   //  speed = 6;
   //  angle = (Math.random()*3)*Math.PI;
   //  }
   }
  
  void shift(){
    if(speed > 0)
      speed = speed - 0.05;
    if(speed < 0)
      speed = 0;
   }
   
  //Base star
  void show(){
    fill(255);
    ellipse((float)x,(float)y,starSize,starSize);
  }
  
  void hues(){
  for(int k = 0; k < (int)(Math.random()*5); k++){
      fill(255-(k*10),(int)(Math.random()*10)+50);
      //ellipse((float)x,(float)y,5+(k*5),5+(k*5));
    }
  }
}

