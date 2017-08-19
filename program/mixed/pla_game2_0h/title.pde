void title(){
    fill(255, 0, 0);
    //text("PlaHack", 500, 250);
    music1.play();
    image(titleback,0,a,1440,1408);
    image(titlegif,270, 132);
    a++;
    if(a == 300){
      a = -508;
    }
    //image(title,270, 115, 900, 670);
    //位置は 画面サイズ - 画像サイズ / 2
    
}