void zikken3(){
  image(field, 235, 77, 970, 746);
  music2.play();
  if(i == 0){
    translate(409,617);
    rotate(radians(d));
    image(runner,x,y);
    if(d < 90){
      d++;
    }
    if(d == 90){
      if(x > -500){
       x -=1;
      }
      //if(x
    }
  }
}
  

void zikken2(){
  image(field, 235, 77, 970, 746);
  music2.play();
  //if(d == 0){
  //pushMatrix();
  //}
  //if(d == 0)
  
  translate(409,617);
  rotate(radians(d));
  image(runner,x,y);
  if(i == 0){
    if(d < 90){
      d++;
    }
    if(d == 90){
      if(x > -500){
       x -=1;
      }
      //degree++;
      println("degreeの値は" + d +  "です");
      println("xの値は" + x +  "です");
      println("yの値は" + y +  "です");

    }
    if(x == -500){
       if(d < 180){
      d++;
    }
    }
  }
  //if(i == 1){
  //  if(y>265){
  //  y -=1 ;
  //  }
  //}
 
}