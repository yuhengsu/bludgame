class Enemy {
  Point cornerOne = new Point(0,0);
  Point cornerTwo = new Point(0,0);
  Point cornerThree = new Point(0,0);
  public Enemy(float tempX1, float tempY1, float tempX2, float tempY2, float tempX3, float tempY3){
    cornerOne.x = tempX1;
    cornerTwo.x = tempX2;
    cornerThree.x = tempX3;
    cornerOne.y = tempY1;
    cornerTwo.y = tempY2;
    cornerThree.y = tempY3;
  }
  
  public void drawShape(){
    fill(155);
    triangle(cornerOne.x, cornerOne.y, cornerTwo.x, cornerTwo.y, cornerThree.x, cornerThree.y);
    float bottomAvg = (cornerTwo.x + cornerThree.x)/2;
    float leg1 = (cornerTwo.x + bottomAvg)/2;
    float leg2 = (cornerThree.x + bottomAvg)/2;
    line(leg1, cornerTwo.y,leg1,cornerTwo.y + 5);
    line(leg2, cornerThree.y,leg2,cornerThree.y + 5);
    fill(255,0,0);
    ellipse(leg1,(cornerTwo.y+cornerOne.y)/2+3,10,10);
    ellipse(leg2,(cornerTwo.y+cornerOne.y)/2+3,10,10);
  }
  

}
