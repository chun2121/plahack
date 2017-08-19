void request(){
  GetRequest get = new GetRequest(mb.url+mb.dev);
  get.send();
  println("ResPonse Content: " + get.getContent());
  
}