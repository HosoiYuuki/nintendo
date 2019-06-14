
/* ****  ********************** display make**************************   **** */

abstract class StageMake{
  
  int sizeX, sizeY; //block of size
  int x = 0, y = 0; //iceblock of position
  int playerX = 0, playerY = 0; //player of position
  int flagKey = 0; //playerの進む方向を決めるflag
  int moveX = 20, moveY = 20;
  int key_par = 0; //前に押されたキーを記憶する
  
  StageMake(int w, int h){
    sizeX = w;
    sizeY = h;
  }
  
  
 /*氷ブロック*/ 
  void iceBlock(){
    while(x <= width - sizeX ){
      while(y <= height- sizeY ){
        fill(170, 202, 240);
        strokeWeight(0.5);
        stroke(255);
        rect(x , y , sizeX, sizeY);
        strokeWeight(4);
        line(x + sizeX/2, y, x, y + sizeY/2);
        line(x + sizeX/4, y, x, y + sizeY/4);
        y += sizeY;
      }
      y = 0;
      x += sizeX;
    }
  }
  
  /* playerブロック */
  void player(){
    if(keyPressed == true){
      if(keyCode == RIGHT){ 
        flagKey = 1;
      }
      
      if(keyCode == LEFT){
        flagKey = 2;
      }
      
      if(keyCode == UP){
        flagKey = 3;
      }
      
      if(keyCode == DOWN){
        flagKey = 4;
      }
    }
    
    fill(200, 100, 100);
    noStroke();
    
    /* playerの画面出力 */
    if(flagKey == 0){
      ellipse(playerX + sizeX/2, playerY + sizeY/2, sizeX, sizeY);
    } 
    
    /* 右に移動 */
    if(flagKey == 1 && width - sizeX*5/4 >= playerX){
      playerX += 10;
    }
    
    /*　左に移動　*/
    if(flagKey == 2 && sizeX*1/4 <= playerX){
      playerX -= 10;
    }
    
    /*　上に移動　*/
    if(flagKey == 3 && sizeY*1/4 <= playerY){
      playerY -= 10;
    }
    
    /* 下に移動 */
    if(flagKey == 4 && height - sizeY*5/4 >= playerY){
      playerY += 10;
    }
 
    ellipse(playerX + sizeX/2, playerY + sizeY/2, sizeX, sizeY);
    iceBlock();
  }
  
  abstract void rockBlock();
  
  abstract void exitBlock();
  
  abstract void noIceBlock();
  
  
}



class Lv1 extends StageMake{
  Lv1(int w, int h){ //w and h is ball of size
    super(w, h);
  }
  void rockBlock(){
    fill(115, 66, 41);
    rect(sizeX * 4, sizeY*0, sizeX, sizeY);
    if(playerX >= sizeX*4 - sizeX && playerX <= sizeX*4 + sizeX 
    && playerY >= sizeY*0 && playerY <= sizeY*0 + sizeY ){
      flagKey = 0;
    }
  }
  void exitBlock(){
  }
  void noIceBlock(){
  }
}



/* ****  ********************** system **************************   **** */

class System{
}
  

StageMake[] s;

void setup(){
  size(800, 600);
  
  s =  new StageMake[3];
  s[0] = new Lv1(40, 40);; 
}

void draw(){
  background(170, 202, 240);
  int Lv = 1;
  if(Lv == 1){
    //s[Lv - 1].iceBlock();
    s[Lv - 1].rockBlock();
    s[Lv - 1].player();
  }
}
