 void getDistance(){
  //map関数使って0,1の値を取る
  int val = arduino.analogRead(sensorPin);
  distance = map(val, 700, 0, 2, 0);
 }