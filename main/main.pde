Stage1 stage1 = new Stage1();
Stage2 stage2 = new Stage2();
Stage3 stage3 = new Stage3();
boolean jumping;
PGraphics pg;
ArrayList keys = new ArrayList();

Player player;
Collision col;
Point playerOrigin, playerSize, speed;
boolean leftCollide = false, rightCollide = false, topCollide = false, bottomCollide = false;

void setup(){
  smooth(2);
  size(1200,500);
  frameRate(60);
  playerOrigin = new Point(20,100);
  playerSize = new Point(50, 50);
  speed = new Point(0, 0);
  player = new Player(playerOrigin, playerSize, speed);
  col = new Collision();
  pg = createGraphics(1200,500);
}

void draw(){
  stage1.initiate();

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
