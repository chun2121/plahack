import gifAnimation.*;
Gif runner;
Gif goal;
//Gif runner90;
PImage field;

float x,y;
int i=0;
float d = 0;
float degree = 0;

void setup(){
  size(1440,900);
  colorMode(RGB, 256);
  field = loadImage("ground.png");
  runner = new Gif(this,"runnya-.gif");
  goal = new Gif(this,"hata.gif");
  goal.loop();
  runner.loop();
  //runner90 =  new Gif(this,"runnya-90.gif");
}

void draw(){
  background(0, 0, 0);
  image(field, 235, 77, 970, 746);
  image(goal,650,665);
  if(i == 0){
    if(d==0){
    pushMatrix();
    }
    translate(409,617);
    rotate(radians(d));
    image(runner,x,y);
    if(d < 90){
      d++;
    }
    if(d == 90){
      if(x > -380){
       x -=2;
      }
      if(x == -380){
        i +=1;
        popMatrix();
        //d = 0;
        x = 0;
      }
    }
  }
  if(i == 1){
    if(d==90){
    pushMatrix();
    }
    translate(409+10,117+100+20);
    rotate(radians(d));
    //x = 0;
    //imageMode( CORNER );
    image(runner,x,y);
    if(d < 180){
      d++;
    }
    if(d == 180){
      if(x > -610){
       x -= 2;
      }
      if(x == -610){
        i +=1;
        popMatrix();
        x = 0;
      }
    }
  }
    if(i == 2){
    if(d==180){
    pushMatrix();
    }
    translate(1109-80,117+120);
    rotate(radians(d));
    //x = 0;
    //imageMode( CORNER );
    image(runner,x,y);
    if(d < 270){
      d++;
    }
    if(d == 270){
      if(x > -413){
       x -= 1;
      }
      if(x == -413){
      i +=1;
      popMatrix();
      x = 0;
      }
    }
  }
  if(i == 3){
    if(d==270){
    pushMatrix();
    }
    translate(1109-80,650);
    rotate(radians(d));
    //x = 0;
    //imageMode( CORNER );
    image(runner,x,y);
    if(d < 360){
      d++;
    }
    if(d == 360){
      if(x > -379){
       x -= 1;
      }
      if(x == -379){
      i +=1;
      popMatrix();
      x = 0;
      }
    }
  }
      println("degreeの値は" + d +  "です");
      println("xの値は" + x +  "です");
      println("yの値は" + y +  "です"); 
}