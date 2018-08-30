/*
 * Conway's Game of Life by Devin McElheran
 * February 15th, 2017
 * 
 * Please feel free to modify and distribute this code, however, I do not accept liability
 * for any concequences of its use.
 * 
 * Provided you have a compatible LED matrix and LED driver, this should work as is
 * once you've installed the LedControl library within the Arduino IDE and corrected
 * for the pins you've connected your device with.
 * 
 * 
 * https://github.com/devinmcelheran/Bits/blob/master/game_of_life/game_of_life.ino
 * 
*/



void setup() {

}


void loop() {

  bool cgrid[8][8], ngrid[8][8]; //current grid and next grid, booleans are easily addressible
                                 //in comparison to individual bits in a byte.
  int neighbors = 0;
  bool gameover = false; //This is what breaks the game loop
  randomSeed(analogRead(0));
  
  for (int i = 0; i < 7; i++){ //This block initializes the game grid with random cells
    for (int j = 0; j < 7; j++){
      if (random(4) > 2) { cgrid[i][j] = true; } else { cgrid[i][j] = false; }
      ngrid[i][j] = false; //Initialize next grid to dead cells. 
    }    
  }

  while(gameover == false){
    gameover = true; //True until discovered false
    displayGeneration(cgrid);
    delay(1000);
    for (int i = 0; i < 8; i++){
      for (int j = 0; j < 8; j++){
        neighbors = countNeighbors(cgrid, i, j);
        if (cgrid[i][j] == true){ //If a cell is 'alive', game is not over, apply alive cell rules.
          gameover = false;
          if ( neighbors < 2){
            ngrid[i][j] = false; 
          }
          else if (neighbors == 3){
            ngrid[i][j] = true;   
          }
          else if (neighbors > 3){
            ngrid[i][j] = false; 
          } 
        }
        else{ //If cell is not alive, apply dead cell rule.
          if (neighbors == 3) ngrid[i][j] = true; 
        } 
      }
    }

    if (memcmp(cgrid, ngrid, sizeof(cgrid)) == 0){ // If in stable or repetitive state, restart.
      gameover = true; 
    }
    else{
      memcpy(cgrid, ngrid, sizeof(cgrid));    //Current grid becomes next grid. 
    } 
  }
}


void displayGeneration(bool ba[8][8]){

  //This for loop in constructed in such a way that mirrors the output while rotating 90 degress.
  //I've done this to orient the image properly for my own setup. The board is propped up by its pins
  //in my breadboard. Your parts might need to be done otherwise. While this isn't necessary for the Game
  //of Life, it will be if you intend on displaying images.

  for (int y = 0; y < 8; y++){
    byte temp = 0;
    for (int x = 0; x < 8; x++){
      bitWrite(temp, x, ba[x][y]);
      Serial.print(temp);
      //Inelegant boolean array to byte conversion for matrix
      //lc.setColumn(0, 7 - i, (byte) (ba[i][0] | ba[i][1] << 1 | ba[i][2] << 2 | ba[i][3] << 3 | ba[i][4] << 4 | ba[i][5] << 5 | ba[i][6] << 6 | ba[i][7] << 7));
  
      //Uncomment for normal operation, use (7 - i) and setColumn as necessary to achieve the proper orientation.
      //lc.setRow(0, i, (byte) (ba[i][0] | ba[i][1] << 1 | ba[i][2] << 2 | ba[i][3] << 3 | ba[i][4] << 4 | ba[i][5] << 5 | ba[i][6] << 6 | ba[i][7] << 7));
      
    }
    Serial.println();
  }
  delay(10000);
}


int countNeighbors(bool grid[8][8], int i, int j){

  int neighbors = 0;
  for (int x = -1; x < 2; x++){ //Continue statements detect and skip off-field cells
    if ((i + x < 0) | (i + x > 7)) continue;
    for (int y = -1; y < 2; y++){
      if ((j + y < 0) | (j + y > 7)) continue;
      if ((x == 0) && (y == 0)) continue;
      if (grid[i + x][j + y] == true) neighbors++;
    }
  }
  return neighbors;
}
