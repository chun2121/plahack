void Animation(){
 image(myAnimation,500,350); 
}

void Lose(){
 image(myAnimation,500,350); 
 rect(500,500,100,100);
}

void Win(){
 image(myAnimation,500,350); 
 ellipse(100,100,0,0);
}

void count(){
    if(keyCode == ENTER){
     count += 1;
     keyCode = UP;
  }

}

void title(){
    fill(255, 0, 0);
    text("PlaHack", 500, 250);
    image(character,200, 390, 174, 245);
}