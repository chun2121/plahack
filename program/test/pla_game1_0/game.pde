void game(){
  image(field, 0, 0, width, height);
  image(character,700, 340, 174, 245);
}


void runner(){
  image(field, 100, 100, 820, 480);
  image(character,x, y, 90, 120);
  
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
    println("xの値は" + x +  "です");
    println("yの値は" + y +  "です");
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
    if(x ==465.00003 && y == 460.0){
      i += 1;
    }
  }
}