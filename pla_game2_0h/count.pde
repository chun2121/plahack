void count(){
    if(keyCode == ENTER){
      if(count == 0){
        count = 1;
      } else if(count == 1){
        count = 2;
      } else if(count == 2){
        count = 3;
      } else if(count == 5 || count == 6){
        count = 0;
        x = 0;
        y = 0;
        timer = 0;
        i = 0;
        d = 0;
        sound1.rewind();
        sound2.rewind();
        sound3.rewind();
        music1.rewind();
        music2.rewind();
      }
     keyCode = UP;
    }
     
     
}