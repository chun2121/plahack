void connect(){
  scanStart();
  GetRequest connect = new GetRequest(mb.url+mb.dev+mb.id+mb.con);
  connect.send();
  print(connect.getContent());
  //GetRequest get = new GetRequest(url+dev+id+con);
  //get.send();
  scanStop();
}

void disconnect(){
  GetRequest get = new GetRequest(mb.url+mb.dev+mb.id+mb.disc);
  get.send();
  
}