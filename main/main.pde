Stage1 stage1 = new Stage1();
Stage2 stage2 = new Stage2();

ArrayList keys = new ArrayList();

Player player;
Point playerOrigin, playerSize, speed;

void setup(){
  smooth(2);
  size(1200,500);
  frameRate(60);
  playerOrigin = new Point(0, 0);
  playerSize = new Point(50, 50);
  speed = new Point(0, 0);
  player = new Player(playerOrigin, playerSize, speed);
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
