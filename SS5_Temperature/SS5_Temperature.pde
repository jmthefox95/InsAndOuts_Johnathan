int [] water = new int[4];
String [] temperature {"is too cold", "needs to be warmer", " is just at the right temperature. :)", " is too hot!! D:"};

int positionWater = 0;
int positionTemperature = 0;

void setup() {
  size (800, 800);
  fill(210, 100, 10);
  
  water[0] = 40
  water[1] = 50
  water[2] = 65
  water[3] = 80
  textSize(50);
  textAlign("CENTER")
}

void draw(){
  background(90);
  text("You are boiling water to cook your pasta! Press the left or right arrow key to get a random result!")
  text("The heat is at " + temperature[positionTemperature] + " degrees.", width/2, height/2);
  text("The water" + water[positionWater] width/2, height/2 + 50);
}

void KeyPressed() {
  if (key == 't'  |  key == 'T')
 positionWater = int(random(0, water.length));
 if (positionTemperature == temperature.length - 1){
   positionWater = 0;
 } else {
   positionWater++;
 }
}
