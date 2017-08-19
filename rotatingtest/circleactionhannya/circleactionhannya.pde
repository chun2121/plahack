import gifAnimation.*;

Gif runner;
PImage field;
 
float t;
//角度
int r;
//円の半径
float x,y;
 void setup(){
  size(1440,900);
  field = loadImage("ground.png");
  t = 2;
  r = 100;
  x = 429;
  y = 667;
  noStroke();
  runner = new Gif(this,"runnya-.gif");
  runner.loop();
 }
 void draw() { 
   image(field, 235, 77, 970, 746);
   if(t <= 4){
      t += 0.005;
   }
  println("tの値は" + t +  "です");
   x = r*cos(t);
   y = r*sin(t);
   image(runner,x+429-118+20,y+667-156-78);
  //rect(x+250,y+250,110,50);
 }