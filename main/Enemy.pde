class Enemy {
  Point cornerOne = new Point(0,0);
  Point cornerTwo = new Point(0,0);
  Point cornerThree = new Point(0,0);
  float coordX;
  float coordY;
  public Enemy(float tempX1, float tempY1){
    coordX = tempX1;
    coordY = tempY1;
  }
  
  public void drawShape(){
    PImage enemy;
    enemy = loadImage("enemy.png");
    image(enemy, coordX,coordY);
  }
  

}
