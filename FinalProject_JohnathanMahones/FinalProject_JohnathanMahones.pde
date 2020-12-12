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
  
    fill(potVal, 63, 100);
    rect(103, potVal, 120, 123);
    rect(103, 200, 120, 123);
    
    fill(potVal, 75, 11);
    triangle(40, potVal, 280, 180, 160, 199);
    
    fill(potVal, 44, 23);
    ellipse(125, potVal, 30, 30);
    
    fill(potVal, 75, potVal);
    ellipse(potVal, 220, 30, potVal);
    println ("val:" + val);
    println ("potVal:" + potVal);
    println ("buttonVal:" + buttonVal);
}
