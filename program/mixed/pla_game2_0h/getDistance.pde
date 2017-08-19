int getDistance(){
  //map関数を使って0,1の値をとる
  int val = arduino.analogRead(goalSensor);
  distance = map(val,700, 0, 2, 0);
  return int(distance);
}

//void resetPla(int count){
//  int num=0;
// if(count == 5){
//   //lose
//   while(arduino.analogRead(goalSensor) == 0){
//    if(num == 0){
//      mb.speed = 100;
//      setSpeed(str(mb.speed));
//      num++;
//    }
//   }
//   for(int i=0;i<10;i++){
//    mb.speed = 50;
//    setSpeed(str(mb.speed));
//   }
// }
// else if(count == 6){
//   //win
//   for(int i=0;i<10;i++){
//    mb.speed = 50;
//    setSpeed(str(mb.speed));
//   }
// }
  
//}