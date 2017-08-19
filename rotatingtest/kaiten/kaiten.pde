PImage    north;  //画像
int       deg;    //回転角度
 
void setup(){
  size(800,800);
  north = loadImage( "zikanwari2017.png" );
  deg = 0;
}
 
void draw(){
  background( 255 );
  
  //画面中央で画像を回転させる
  rotateImage( (width-north.width)/2, (height-north.height)/2, north, deg );
  deg++;
  if( deg > 360) deg = 0;
}
 
/******************************************
* 回転処理関数
*------------------------------------------
* x,y　:画像配置場所
* img　：画像
* deg ：回転角度
*******************************************/
void rotateImage( int x, int y, PImage img, float deg ){ 
 pushMatrix(); //①
 
 //画像中央を回転の中心にする
 translate( x + img.width/2, y + img.height/2 ); //②
 
 //回転する
 rotate(radians( deg )); //③
 
 //回転の中心が画像中央なので、画像描画原点も画像中央にする
 //こうすると、(0,0)に配置すれば期待した位置に画像が置ける
 //これをしないと、⑤のimage()命令で配置する座標計算がメンドクサイ
 imageMode(CENTER); //④
 
 //画像を描画
 image( img, 0, 0 ); //⑤
 
 //画像描画原点を元（画像の左上隅）に戻す
 imageMode(CORNER); //⑥
 
 popMatrix(); //⑦
}