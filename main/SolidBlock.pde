class SolidBlock {
  Point origin = new Point();
  Point size = new Point();
  ArrayList<Point> corners = new ArrayList<Point>();
  int colour;
  float offset = 0.1;
  
  public SolidBlock(float tempCoordX, float tempCoordY, float tempSizeX, float tempSizeY, int tempColour){
    origin.x = tempCoordX;
    origin.y = tempCoordY;
    size.x = tempSizeX;
    size.y = tempSizeY;
    colour = tempColour;
    
    ///////////////////////////[CORNERS FOR RAYS]////////////////////////////////////////
    corners.add(new Point(tempCoordX+offset, tempSizeX));
    corners.add(new Point(tempCoordX-offset, tempCoordY-offset));
    corners.add(new Point(tempCoordX-offset + tempSizeX, tempCoordY+offset));
    corners.add(new Point(tempCoordX+offset + tempSizeX, tempCoordY-offset));
    corners.add(new Point(tempCoordX-offset + tempSizeX, tempCoordY-offset + tempSizeY));
    corners.add(new Point(tempCoordX+offset + tempSizeX, tempCoordY+offset + tempSizeY));
    corners.add(new Point(tempCoordX+offset, tempCoordY-offset + tempSizeY));
    corners.add(new Point(tempCoordX-offset, tempCoordY+offset + tempSizeY));
  }
  
  void collidePlayer(){
    Point arr[] = {player.origin, player.size, origin, size, player.movement.speed};
    if (col.cIn(arr)) {
      if (col.cTop(arr)) {
        topCollide = true;
        jumping = false;
        System.out.print("coll");
        if (player.origin.y < origin.y - player.size.y * 0.9) player.origin.y = origin.y - player.size.y;
        if (player.movement.speed.y > 0) player.movement.speed.y = 0;
      } if (col.cBot(arr)) {
        bottomCollide = true;
        if (player.origin.y < origin.y + size.y
         && player.origin.y + player.size.y > origin.y + size.y) player.origin.y = origin.y + size.y;
        
        player.movement.speed.y = 0;
      } if (col.cLe(arr)) {
        System.out.println("LEFT");
        leftCollide = true;
        player.origin.x = origin.x + size.x + player.size.x;
        
      } if (col.cRi(arr)) {
        rightCollide = true;
        player.origin.x = origin.x - player.size.x;
      } 
    }
  }
   
}
