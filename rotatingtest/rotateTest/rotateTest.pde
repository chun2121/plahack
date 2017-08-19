import gifAnimation.*;
PImage img;  //画像
int deg;    //回転角度
float imgx = 0;
float imgy = 0;

Gif runner;  

void setup(){
  size(1200,1200);
  img = loadImage( "MatLab_Logo.jpg" );
  deg = 0;
  runner = new Gif(this,"runnya-.gif");
  runner.loop();
}

void draw(){
  background( 255 );
  imgx++;
  //image(runner,400,400);
  if(imgx > 300){
    deg++;
  }
  if( deg > 360) {
    deg = 0;
  }
  pushMatrix(); //①
  translate(400,400);
  rotate(radians(deg)); //③
  imageMode(CENTER); //④
  //popMatrix(); 
  image(runner,00,400);
  //image(img,400,400,100,100 ); 
  //imageMode(CORNER); //⑥
  popMatrix(); //⑦
}