// Johnathan Mahones

float r = random(0, 255);
float g = random(0, 255);
float b = random(0, 255);

void setup () {
  size(400,500);
}


void draw () {
    rect(103, 200, 120, 123);
    rect(103, 200, 120, 123);
    triangle(40, 150, 280, 180, 160, 199);
    ellipse(125, 220, 30, 30);
    ellipse(178, 220, 30, 30);
}

void mousePressed() {
    if (mousePressed = true){
    fill (random(r), random(g), random(b));
    rect(103, 200, 120, 123);
  } else {
    fill(random(r), random(g), random(b));
    rect(103, 200, 120, 123);
  }

  if (mousePressed = true) {
    fill(random(r), random(g), random(b));
    triangle(40, 150, 280, 180, 160, 199);
  } else {
  fill(random(r), random(g), random(b));
  triangle(40, 150, 280, 180, 160, 199);
  }

  if (mousePressed = true){
    fill (random(r), random(g), random(b));
    ellipse(125, 220, 30, 30);
    ellipse(178, 220, 30, 30);
  } else {  
  fill(random(r), random(g), random(b));
  ellipse(125, 220, 30, 30);
  ellipse(178, 220, 30, 30);
  }
}

void keyPressed() {
  if (key == 'P' | key == 'p') {
    fill(random(r), random(g), random(b));
    ellipse(275, 250, 140, 140);
  } else if (key == 'A' | key == 'a') {
    fill(random(r, 255), random(g, 255), random(b,255));
    ellipse (275, 250, 140, 140);
  } else {
  fill(r, g, b);
  ellipse(145, 246, 50, 100);
  }
}
