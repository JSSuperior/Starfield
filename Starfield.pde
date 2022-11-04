PImage img;
thousandPeaks[] starsong = new thousandPeaks[1000];


void setup(){
  size(800,500);
  noStroke();
  starsong[0] = new Eda();
  for(int k = 1; k < 20; k++)
    starsong[k] = new caves();
  for(int k = 20; k < starsong.length; k++)
    starsong[k] = new thousandPeaks();
   img = loadImage("GalaxyS5.png");
}

void draw() {
  image(img,0,0);
  noFill();
    stroke(255);
    strokeWeight(2);
    ellipse(width/2,height/2,width/3,height/4);
    ellipse(width/2,height/2,width/2,height/3);
    noStroke();
  starsong[0].show();
  for(int i = 1; i < 20; i++){
    starsong[i].show();
    starsong[i].move();
  }
  for(int i = 20; i < starsong.length; i++){
    starsong[i].show();
    starsong[i].move();
  }
  
}

class thousandPeaks {
  double angle, x, y, speed;
  int size, starSize;
  thousandPeaks() {
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
   if(speed > 0)
      speed -= 0.05;
    if(speed < 0){
      speed = 0;
    }
   }
   
  void show(){
    fill(255);
    ellipse((float)x,(float)y,size,size);
    //Flicker
    for(int k = 0; k < (int)(Math.random()*5); k++){
      fill(255-(k*10),(int)(Math.random()*10)+50);
      ellipse((float)x,(float)y,starSize,starSize);
    }
  }
}

class caves extends thousandPeaks{
  caves(){
    x = width/2;
    y = height/2;
    angle = (Math.random()*3)*Math.PI;
    speed = Math.random()*10;
    size = (int)(Math.random()*10+5);
    for(int k = 0; k < size; k++)
      starSize = 4+(k);
  }
}

class Eda extends thousandPeaks{
  Eda(){
    x = width/2;
    y = height/2;
    size = 40;
    for(int k = 0; k < size; k++)
      starSize = 5+(k);
  }
}
