//start screen things
Button button;
PImage world;
PImage blud;
int quantity = 20;
float[] xPosition = new float[quantity];
float[] yPosition = new float[quantity];
int[] flakeSize = new int[quantity];
int[] direction = new int[quantity];
int minFlakeSize = 1;
int maxFlakeSize = 5;
int x = 0;
int STATE = 0;
///////////////////////////////////////

StartMenu start = new StartMenu();
Stage1 stage1 = new Stage1();
Stage2 stage2 = new Stage2();
Stage3 stage3 = new Stage3();
boolean jumping;
PGraphics pg;
ArrayList keys = new ArrayList();


Player player;
Player2 player2;
Collision col;
Point playerOrigin, playerSize, speed, speed2, player2Origin, player2Size;
boolean leftCollide = false, rightCollide = false, topCollide = false, bottomCollide = false;

void setup(){

  button = new Button(600, 400, "START");
  world = loadImage("world.png");
  blud = loadImage("blud.png");
  smooth();
  frameRate(30);
  
  for(int i = 0; i < quantity; i++) {
    flakeSize[i] = round(random(minFlakeSize, maxFlakeSize));
    xPosition[i] = random(0, width);
    yPosition[i] = random(0, height);
    direction[i] = round(random(0, 1)); 
  }
  

    
  
  
  size(1200,500);
  frameRate(60);
  playerOrigin = new Point(20,100);
  player2Origin = new Point(90,100);
  playerSize = new Point(50, 50);
  player2Size = new Point(90,100);
  speed = new Point(0, 0);
  speed2 = new Point(0,0);
  player = new Player(playerOrigin, playerSize, speed);
  player2 = new Player2(player2Origin, player2Size, speed2);
  col = new Collision();
  pg = createGraphics(1200,500);
}

void draw(){
  if (STATE == 0){
    start.initiate();
  }else if (STATE ==1){
    stage1.initiate();
  }else if (STATE ==2){
    stage2.initiate();
  }else{
    stage3.initiate();
  }

}

void mousePressed(){
  if(button.over()){
    STATE=1;
  }
}

void keyPressed() {
  if (!keys.contains(keyCode)) {
    keys.add(keyCode);
  }
}

void keyReleased() {
  if (keys.contains(keyCode)) {
    keys.remove(keys.indexOf(keyCode));
  }
}
