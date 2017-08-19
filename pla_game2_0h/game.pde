void gamestart(){
  background(0, 0, 0);
  timer +=1;
  //image(three, 0, 0, width, height);
  if(timer <= 10){
    sound2.play();
    image(three, 0, 0, width, height);
  }
  if(timer ==10){
    sound2.rewind();
  }
  if(timer > 10 && timer <= 20){
    sound2.play();
    image(two, 0, 0, width, height);
  }
  if(timer == 20){
    sound2.rewind();
  }
  if(timer > 20 && timer <= 30){
    sound2.play();
    image(one, 0, 0, width, height);
  }
  if(timer > 30){
    sound3.play();
    count = 4;
  }
}

void truegame(){
  background(0, 0, 0);
  music2.play();
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
      //d++;
      d+=2;
    }
    if(d == 90){
      if(x > -380){
       x -=6;
      }
      if(x == -384){
        i +=1.5;
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
      //d++;
      d+=2;
    }
    if(d == 180){
      if(x > -610){
       x -= 6;
      }
      if(x == -612){
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
      //d++;
      d+=1.5;
    }
    if(d == 270){
      if(x > -413){
       x -= 6;
      }
      if(x == -414){
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
      //d++;
      d+=2;
    }
    if(d == 360){
      if(x > -378){
       x -= 6;
      }
      if(x == -378){
      count +=1;
      popMatrix();
      x = 0;
      }
    }
  }
      println("degreeの値は" + d +  "です");
      println("xの値は" + x +  "です");
      println("yの値は" + y +  "です"); 
      //鬼のスピードは9秒
}