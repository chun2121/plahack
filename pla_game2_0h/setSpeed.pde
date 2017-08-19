void setSpeed(String speed){
  GetRequest get = new GetRequest(mb.url+mb.dev+mb.id+mb.set+speed);
  get.send();
}