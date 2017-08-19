void MaxAndMin(){
  
  velocity[1] = arduino.analogRead(sensorPin);
  int diff = velocity[1]-velocity[0];
  //println(velocity[1]-velocity[0]);
  
  if(speed > 0) speed--;
  
  if(abs(diff)<45){
    //println("制止しています");
  }
  else if(diff > 45){
    print("押しています");
    speed += 30;
  }
  else if(diff < -45){
    //println("引いています");
    
  }
  println(speed);
  
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
  