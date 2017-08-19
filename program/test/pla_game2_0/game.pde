void game(){
  image(field, 0, 0, width, height);
  //image(character,700, 340, 174, 245);
}

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
  //image(countdown,200,200);
  //countdown.play();
  //count = 3;
  //break;
}

void circlerunner() {
  image(field, 235, 77, 970, 746);
  //image(runner,x,y);
  music2.play();
  
  
  if(i == 0){
    pushMatrix();
    translate(429-20,667-10-20-20);
    rotate(radians(degree)); 
    //image(winner,10,10,x,y);
    image(runner,x,y);
    popMatrix(); 
    if(degree <= 90){
      degree++;
    }
    if(degree == 90){
      i +=1;
      x = 253;
      y = 617;
    }
  }
  if(i == 1){
    image(runner90,x,y);
    if(y>265){
    y -=1 ;
    }
  }
    
  if(i == 0){
    //pushMatrix();
    //translate(429,667);
    //rotate(radians(90)); 
    //image(runner,x,y);
    //popMatrix(); 
    if(x>235 && y > 479){
        //x -= 1.94;
        //y -= 1.88;
      }
      if(x ==234.99976 && y == 478.9995){
      i += 1;
      }
    println("xの値は" + x +  "です");
    println("yの値は" + y +  "です");
    }    
    if(i == 1){
      if(x == 234.99976 && y > 109){
      }
      if(x ==234.99976 && y == 108.9989){
      }
    println("xの値は" + x +  "です");
    println("yの値は" + y +  "です");
    }
   
   
}

void runners(){
    image(field, 235, 77, 970, 746);
    image(runner,x,y);
    music2.play();
    if(i == 0){
      if(x>235 && y > 479){
        x -= 1.94;
        y -= 1.88;
      }
      if(x ==234.99976 && y == 478.9995){
      i += 1;
      }
    println("xの値は" + x +  "です");
    println("yの値は" + y +  "です");
    }    
    if(i == 1){
      if(x == 234.99976 && y > 109){
        y -= 3.7;
      }
      if(x ==234.99976 && y == 108.9989){
      i += 1;
      }
    println("xの値は" + x +  "です");
    println("yの値は" + y +  "です");
    }
    if(i == 2){
      if(x < 429 && y > 77 && 265 > y){
        x += 1.94;
        y -= 1.88;
      }
      if(x ==429 && y == 76.39853){
      i += 1;
      }
    println("xの値は" + x +  "です");
    println("yの値は" + y +  "です");
    }
    
    if(i == 3){
      if(x < 893 && y == 76.39853){
        x += 4.29;
      }
      if(x == 896.6082 && y == 76.39853){
      i += 1;
      }
    println("xの値は" + x +  "です");
    println("yの値は" + y +  "です");
    }

    if(i == 3){
      if(x < 893 && y == 76.39853){
        x += 4.29;
      }
      if(x == 896.6082 && y == 76.39853){
      i += 1;
      }
    println("xの値は" + x +  "です");
    println("yの値は" + y +  "です");
    }

}


void runner(){
  image(field, 235, 77, 970, 746);
  //1440-936/2  900-720/2
  image(runner,x,y);
  music2.play();
  if(i == 0){
    if(x>100 && y>230){
      x -= 3.65;
      y -= 2.3;
    }
    if(x == 96.35055 && y == 227.70103){
     i = 1;
    }
   if(x>465 && y>0){
      x += 3.65;
      y += 2.3;
   }
   //println("xの値は" + x +  "です");
  // println("yの値は" + y +  "です");
  }

  if(i == 1){
    if(x<465 && y>0){
    x += 3.65;
    y -= 2.3;
    }
    println("xの値は" + x +  "です");
    println("yの値は" + y +  "です");
    if(x ==461.35 && y == -2.299167){
      i += 1;
    }
  }
  
  if(i == 2){
    if(x<830 && y<230){
    x += 3.65;
    y += 2.3;
    }
    //println("xの値は" + x +  "です");
    //println("yの値は" + y +  "です");
    if(x ==830.0021 && y == 230.00104){
      i += 1;
    }
    
  }
     if(i == 3){
    if(x>465 && y<460){
    x -= 3.65;
    y += 2.3;
    }
    println("xの値は" + x +  "です");
    println("yの値は" + y +  "です");
    if(x == 465.00003 && y == 460.0){
    count = 4;
    }
  }
}