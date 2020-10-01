void setup () {
  size(400,500);
}

void draw () {
  if (mouseX>90){
    fill (0, 22, 131);
    rect(103, 200, 120, 123);
  } else {
    fill(200, 50, 100);
    rect(103, 200, 120, 123);
  }

  if (mouseX>70) {
    fill(75, 33, 87);
    triangle(40, 150, 280, 180, 160, 199);
  } else {
  fill(100, 91, 80);
  triangle(40, 150, 280, 180, 160, 199);
  }

  if (mouseX>80){
    fill (66, 48, 122);
    ellipse(125, 220, 30, 30);
    ellipse(178, 220, 30, 30);
  } else {  
  fill(0, 255, 255);
  ellipse(125, 220, 30, 30);
  ellipse(178, 220, 30, 30);
  }
}

void keyPressed() {
  if (key == 'P' | key == 'p') {
    fill(58, 99, 233);
    ellipse(275, 250, 140, 140);
  } else if (key == 'A' | key == 'a') {
    fill (64, 88, 100);
    ellipse (275, 250, 140, 140);
  } else {
  fill(211, 23, 30);
  ellipse(145, 246, 50, 100);
  }
}
