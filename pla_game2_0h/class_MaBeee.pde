class MaBeee{
  
  String url, dev, id, con, disc, set, scan;
  int speed;
  
  MaBeee(){
    url = "http://localhost:11111";
    dev = "/devices";
    id = "/1";
    con = "/connect";
    scan = "/scan";
    disc = "/disconnect";
    set  = "/set?pwm_duty=";
    speed = 0;
  }
}