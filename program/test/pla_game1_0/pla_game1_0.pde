import gifAnimation.*;

PImage field;
PImage character;
PImage title;
PImage aniback;
int count = 0;
float x,y;
int i=0;
Gif myAnimation;  //Gifインスタンス

void setup(){
  size(1020,680);
  colorMode(RGB, 256);
  textSize(50);
  textAlign(CENTER);
  character = loadImage("human.png");
  field = loadImage("ground.png");
  title = loadImage("title.png");
  aniback = loadImage("ikigonderuground.png");
  myAnimation = new Gif( this, "boruto.gif");
  myAnimation.loop();
  x = 465;
  y = 460;
}


void draw(){
  background(255, 255, 255);
  count();
  if(count == 0){
    title();
  }
  if(count == 1){ 
    Animation();
  }
  if(count == 2){ 
    //game();
    runner();
    judge();
  }
  if(count == 3){
  Lose();
  }
    if(count == 4){
  Win();
  }
  
  

}