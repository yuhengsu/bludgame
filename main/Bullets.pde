class Bullet{
  Point coord,size;
  public Bullet(){
    coord = new Point(player.origin.x,player.origin.y);
    size = new Point(3,2);
  }
  
  public void drawShape(){
    fill(0);
    rect(coord.x,coord.y,size.x,size.y);
  }
  
  void move() {
  
  }
}
