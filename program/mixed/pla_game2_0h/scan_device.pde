void scanStart(){
  GetRequest scan_start = new GetRequest(mb.url+mb.scan+"/start");
  scan_start.send();
  //println(get.getContent());
}

void scanStop(){
  GetRequest scan_stop = new GetRequest(mb.url+mb.scan+"/stop");
  scan_stop.send();  
  //println(get.getContent());
}