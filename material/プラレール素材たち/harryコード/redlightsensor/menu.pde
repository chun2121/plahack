class Menu{
  String title;
  int count;
  
  Menu(){
    title = "start";
    count = 0;
  }
  
  void changeMenu(int i){
    
    if(i == 0){
      title = "start";
    }
    else if(i == 1){
      title = "goal";
    }
  }
  
  
  
}