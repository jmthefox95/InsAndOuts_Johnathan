import processing.sound.*;

// Johnathan Mahones
// Random Color House
// press "a" and "p" keys and mouse buttons to change colors

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
  
    rect(103, 200, 120, 123);
    rect(103, 200, 120, 123);
    triangle(40, 150, potVal, 180, 160, 199);
    ellipse(125, 220, 30, 30);
    ellipse(178, 220, 30, 30);
    println ("val:" + val);
    println ("potVal:" + potVal);
    println ("buttonVal:" + buttonVal);
}
