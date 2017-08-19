import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
import gifAnimation.*;
import processing.video.*;

Minim minim;
Movie movie;
AudioPlayer music1,music2;
AudioPlayer sound1,sound2,sound3,sound4,sound5;

PImage field;
PImage title;
PImage titleback;
PImage aniback;
PImage animessage;
PImage message;
PImage winner;
PImage winmessage;
PImage loser;
PImage losemessage;
PImage three;
PImage two;
PImage one;

int a= -508;
int count = 0;
int timer = 0;
float x,y;
int i=0;
float d = 0;
float degree = 0;
Gif myAnimation;  
Gif runner;
Gif runner90;//いらん
Gif goal;
Gif kati;
Gif titlegif;

void setup(){
  //ここ悩み中＝＝＝＝
  //fullScreen();
  //size(1020,680);
  size(1440,900);
  colorMode(RGB, 256);
  //textSize(50);
  //textAlign(CENTER);
  
  //character = loadImage("human.png");
  field = loadImage("ground.png");
  title = loadImage("title.png");
  titleback = loadImage("starthuru.png");
  aniback = loadImage("ikigonderuground.png");
  //animessage = loadImage("ikigonderutextoni.png");

  message = loadImage("message.png");
  winner = loadImage("kati.png");
  winmessage = loadImage("katitxt.png");
  loser = loadImage("make.png");
  losemessage = loadImage("maketxt.png");
  one = loadImage("1.jpg");
  two = loadImage("2.jpg");
  three = loadImage("3.jpg");
  
  myAnimation = new Gif( this, "hannnya.gif");
  runner = new Gif(this,"runnya-.gif");
  runner90 =  new Gif(this,"runnya-90.gif");//まじいらん
  kati =  new Gif(this,"kati.gif");
  titlegif =  new Gif(this,"title.gif");
  goal = new Gif(this,"hata.gif");
  
  
  goal.loop();
  myAnimation.loop();
  runner.loop();
  titlegif.loop();
  kati.loop();
  
  runner90.loop();//ほんまにいらん
  //countdown.play();
  //x = 429;
  //y = 667;
  //x = 0;
  //y = 0;
  
  minim = new Minim( this );
  music1 = minim.loadFile("title.mp3");
  music2 = minim.loadFile("hasitteru.mp3");
  sound1 = minim.loadFile("animation.wav");
  sound2 = minim.loadFile("gamestartcount.mp3");
  sound3 = minim.loadFile("gamestart.mp3");
  sound4 = minim.loadFile("win.wav");
  sound5 = minim.loadFile("lose.wav");
  //music1.loop();
  
  movie = new Movie(this, "oopp.mp4");
}

void movieEvent(Movie m) {
  m.read();
}

void draw(){
  background(0, 0, 0);
  count();
  //println(count);
  if(count == 0){
    sound4.pause();
    sound5.pause();
    title();
    //タイトルシーン
  }
  if(count == 1){
    music1.pause();
    movie.play();
    image(movie,240,180,960,540);
  }
  if(count == 2){
    movie.stop();
    Animation();
    sound4.rewind();
    sound5.rewind();
    //アニメーションシーン
  }
  if(count == 3){
    sound1.pause();
    gamestart();
    
  }
  if(count == 4){ 
    //game();
    //runner();
    //zikken3();
    //zikken();
    //circlerunner();
    truegame();
    judge();
    //ゲームシーン
  }
  if(count == 5){
  music2.pause();
  Lose();
  
    //リザルトシーン(負け)
  }
    if(count == 6){
  music2.pause();
  Win();
  
   //リザルトシーン(勝ち)
  }
  
  

}

void stop()
{
  music1.close();
  music2.close();
  sound1.close();
  sound2.close();
  sound3.close();
  sound4.close();
  sound5.close();
  minim.stop();
  super.stop();
}