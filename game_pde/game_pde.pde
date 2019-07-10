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
                              {1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
                              {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 7, 0, 9, 0, 1},
                              {1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
                              {1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1},
                              {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}};
                              
int[][] map_lv2 = new int[][] {{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ,1},
                               {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
                               {1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
                               {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1},
                               {1, 0, 0, 1, 1, 1, 9, 0, 0, 0, 9, 0, 2, 0, 0, 0, 0, 0, 0, 1},
                               {1, 5, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 1},
                               {1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1},
                               {1, 1, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1},
                               {1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 9, 2, 0, 9, 0, 0, 0, 0, 1},
                               {1, 0 ,0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 4, 0, 0, 0, 0, 0, 1},
                               {1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 1},
                               {1, 0, 2, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 9, 0, 1},
                               {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1},
                               {1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
                               {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ,1}};

int[][] map_lv3 = new int[][] {{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ,1},
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
abstract class StageMake{
  int rockX = 0, rockY = 0, size= 40, flagKey = 0; //1:right 2:left 3:up 4:down
  int playerX = size*3/2, playerY =size*3/2;
  int moveX = 10, moveY = 10;
  int x = 1, y = 1;
  int limX, limY;
  int min = 100;
  int cnt = 0;
  int noFlag = 0;
  int[][] n;
  StageMake(int[][] a){
    n = a;
  }
  void display(){
    rectMode(CORNER);
    for(int i = 0; i < boy.length; i++){
      for(int j = 0; j < boy[i].length; j++){
        noStroke();
        if(boy[i][j] == 2){
          fill(236, 216, 198);
          rect(playerX + 2*j - size/2, playerY + 2*i - size/2, 2, 2);
        }
        if(boy[i][j] == 1){
          fill(0);
          rect(playerX + 2*j - size/2, playerY + 2*i - size/2, 2, 2);
        }
        if(boy[i][j] == 3){
          fill(247, 208, 169);
          rect(playerX + 2 * j - size/2, playerY + 2*i - size/2, 2, 2);
        } 
        if(boy[i][j] == 4){
          fill(125, 68, 18);
          rect(playerX + 2 * j - size/2, playerY + 2*i - size/2, 2, 2);
        }
      }
    }
  }
  
  void player(){
    if(keyPressed == true){
      
      if(keyCode == RIGHT && cnt == 0){ 
        flagKey = 1;
        if(n[y][x] == 2 && noFlag == 1){
          x += 1;
          noFlag = 0;
        }
        for(int i = x; i < n[0].length; i++){
          if(n[y][i] == 1 || n[y][i] == 4 || n[y][i] == 5 || n[y][i] == 7 ){
            cnt++;
            if(cnt <= 1){ 
              limX = size*i - size/2;
              x = i-1;
            }
          }
          if(n[y][i] == 2 || n[y][i] == 4 || n[y][i] == 5 || n[y][i] == 7 ){
            cnt++;
            if(cnt <= 1){ 
              noFlag = 0;
              limX = size*i + size/2;
              x = i;
            }
          }
        }
      }
      
      if(keyCode == LEFT && cnt == 0){
        flagKey = 2;
        if(n[y][x] == 2 && noFlag == 1){
          x -= 1;
          noFlag = 0;
        }
        for(int i = x; i >= 0; i--){
          if(n[y][i] == 1 || n[y][i] == 4 || n[y][i] == 5 || n[y][i] == 6){
            cnt++;
            if(cnt <= 1){ 
              limX = size*i + size * 3/2;
              x = i+1;
            }
          }
          if(n[y][i] == 2 ){
            cnt++;
            if(cnt <= 1){ 
              noFlag = 0;
              limX = size*i + size/2;
              x = i;
            }
          }
        }
      }
      
      if(keyCode == UP && cnt == 0){
        flagKey = 3;
        if(n[y][x] == 2 && noFlag == 1){
          y -= 1;
          noFlag = 0;
        }
        for(int i = y; i >= 0; i--){
          if(n[i][x] == 1 || n[i][x] == 5 || n[i][x] == 6 || n[i][x] == 7){
            cnt++;
            if(cnt <= 1){ 
              limY = size*i + size * 3/2;
              y = i+1;
            }
          }
          if(n[i][x] == 2){
            cnt++;
            if(cnt <= 1){ 
              noFlag = 0;
              limY = size*i + size/2;
              y = i;
            }
          }
        }
      }
      
      if(keyCode == DOWN && cnt == 0){
        flagKey = 4;
        if(n[y][x] == 2 && noFlag == 1){
          y += 1;
          noFlag = 0;
        }
        for(int i = y; i < map_lv1.length; i++){
          if(n[i][x] == 1 || n[i][x] == 4 || n[i][x] == 6 || n[i][x] == 7){
            cnt++;
            if(cnt <= 1){ 
              limY = size*i - size/2;
              y = i-1;
            }
          }
          if(n[i][x] == 2 ){
            cnt++;
            if(cnt <= 1){ 
              noFlag = 0;
              limY = size*i + size/2;
              y = i;
            }
          }
        }
      }
    }
    
    fill(200, 100, 100);
    
    if(flagKey == 1 && limX > playerX){
      playerX += moveX;
    }
    else if(flagKey == 1){
      cnt = 0;
      noFlag = 1;
    }
    
    if(flagKey == 2 &&limX < playerX ){
      playerX -= moveX;
    }else if(flagKey == 2){
      cnt = 0;
      noFlag = 1;
    }
    
    if(flagKey == 3 && limY < playerY){
      playerY -= moveY;
    }
    else if(flagKey == 3){
      cnt = 0;
      noFlag = 1;
    }
    
    if(flagKey == 4 && limY > playerY){
      playerY += moveY;
    }else if(flagKey == 4){
      cnt = 0;
      noFlag = 1;
    }
    display();
  }
  
  void rockBlock(){
    for(int i = 0; i < n.length; i++){
      for(int j = 0; j < n[i].length; j++){
        if(n[i][j] == 1 ){
          fill(100);
          strokeWeight(1);
          stroke(0);
          rect(rockX + size * j, rockY + size * i, size, size);
          if(i == 0 && j == 1){
            fill(0);
            ellipse(rockX + size * j + size/2, rockY + size * i + size/2, size, size);
            rect(rockX + size * j, rockY + size * i + size/2, size, size/2);
          }
        } 
      }
    }
  }
  
  void iceBlock(){
    for(int i = 0; i < n.length; i++){
      for(int j = 0; j < n[i].length; j++){
        if(n[i][j] == 0 ){
          fill(170, 230, 255);
          strokeWeight(1);
          stroke(0);
          rect(rockX + size * j, rockY + size * i, size, size);
          stroke(255);
          strokeWeight(4);
          line(rockX + size * j + size/2, rockY + size * i, rockX + size * j, rockY + size * i + size/2);
          line(rockX + size * j + size/4,  rockY + size * i, rockX + size * j,  rockY + size * i + size/4);
        } 
      }
    }
  }
  
  void noIceBlock(){
    for(int i = 0; i < n.length; i++){
      for(int j = 0; j < n[i].length; j++){
        if(n[i][j] == 2){
          fill(255);
          strokeWeight(1);
          stroke(0);
          rect(rockX + size * j, rockY + size * i, size, size);
        } 
      }
    }
  }
  
  
  void fallBlock(){
    for(int i = 0; i < n.length; i++){
      for(int j = 0; j < n[i].length; j++){
        if(n[i][j] == 9){
          fill(170, 230, 255);
          strokeWeight(1);
          stroke(0);
          rect(rockX + size * j, rockY + size * i, size, size);
          fill(0);
          ellipse(size * j + rockX + size/2, size * i + size/2, size, size);
          if(rockX + size * j + size/2 == playerX && rockY + size * i + size/2 == playerY){
            exitFlag = 2;
          }
        }
      }
    }
  }
  
  
  void exitBlock(){
    for(int i = 0; i < n.length; i++){
      for(int j = 0; j < n[i].length; j++){
        if(n[i][j] == 3){
          fill(0, 0, 255);
          strokeWeight(1);
          stroke(0);
          rect(rockX + size * j, rockY + size * i, size, size);
          strokeWeight(4);
          stroke(255, 0, 0);
          line( rockX + size * j + size/2, rockY + size * i + 10, rockX + size * j + size/2, rockY + size * i + size - 5);
          fill(255, 255, 0);
          noStroke();
          rect( rockX + size * j + size/2,  rockY + size * i + 10, 19, 13);
          if(rockX + size * j + size/2 == playerX && rockY + size * i + size/2 == playerY){
            exitFlag = 1;
          }
        }
      }
    }
  }
  
  //4: uptri, 5: undtri, 6: leftri, 7: rightri
  void triangleBlock(){
    for(int i = 0; i < n.length; i++){
      for(int j = 0; j < n[i].length; j++){
        if(n[i][j] == 4){
          fill(170, 230, 255);
          strokeWeight(1);
          stroke(0);
          rect(rockX + size * j, rockY + size * i, size, size);
          fill(0, 255, 0);
          strokeWeight(1);
          stroke(0);
          triangle(rockX + size * j + size/2, rockY + size * i , rockX + size * j, rockY + size * (i+1), rockX + size * j + size, rockY + size * (i+1));
        }
        if(n[i][j] == 5){
          fill(170, 230, 255);
          strokeWeight(1);
          stroke(0);
          rect(rockX + size * j, rockY + size * i, size, size);
          fill(0, 255, 0);
          strokeWeight(1);
          stroke(0);
          triangle(rockX + size * j + size/2, rockY + size * i + size, rockX + size * j, rockY + size * (i+1) -size, rockX + size * j + size, rockY + size * (i+1) - size);
        }
        
        if(n[i][j] == 6){
          fill(170, 230, 255);
          strokeWeight(1);
          stroke(0);
          rect(rockX + size * j, rockY + size * i, size, size);
          fill(0, 255, 0);
          strokeWeight(1);
          stroke(0);
          triangle(rockX + size * j , rockY + size * i , rockX + size * j, rockY + size * (i+1), rockX + size * j + size, rockY + size * (i+1) - size/2);
        }
        
        if(n[i][j] == 7){
          fill(170, 230, 255);
          strokeWeight(1);
          stroke(0);
          rect(rockX + size * j, rockY + size * i, size, size);
          fill(0, 250, 0);
          strokeWeight(1);
          stroke(0);
          triangle(rockX + size * j + size, rockY + size * i , rockX + size * j, rockY + size * (i+1) - size/2, rockX + size * j + size, rockY + size * (i+1));
        }
      }
    }
  }
}


class Lv1 extends StageMake{
  Lv1(int[][] a){
    super(a);
  }
}

class Lv2 extends StageMake{
  Lv2(int[][] a){
    super(a);
  }
}

class Lv3 extends StageMake{
  Lv3(int[][] a) {
    super(a);
  }
}


class Lv5 extends StageMake{
  Lv5(int[][] a){
    super(a);
  }
}


    
class System{
  int cnt = 0;
  int[] rankNum = new int[]{10, 15, 25, 35, 45, 60};
  int rankFlag = 0; //SSS:0 ,S:1 , A:2, B:3, C:4, D:5, E:6
  float goalTime;
  int goalCol;
  
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
  
  
  void gameOver(){ //ゲームオーバー画面
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
  
  
  long t_start;
  float t, lim = 1000;//80
  int rectX = 180;
  int rectY = 30;
  float lt = (width - rectX)/lim;
  
  void time(){  //時間を測る画面出力させるメソッド
    t = (millis() - t_start)/1000.0;
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
      text(nf(limTime, 1, 2) + "sec", 90, height - 5);
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
    background(50,150,255);
    PFont font = createFont("Yu Gothic", 64, true);
    textFont(font);
    textSize(50);
    text("南極大陸から抜け出せ", 150, 220);
    textSize(20);
    text("キーボード上で選択するLvの数字を押してください.", 160, 430);
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


StageMake[] s;
System system;


void setup(){
  size(800, 600);
  system =  new System();
  s =  new StageMake[4];
  s[0] = new Lv1(map_lv1);
  s[1] = new Lv2(map_lv2);
  s[2] = new Lv5(map_lv5);
  s[3] = new Lv3(map_lv3);
  
}

int Lv = 4;//0

void draw(){
  if(Lv == 0) {
    system.makeTitle();
    Lv = system.selectLv();
  } else {
    if(Lv == 1){
      if(exitFlag == 0){
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
      }else if(exitFlag == 2){
        system.gameOver();
      }
    }
    if(Lv == 2){
      if(exitFlag == 0){
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
      }else if(exitFlag == 2){
        system.gameOver();
      }
    }
  
    if(Lv == 3){
      if(exitFlag == 0){
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
      }else if(exitFlag == 2){
        system.gameOver();
      }
    }
    
    if(Lv == 4){
      if(exitFlag == 0){
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
      }else if(exitFlag == 2){
        system.gameOver();
      }
    }
  }
}
