void zikken(){
  image(field, 235, 77, 970, 746);
  music2.play();
  if(i == 0){
    if(degree == 0){
      //pushMatrix();
    }
    translate(429-20,667-10-20-20);
    rotate(radians(degree)); 
    //popMatrix(); 
    if(degree <= 90){
      degree++;
    }
    if(degree == 90){
      i +=1;
      x = 253;
      y = 617;
      //popMatrix(); 
    }
  }
  if(i == 1){
    if(y>265){
    rotate(radians(degree)); 
    y -=1 ;
    }
  }
  image(runner,x,y);

  
  
}