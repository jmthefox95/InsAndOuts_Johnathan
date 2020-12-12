import processing.sound.*;

// Johnathan Mahones
// Random Color House
// twist pedometer to affect the porportions and color of the shapes
// press button to change color of background

import processing.sound.*;
import processing.serial.*;

Serial myPort;

int val=0;
int potVal=0;
int buttonVal=0;

SoundFile music;

float r = random(0, 255);
float g = random(0, 255);
float b = random(0, 255);

void setup () {
  music = new SoundFile(this, "maydaypartyanimallive.mp3");
  //music.loop();
  size(400,500); 
  
  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
}


void draw () {
  if (myPort.available() >0) {
   val = myPort.read(); 
  }
  
  if (val == 0 || val == 1){
    buttonVal = val;
  } else {
    potVal = val;
  }
  
    if (buttonVal== 1) {
    background (0, 255, 0);
  } else {
    background (0, 0, 255);
  }
  
    fill(potVal, 23, 41);
    rect(103, potVal, 120, potVal);
    rect(103, potVal, 120, 123);
    
    fill(0, 255, 11);
    triangle(40, 150, potVal, 180, 160, 199);
    
    fill(11, potVal, 50);
    ellipse(125, 220, 30, 30);
    ellipse(potVal, 220, 30, potVal);
    println ("val:" + val);
    println ("potVal:" + potVal);
    println ("buttonVal:" + buttonVal);
}
