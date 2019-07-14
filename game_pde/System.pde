   
class System{
  int cnt = 0;
  int[] rankNum = new int[]{10, 15, 25, 35, 45, 60};
  int rankFlag = 0; //SSS:0 ,S:1 , A:2, B:3, C:4, D:5, E:6
  float goalTime;
  int goalCol;
  float t, lim = 80;
  int rectX = 180;
  int rectY = 30;
  float lt = (width - rectX) / lim;
  long t_start;
  float time = 0;
  
  void setting(){
    t = 0;
  }
  
  
  void goal(){ //ゴール画面
    colorMode(HSB, 90);
    background(99);
    for(int x = 0; x < width; x++){
      float color1 = random(200); // 色を設定する乱数の値は0から100未満とする
      stroke(color1, 60, 99);
      line(x, 0, x, height);
    }
    colorMode(RGB, 255);
    timeCol(goalCol);
    rect(0, 100 ,width, height*5/7);
    textSize(200);
    fill(0);
    text("GOAL!!!", width/14 - 20, height*1/2 + 40);
    fill(0);
    rect(0, height*5/7, width, 100);
    if(t < 10){
      textSize(70);
      timeCol(goalCol);
      text("You are SSS rank!!", width/9, height*5/6);
    }
    
    else if(t < 15){
      textSize(70);
      timeCol(goalCol);
      text("You are S rank!!", width/6, height*5/6);
    }
    
    else if(t >= 15 && t < 25){
      textSize(70);
      timeCol(goalCol);
      text("You are A rank!!", width/6, height*5/6);
    }
    
    else if(t >= 25 && t < 35){
      textSize(70);
      timeCol(goalCol);
      text("You are B rank!!", width/6, height*5/6);
    }
    
    else if(t >= 35 && t < 45){
      textSize(70);
      timeCol(goalCol);
      text("You are C rank!!", width/6, height*5/6);
    }
    
    else if(t >= 45 && t < 60){
      textSize(70);
      timeCol(goalCol);
      text("You are D rank!!", width/6, height*5/6);
    }
    
    else{
      textSize(70);
      timeCol(goalCol);;
      text("You are E rank", width/6, height*5/6);
    }
  }
  
  
  void gameOver(){//ゲームオーバー画面
    colorMode(HSB, 100);
    background(0);
    for(int x = 0; x < width; x++){
      float color1 = random(200); // 色を設定する乱数の値は0から100未満とする
      stroke(color1);
      line(x, 0, x, height);
    }
    fill(0);
    textSize(130);
    text("GAMEOVER", width/14, height*2/3);
    
  }
  
  
  void time(){  //時間を測る画面出力させるメソッド
    time++;
    if(time % 60 == 0){
      t += 1;
    }
    float limTime = lim - t; //残り時間
    fill(150);
    rect(0, height - 30, width, 30); 
    textSize(25);
    rectMode(CORNER);
    //noStroke();
    timeCol(rankFlag);
    rect(rectX, height - 20, width - (lt *t) - rectX, 15); //時間が進むに連れてrectの幅の長さが短くする
    fill(255);
    rect(0, height - 30, rectX, rectY);
    if(t <= lim){
      fill(0);
      textSize(20);
      text(nf(limTime, 1, 0) + "sec", 110, height - 5);
      fill(0);
      rect(0, height-30, rectX/2, rectY);
      timeCol(rankFlag);
      rank();
    }else{
      exitFlag = 2;
    }
    if(exitFlag == 1){
      goalCol = rankFlag;
      goalTime = t;
    }
  }
  
  
  void rank(){ //play画面でrankが更新されていく挙動を画面出力させる
    if(t < rankNum[0]){
      rankFlag = 0;
      textSize(20);
      text("SSS rank", 5, height-5);
    }
    
    else if(t < rankNum[1]){
      rankFlag = 1;
      textSize(20);
      text("S rank", 5, height-5);
    }
    
    else if(t < rankNum[2]){
      rankFlag = 2;
      textSize(20);
      text("A rank", 5, height-5);
    }
    
    else if(t < rankNum[3]){
      rankFlag = 3;
      textSize(20);
      text("B rank",5,height-5);
    }
    
    else if(t < rankNum[4]){
      rankFlag = 4;
      textSize(20);
      text("C rank", 5,height-5);
    }
    
    else if( t < rankNum[5]){
      rankFlag = 5;
      textSize(20);
      text("D rank", 5, height-5);
    }
    
    else{
      rankFlag = 6;
      textSize(20);
      text("E rank", 5, height-5);
    }
  }
  
  
  void timeCol(int n){ //ランクによって色分けする
    if(n == 0){
      fill(235,0, 235);
    }else if(n == 1){
      fill(0, 200, 255);
    }else if(n == 2){
      fill(210, 0, 0);
    }else if(n == 3){
      fill(0, 255, 0);
    }else if(n == 4){
      fill(255, 255, 0);
    }else if(n == 5){
      fill(224, 225, 255);
    }else if(n == 6){
      fill(200);
    }
  }
  
  
  void makeTitle() {
    /* 仮 */
    colorMode(RGB, 255);
    background(50,150,255);
    noStroke();
    fill(0);
    rect(0, 400, width, 150);
    fill(200);
    rect(0, 400, width, 20);
    fill(200);
    triangle(width/4, 400, width/4-30,400, width/4, 435);
    triangle(width/4 + width/2, 400, width/4 + width/2+30,400, width/4 + width/2, 435);
    rect(width/4, 400, width/2, 35);
    PFont font = createFont("Yu Gothic", 64, true);
    textFont(font);
    textSize(50);
    fill(255);
    text("南極大陸から抜け出せ", 150, 220);
    textSize(20);
    fill(0);
    text("Select Level", width/2 - 65, 430);
    textSize(20);
    fill(255);
    text("[1].Lv1", 120, 500);
    text("[2].Lv2", 240, 500);
    text("[3].Lv3", 360, 500);
    text("[4].Lv4", 480, 500);
    text("[5].Lv5", 600, 500);
  }
  
  int selectLv() {
    int l;
    if((keyPressed == true) && (key == '1')){
      l = 1;
      return l;
    }
    
    if((keyPressed == true) && (key == '2')) {
      l = 2;
      return l;
    }
    
    if((keyPressed == true) && (key == '3')) {
      l = 3;
      return l;
    }
    
    if((keyPressed == true) && (key == '4')) {
      l = 4;
      return l;
    }
    
    if((keyPressed == true) && (key == '5')) {
      l = 5;
      return l;
    }
    return 0;
  }
  
}
