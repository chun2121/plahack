import processing.serial.*;
import cc.arduino.*;
import cc.arduino.Arduino;


Arduino arduino;
int sensorPin = 0;
int count = 0;
float a = 0.8;
float[] y  = {0, 0};

Menu menu;
float distance;

void setup(){
  
  size(300, 300);
  //println(Arduino.list());
  background(255);
  arduino = new Arduino(this, "/dev/tty.usbmodem1441");
  menu = new Menu();

}

void draw(){
  background(255);
  //getDistance();
  
  //メニュー変更処理
  //menu.changeMenu(int(distance));
  //fill(0);
  //text(menu.title, 10, 35, 100, 100);
  

}