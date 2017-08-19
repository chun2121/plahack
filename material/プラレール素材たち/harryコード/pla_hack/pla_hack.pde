import http.requests.*;
import processing.serial.*;
import cc.arduino.*;

MaBeee mb;
Arduino arduino;

int sensorPin = 0;
int myframe = 0;
int flag;

int[] velocity;

void setup(){
  size(100,100);
  mb = new MaBeee();
  arduino = new Arduino(this, "/dev/tty.usbmodem1421");
  velocity = new int[2];
  //ここでスキャンなどの関数処理を行う
  connect();
 
}

void draw(){
  ////request();
  ////スピードの判定など
  MaxAndMin();
  setSpeed(str(mb.speed));
}