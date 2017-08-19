import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
import gifAnimation.*;
import processing.serial.*;
import cc.arduino.*;
import http.requests.*;
import processing.video.*;

Minim minim;
AudioPlayer music1,music2;
AudioPlayer sound1,sound2,sound3,sound4,sound5;
Movie movie;

PImage field;
PImage title;
PImage aniback;
PImage titleback;
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
float x,y;
int timer = 0;
int i=0;
float d = 0;

float distance;
int pumpSensor = 0;
int goalSensor = 2;
int flag;
int myframe = 0;
int[] velocity;

MaBeee mb;
Arduino arduino;
Gif myAnimation;  //Gifインスタンス
Gif runner;
Gif goal;
Gif kati;
Gif titlegif;

void setup(){
  size(1440,900);
  colorMode(RGB, 256);
  
  field = loadImage("ground.png");
  title = loadImage("title.png");
  titleback = loadImage("starthuru.png");
  aniback = loadImage("ikigonderuground.png");
  message = loadImage("message.png");
  //winner = loadImage("kati.png");
  winmessage = loadImage("katitxt.png");
  loser = loadImage("make.png");
  losemessage = loadImage("maketxt.png");
  one = loadImage("1.jpg");
  two = loadImage("2.jpg");
  three = loadImage("3.jpg");
  
  mb = new MaBeee();
  //arduino = new Arduino(this, "/dev/tty.usbmodem1421");
  arduino = new Arduino(this, "/dev/tty.usbmodem1411");
  velocity = new int[2];
  
  
  myAnimation = new Gif( this, "hannnya.gif");
  runner = new Gif(this,"runnya-.gif");
  kati =  new Gif(this,"kati.gif");
  titlegif =  new Gif(this,"title.gif");
  goal = new Gif(this,"hata.gif");
  
  myAnimation.loop();
  runner.loop();
  kati.loop();
  titlegif.loop();
  goal.loop();
  
  //MaBeeeを接続するための関数
  connect();
  
  minim = new Minim( this );
  music1 = minim.loadFile("title.mp3");
  music2 = minim.loadFile("hasitteru.mp3");
  sound1 = minim.loadFile("animation.wav");
  sound2 = minim.loadFile("gamestartcount.mp3");
  sound3 = minim.loadFile("gamestart.mp3");
  sound4 = minim.loadFile("win.wav");
  sound5 = minim.loadFile("lose.wav");
  
  movie = new Movie(this, "oopp.mp4");
  
}

void movieEvent(Movie m) {
  m.read();
}


void draw(){
  background(0, 0, 0);
  count();
  if(count == 0){
    sound4.pause();
    sound5.pause();
    title();
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
  }
  if(count == 3){
    sound1.pause();
    gamestart();
  }  
  if(count == 4){ 
    MaxAndMin();
    setSpeed(str(mb.speed));
    truegame();
    judge();
  }
  if(count == 5){
  music2.pause();
  Lose();
  //resetPla(count);
  mb.speed = 0;
  setSpeed(str(mb.speed));
  }
    if(count == 6){
  music2.pause();
  //resetPla(count);
  mb.speed = 0;
  setSpeed(str(mb.speed));
  Win();
  }
  
  

}