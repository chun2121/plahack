import processing.serial.*;
import cc.arduino.*;


Arduino arduino;
Pump mypump;

int sensorPin = 0;
int myframe = 0;
int flag;
int speed = 0;

int[] velocity;

void setup(){
  size(300, 300);
  background(255);
  arduino = new Arduino(this, "/dev/tty.usbmodem1441");
  velocity = new int[2];
  mypump = new Pump();
  velocity[0] = arduino.analogRead(sensorPin);
}

void draw(){
  background(255);
  if(myframe>= 30){
    MaxAndMin();
  }
  
  myframe++;
  
}