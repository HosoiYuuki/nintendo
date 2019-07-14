abstract class StageMake{
  private int rockX = 0, rockY = 0, size= 40, flagKey = 0; //1:right 2:left 3:up 4:down
  private int playerX = size*3/2, playerY =size*3/2;
  private int moveX = 10, moveY = 10;
  private int x = 1, y = 1;
  private int limX, limY;
  private int min = 100;
  private int cnt = 0;
  private int noFlag = 0;
  private int[][] n;
  int settingFlag = 0;
  StageMake(int[][] a){
    n = a;
  }
 
  void setting(){
    flagKey = 0;
    size= 40;
    playerX = size*3/2;
    playerY =size*3/2;
    x = 1;
    y = 1;
    cnt = 0;
  }
  
  void display(){
    rectMode(CORNER);
    if(settingFlag == 0){
      setting();
    }
    settingFlag = 1;
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
            flagKey = 0;
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
            flagKey = 0;
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
