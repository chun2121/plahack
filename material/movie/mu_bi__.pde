import processing.video.*;

Movie movie;
int count = 0;

void setup(){
size(1440,900);
movie = new Movie(this, "op.mp4");
movie.play();
}

void movieEvent(Movie m) {
  m.read();
}

void draw(){
  //background(0, 0, 0);
  //count();
  //if(count == 0){
  //  background(0, 0, 0);
  //}
  //if(count == 1){
  //  //movie.play();
    image(movie,80,90,1280,720);

//  }
  
//  if(count == 2){
//      background(0, 0, 0);
    
//  }
  
 println("countの値は" + count +  "です");
}