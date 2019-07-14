import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import ddf.minim.*;  

Minim minim;  //Minim型変数であるminimの宣言
AudioPlayer player1;  //サウンドデータ格納用の変数
AudioPlayer player2;  //サウンドデータ格納用の変数
AudioPlayer player3;
AudioPlayer player4;
AudioPlayer player5;
AudioPlayer gameover;
AudioPlayer open;
AudioPlayer goal;

int[][] boy = new int[][]{{0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0},
                              {0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 0, 0, 0, 0},
                              {0, 0, 0, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 0, 0, 0},
                              {0, 0, 2, 2, 1, 1, 1, 3, 3, 1, 3, 3, 3, 1, 1, 2, 2, 0, 0, 0},
                              {0, 0, 2, 2, 1, 3, 3, 1, 3, 3, 3, 1, 3, 1, 3, 2, 2, 0, 0, 0},
                              {0, 0, 2, 2, 3, 3, 3, 1, 3, 3, 3, 1, 3, 3, 3, 2, 2, 0, 0, 0},
                              {0, 0, 0, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 0, 0, 0},
                              {0, 0, 0, 2, 3, 3, 3, 3, 1, 3, 3, 1, 3, 3, 3, 2, 0, 0, 0, 0},
                              {0, 0, 0, 2, 2, 3, 3, 3, 3, 1, 1, 3, 3, 3, 2, 2, 0, 0, 0, 0},
                              {0, 0, 4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 0, 0},
                              {0, 4, 4, 4, 4, 4, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 4, 4, 4, 0},
                              {4, 4, 4, 4, 4, 4, 4, 4, 4, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4},
                              {4, 4, 4, 4, 4, 4, 4, 4, 2, 2, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4},
                              {3, 3, 3, 4, 4, 4, 4, 4, 4, 2, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3},
                              {3, 3, 3, 4, 4, 4, 4, 4, 4, 2, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3},
                              {3, 3, 3, 4, 4, 4, 4, 4, 2, 2, 2, 4, 4, 4, 4, 4, 4, 3, 3, 3},
                              {0, 0, 0, 4, 4, 4, 4, 4, 4, 2, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0},
                              {0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0},
                              {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
                              {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0}};
                              
                              
                              //0: ice, 1: rock, 3:EXIT 2: no, 4: uptri, 
                              //5: undtri, 7: leftri, 6: rightri 9:fall
                              //8:bear
int[][] map_lv1 = new int[][]{{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ,1},
                              {1, 0, 1, 0, 0, 1, 0, 0, 0, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1},
                              {1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 1},
                              {1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1},
                              {1, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
                              {1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 1, 1},
                              {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1},
                              {1, 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
                              {1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 5, 0, 1},
                              {1, 0, 4, 0, 0, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1},
                              {1, 0, 0, 0, 0, 0, 2, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
                              {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 9, 0, 1},
                              {1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
                              {1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1},
                              {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}};
                              
int[][] map_lv2 = new int[][] {{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ,1},
                               {1, 0, 1, 3, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
                               {1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 1},
                               {1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1},
                               {1, 0, 0, 1, 1, 1, 9, 0, 0, 0, 9, 0, 2, 0, 0, 0, 0, 0, 0, 1},
                               {1, 5, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 1},
                               {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1},
                               {1, 1, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1},
                               {1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 9, 2, 0, 9, 0, 0, 0, 0, 1},
                               {1, 0 ,0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 4, 0, 0, 0, 0, 0, 1},
                               {1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 1},
                               {1, 0, 2, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 9, 0, 1},
                               {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1},
                               {1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
                               {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ,1}};

int[][] map_lv4 = new int[][] {{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ,1},
                               {1, 0, 0, 2, 5, 9, 0, 0, 0, 3, 0, 0, 0, 7, 0, 0, 9, 0, 0, 1},
                               {1, 9, 9, 0, 0, 0, 0, 0, 1, 0, 0, 5, 9, 0, 0, 0, 0, 0, 0, 1},
                               {1, 2, 0, 0, 0, 0, 1, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1},
                               {1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 1},
                               {1, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
                               {1, 6, 0, 1, 0, 0, 2, 0, 0, 7, 0, 0, 0, 0, 0, 0, 4, 0, 9, 1},
                               {1, 0, 0, 7, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1, 0, 0, 0, 4, 1},
                               {1, 0, 0, 0, 0, 5, 0, 0, 4, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 1},
                               {1, 0 ,7, 0, 0, 0, 0, 0, 0, 9, 0, 5, 0, 0, 0, 0, 0, 0, 0, 1},
                               {1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 1},
                               {1, 0, 0, 0, 5, 0, 0, 4, 0, 9, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1},
                               {1, 0, 9, 0, 0, 9, 6, 0, 2, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 1},
                               {1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 7, 0, 0, 0, 0, 0, 2, 1},
                               {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ,1}}; 
                               
int[][] map_lv3 = new int[][] {{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ,1},
                               {1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 9, 0, 0, 0, 0, 1, 0, 0, 9, 1},
                               {1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 1},
                               {1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 1},
                               {1, 9, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 1},
                               {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 1},
                               {1, 0, 0, 0, 0, 2, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1},
                               {1, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 1},
                               {1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 9, 0, 0, 9, 0, 0, 0, 1},
                               {1, 0 ,0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 1},
                               {1, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 9, 0, 0, 2, 0, 0, 1},
                               {1, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 1},
                               {1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1},
                               {1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 3, 1},
                               {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ,1}}; 
                              
                              
int[][] map_lv5 = new int[][]{{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ,1},
                              {1, 0, 0, 2, 0, 0, 6, 0, 0, 0, 0, 7, 0, 6, 9, 0, 7, 0, 0, 1},
                              {1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
                              {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0, 0, 0, 1},
                              {1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, 
                              {1, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 1},
                              {1, 0, 9, 0, 0, 0, 0, 0, 0, 7, 0, 0, 5, 0, 7, 0, 0, 0, 4, 1},
                              {1, 9, 7, 0, 0, 0, 6, 0, 5, 0, 7, 0, 0, 3, 0, 0, 0, 0, 0, 1},
                              {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 9, 0, 6, 0, 0, 1},
                              {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 4, 0, 0, 0, 0, 1},
                              {1, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 5, 1},
                              {1, 0, 0, 0, 0, 9, 0, 7, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1},
                              {1, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
                              {1, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 6, 0, 0, 0, 0, 9, 1},
                              {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ,1}};
                              

                              
int[] map_numX = new int[20];
int[] map_numY = new int[15];

int exitFlag = 0;  //1:goal 2:gameover
int startNum = 0; // 0:start 1:playing

 
StageMake[] s;
System system;

  
void setup(){
  size(800, 600);
  system =  new System();
  s =  new StageMake[5];
  s[0] = new Lv1(map_lv1);
  s[1] = new Lv2(map_lv2);
  s[2] = new Lv5(map_lv3);
  s[3] = new Lv4(map_lv4);
  s[4] = new Lv5(map_lv5);
  minim = new Minim(this);
  player1 = minim.loadFile("n36.mp3", 2048);
  player2 = minim.loadFile("n136.mp3", 2048);
  player3 = minim.loadFile("n65.mp3", 2048);
  player4 = minim.loadFile("n112.mp3", 2048);
  player5 = minim.loadFile("n76.mp3", 2048);
  open = minim.loadFile("tw039.mp3", 2048);
  gameover = minim.loadFile("gameover.mp3", 2048);
  goal = minim.loadFile("c3.mp3", 2048);    
}

int Lv = 0;

void draw(){
  if(Lv == 0) {
    open.play();
    system.setting();
    system.makeTitle();
    Lv = system.selectLv();
  } else {
    if(Lv == 1){
      if(exitFlag == 0){
        open.rewind( ) ;
        open.pause();
        player1.play(); //再生
        s[Lv - 1].iceBlock();
        s[Lv - 1].rockBlock();
        s[Lv - 1].noIceBlock();
        s[Lv - 1].exitBlock();
        s[Lv - 1].fallBlock();
        s[Lv - 1].triangleBlock();
        s[Lv - 1].player();
        system.time();
      }
      if(exitFlag == 1){
        player1.pause();
        player1.rewind();
        system.goal();
        goal.play();
        if(keyPressed == true){
          if(key == ENTER){
            s[Lv - 1].settingFlag = 0;
            s[Lv - 1].player();
            exitFlag = 0;
            Lv = 0;
            goal.pause();
            goal.rewind();
          }
        }
      }else if(exitFlag == 2){
        player1.pause();
        player1.rewind();
        system.gameOver();
        gameover.play();
        if(keyPressed == true){
          if(key == ENTER){
            s[Lv - 1].settingFlag = 0;
            s[Lv - 1].player();
            exitFlag = 0 ;
            Lv = 0;
            gameover.pause();
            gameover.rewind();
          }
        }
      }
    }
    if(Lv == 2){
      if(exitFlag == 0){
        open.rewind( ) ;
        open.pause();
        player2.play(); 
        s[Lv - 1].iceBlock();
        s[Lv - 1].rockBlock();
        s[Lv - 1].noIceBlock();
        s[Lv - 1].exitBlock();
        s[Lv - 1].fallBlock();
        s[Lv - 1].triangleBlock();
        s[Lv - 1].player();
        system.time();
      }
      if(exitFlag == 1){
        system.goal();
        player2.pause();
        player2.rewind();
        goal.play();
        if(keyPressed == true){
          if(key == ENTER){
            s[Lv - 1].settingFlag = 0;
            s[Lv - 1].player();
            exitFlag = 0;
            Lv = 0;
            goal.pause();
            goal.rewind();
          }
        }
      }else if(exitFlag == 2){
        system.gameOver();
        gameover.play();
        player2.pause();
        player2.rewind();
        if(keyPressed == true){
          if(key == ENTER){
            s[Lv - 1].settingFlag = 0;
            s[Lv - 1].player();
            exitFlag = 0;
            Lv = 0;
            gameover.pause();
            gameover.rewind();
          }
        }
      }
    }
  
    if(Lv == 3){
      if(exitFlag == 0){
        open.rewind( ) ;
        open.pause();
        player3.play(); 
        s[Lv - 1].iceBlock();
        s[Lv - 1].rockBlock();
        s[Lv - 1].noIceBlock();
        s[Lv - 1].exitBlock();
        s[Lv - 1].fallBlock();
        s[Lv - 1].triangleBlock();
        s[Lv - 1].player();
        system.time();
      }
      if(exitFlag == 1){
        system.goal();
        player3.pause();
        player3.rewind();
        goal.play();
        if(keyPressed == true){
          if(key == ENTER){
            s[Lv - 1].settingFlag = 0;
            s[Lv - 1].player();
            exitFlag = 0;
            Lv = 0;
            goal.pause();
            goal.rewind();
          }
        }
      }else if(exitFlag == 2){
        system.gameOver();
        gameover.play();
        player3.pause();
        player3.rewind();
        if(keyPressed == true){
          if(key == ENTER){
            s[Lv - 1].settingFlag = 0;
            s[Lv - 1].player();
            exitFlag = 0;
            Lv = 0;
            gameover.pause();
            gameover.rewind();
          }
        }
      }
    }
    
    if(Lv == 4){
      if(exitFlag == 0){
        open.rewind( ) ;
        open.pause();
        player4.play();
        s[Lv - 1].iceBlock();
        s[Lv - 1].rockBlock();
        s[Lv - 1].noIceBlock();
        s[Lv - 1].exitBlock();
        s[Lv - 1].fallBlock();
        s[Lv - 1].triangleBlock();
        s[Lv - 1].player();
        system.time();
      }
      if(exitFlag == 1){
        system.goal();
        player4.pause();
        player4.rewind();
        goal.play();
        if(keyPressed == true){
          if(key == ENTER){
            s[Lv - 1].settingFlag = 0;
            s[Lv - 1].player();
            exitFlag = 0;
            Lv = 0;
            goal.pause();
            goal.rewind();
          }
        }
      }else if(exitFlag == 2){
        system.gameOver();
        player4.pause();
        player4.rewind(); 
        gameover.play();
        if(keyPressed == true){
          if(key == ENTER){
            s[Lv - 1].settingFlag = 0;
            s[Lv - 1].player();
            exitFlag = 0;
            Lv = 0;
            gameover.pause();
            gameover.rewind();
          }
        }
      }
    }
    if(Lv == 5){
      if(exitFlag == 0){
        open.rewind( ) ;
        open.pause();
        player5.play();
        s[Lv - 1].iceBlock();
        s[Lv - 1].rockBlock();
        s[Lv - 1].noIceBlock();
        s[Lv - 1].exitBlock();
        s[Lv - 1].fallBlock();
        s[Lv - 1].triangleBlock();
        s[Lv - 1].player();
        system.time();
      }
      if(exitFlag == 1){
        player5.pause();
        player5.rewind(); 
        system.goal();
        goal.play();
        if(keyPressed == true){
          if(key == ENTER){
            player5.pause();
            player5.rewind(); 
            s[Lv - 1].settingFlag = 0;
            s[Lv - 1].player();
            exitFlag = 0;
            Lv = 0;
            goal.pause();
            goal.rewind();
          }
        }
      }else if(exitFlag == 2){
        system.gameOver();
        player5.pause();
        player5.rewind(); 
        gameover.play();
        if(keyPressed == true){
          if(key == ENTER){
            s[Lv - 1].settingFlag = 0;
            s[Lv - 1].player();
            exitFlag = 0;
            Lv = 0;
            gameover.pause();
            gameover.rewind();
          }
        }
      }
    }
  }
}
