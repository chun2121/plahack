void MaxAndMin(){
  
  velocity[1] = arduino.analogRead(pumpSensor);
  int diff = velocity[1]-velocity[0];
  //println(velocity[1]-velocity[0]);
  
  if(abs(diff)<40){
    println("制止しています");
    if(mb.speed <= 0){
      mb.speed = 0;
    }
    else{
      mb.speed -= 2;
    }
  }
  else if(diff > 40){
    print("押しています");
    
    if(100-mb.speed < 30){
      mb.speed += 100-mb.speed;
    }else{
      mb.speed += 30;
    }
  }
  else if(diff < -40){
    println("引いています");
    
  }
  println(mb.speed);
  
  velocity[0] = velocity[1];
  //if(count < 29){
  //  count++;
  //}else if(count == 29){
  //  if(velocity[0] - velocity[29] > -50){
  //    flag = 1;
  //    //println(velocity[0]-velocity[29]);
  //  }
  //  else if(velocity[0] - velocity[29] < -50){
  //    flag = 0;
  //    //println(velocity[0]-velocity[29]);
  //  }
  //  pushOrpull();
  //  count = 0;


}
  