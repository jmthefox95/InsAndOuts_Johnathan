// Johnathan Mahones
// MTEC 2280
// instructions: user presses on the left mouse button to show random number and luck status. Pressing the X key will take the user back to the first screen.
int[] value = new int [6];
String[] luck = {"Lucky!! You're the super star!!", "Bad luck! Better luck next time!"};
String state = "pregame";
int positionValue = 0;
int positionLuck = 0;
int rectX = 50;
int rectY = 50;

void setup (){
 size(800, 800);
 fill(255);
 value[0] = 29;
 value[1] = 0;
 value[2] = 93;
 value[3] = 76;
 value[4] = 51;
 value[5] = 44;
 textSize(17);
 textAlign(CENTER);
 rectMode(BOTTOM);
}


void draw (){
  if (state == "pregame"){
  background(90);
  text("Hi! Press left mouse button to check your number and luck status!!", width/2, height/2 + 50);
  } else if (state == "game"){
    background(90);
    text("Your assigned value is " + value[positionValue] + ", and your luck factor is: " + luck[positionLuck], width/2, height/2 + 50);
    text("Press X to go back to the first screen or click again for a different result!", width/2, height/2 + 100);
    //text("Play again?", width/2, height/2);
    //text("Click again to restart!", width/2, height/2+50);
  } else if (state == "gameOver"){
    background(90);
    text ("Another shot?", width/2, height/2);
    text ("Click again to start over!", width/2, height/2+50);
    rect(rectX, rectY, 40, 50);
  }  
}


void mousePressed (){
 if (state== "pregame"){
   state = "game";
 }
 positionValue = int(random(0, value.length));
 if (positionLuck == luck.length - 1){
   positionLuck = 0;
 } else {
   positionLuck++;
 }
}

void keyPressed (){
 if (key == 'x' | key == 'X'){
   state = "pregame";
 }
}
