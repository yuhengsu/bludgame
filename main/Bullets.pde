class Bullets{
  Point coord,size;
  
  Bullets(){
    coord = new Point(player2.origin.x + 25,player2.origin.y + 25);
    size = new Point(3,2);
  }
  
  public void drawShape(){
    fill(100, 210, 67);
    rect(this.coord.x + 50, coord.y,size.x,size.y);
    fill(255,255,255,255);
    stroke(0,0,0,0);
    ellipse(this.coord.x + 50, coord.y, 7, 7);
  }
  
  void move() {
    this.coord.x += 8;
    this.coord.y += random(-1, 2);
  }
}
