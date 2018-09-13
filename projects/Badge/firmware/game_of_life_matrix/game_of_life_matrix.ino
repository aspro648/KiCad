/*  
 * Based on Conway's Game of Life by Devin McElheran
 * https://github.com/devinmcelheran/Bits/blob/master/game_of_life/game_of_life.ino
 * 
 * Please feel free to modify and distribute this code, however, I do not accept liability
 * for any concequences of its use.
 * 
 * Provided you have a compatible LED matrix and LED driver, this should work as is
 * once you've installed the LedControl library within the Arduino IDE and corrected
 * for the pins you've connected your device with.
 *
 * 
*/

bool worldWrap = true; // continous world by wraping around edges
bool randWorld = true; // false starts with startWorld
bool DEBUG = false;      // print worlds out to serial
int genDelay = 1000;    // type between sucessive generations

int button = A0;
bool world[8][8];     // current world
bool nextWorld[8][8]; // next world

bool startWorld2[8][8] = {{0,0,0,0,0,0,0,0},  // glider
                         {0,0,1,0,0,0,0,0},
                         {0,0,0,1,0,0,0,0},
                         {0,1,1,1,0,0,0,0},                       
                         {0,0,0,0,0,0,0,0},
                         {0,0,0,0,0,0,0,0},
                         {0,0,0,0,0,0,0,0},
                         {0,0,0,0,0,0,0,0}};

bool startWorld3[8][8] = {{0,0,0,0,0,0,0,0},  // repeater
                         {0,0,1,0,0,0,0,0},
                         {0,0,1,0,0,0,0,0},
                         {0,0,1,0,0,0,0,0},                       
                         {0,0,0,0,0,0,0,0},
                         {0,0,0,0,0,0,0,0},
                         {0,0,0,0,0,0,0,0},
                         {0,0,0,0,0,0,0,0}};

bool startWorld[8][8] = {{0,1,1,0,0,0,0,0},
                         {1,0,1,0,1,0,0,0},
                         {1,1,0,0,1,1,1,0},                       
                         {0,0,0,0,0,0,0,0},
                         {0,1,1,0,0,0,0,0},
                         {0,0,1,0,0,0,0,0},
                         {0,0,1,0,0,0,0,0},
                         {0,0,0,0,0,0,0,0}, };

void setup() {
  if(DEBUG){Serial.begin(9600);}
  randomSeed(analogRead(1));
  setWorld();
  DDRD =  B11111111; // ports to outputs
  DDRB =  B11111111; 
  pinMode(button, INPUT_PULLUP);
}


void loop() {                     
  int neighbors = 0;
  int lastPopulation = 0;
  int curPopulation = 0;
  int populationRepeat = 0;
  bool gameover = false; //This is what breaks the game loop 
  long timer;

  //while(1){
  //  displayGeneration();
  //}

  while(gameover == false){
    gameover = true; //True until discovered false
    for(int x=0; x<50; x++){
      displayGeneration();
      if (!digitalRead(button)){
        while(!digitalRead(button)){1;}
        gameover = true; 
        setWorld();
      }
    }
    curPopulation = 0;
    for (int i = 0; i < 8; i++){
      for (int j = 0; j < 8; j++){
        neighbors = countNeighbors(i, j);
        if (world[i][j] == true){ //If a cell is 'alive', game is not over, apply alive cell rules.
          gameover = false;
          if ( neighbors < 2){  // Any live cell with fewer than two live neighbors dies, as if by under population.
            nextWorld[i][j] = false; 
          }
          else if (neighbors > 3){ // Any live cell with more than three live neighbors dies, as if by overpopulation.
            nextWorld[i][j] = false; 
          }
          else {// Any live cell with two or three live neighbors lives on to the next generation.
             nextWorld[i][j] = true;
             curPopulation++;   
          }
        }
        else{ //Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.
          if (neighbors == 3){
            nextWorld[i][j] = true;
            curPopulation++;
          } 
        }
      }
    }
    
    if (memcmp(world, nextWorld, sizeof(world)) == 0){ // If in stable or repetitive state, restart.
      gameover = true; 
      if(DEBUG){Serial.println("Restarting");}
      setWorld();
      delay(2 * genDelay);
    }
    else{
      if(curPopulation == lastPopulation){
        populationRepeat++;
      }
      else{
        populationRepeat = 0;
      }
      lastPopulation = curPopulation;
      if(populationRepeat < 5){
        memcpy(world, nextWorld, sizeof(world));    //Current grid becomes next grid. 
      }
      else{
        gameover = true; 
        if(DEBUG){Serial.println("Restarting");}
        setWorld();
        delay(2 * genDelay);        
      }
    } 
  }
}


void setWorld(){
  for (int i = 0; i < 8; i++){ //This block initializes the game grid with random cells
    for (int j = 0; j < 8; j++){
      if (random(4) > 2) { world[i][j] = true; } else { world[i][j] = false; }
      nextWorld[i][j] = false; //Initialize next grid to dead cells. 
    }    
  }
  if(!randWorld){
    memcpy(world, startWorld, sizeof(world));    //Current grid becomes next grid. 
  }
}


void displayGeneration(){
  if(DEBUG){Serial.println("-------------------");}
  PORTB = 0b10000000; 
  for (int row = 0; row < 8; row++){
    byte temp = 0;
    if(DEBUG){Serial.print("| ");}
    for (int col = 0; col <8; col++){
      bitWrite(PORTD, col, world[row][col]);
      if(DEBUG){
        if (world[row][col]){
          Serial.print("O ");
        }
        else{
          Serial.print("  ");
        }
      }    
    }
    delay(1);
    PORTD = 0;
    if(DEBUG){Serial.println("|");}
    PORTB = PORTB>>1;
  }
  if(DEBUG){
    Serial.println("-------------------");
    Serial.println();
  }
}


int countNeighbors(int i, int j){  // continous world by wraping around
  int neighbors = 0;
  if(worldWrap){
    for (int x = -1; x < 2; x++){ //Continue statements detect and skip off-field cells
      //if ((i + x < 0) | (i + x > 7)) continue;
      for (int y = -1; y < 2; y++){
        //if ((j + y < 0) | (j + y > 7)) continue;
        if ((x == 0) && (y == 0)) continue;  // don't count self
        int testX = i+x;
        if (testX < 0){testX = 7;}
        if (testX > 7){testX = 0;}
        int testY = y+j;
        if (testY < 0){testY = 7;}
        if (testY > 7){testY = 0;}
        if (world[testX][testY] == true) neighbors++;
      }
    }
  }
  else{
    for (int x = -1; x < 2; x++){ //Continue statements detect and skip off-field cells
      if ((i + x < 0) | (i + x > 7)) continue;
      for (int y = -1; y < 2; y++){
        if ((j + y < 0) | (j + y > 7)) continue;
        if ((x == 0) && (y == 0)) continue;  // don't count self
        if (world[i + x][j + y] == true) neighbors++;
      }
    }    
  }
  return neighbors;
}
