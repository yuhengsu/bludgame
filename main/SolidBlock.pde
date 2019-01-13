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
        if (player.origin.y - (origin.y - player.size.y) < 10) player.origin.y = origin.y - player.size.y;
        if (player.movement.speed.y > 0) player.movement.speed.y = 0;
      } else if (col.cBot(arr)) {
        player.origin.y = origin.y + size.y + 0.05;
        player.movement.speed.y = 0;
      } else if (col.cLe(arr)) {
        player.origin.x = origin.x + size.x + 0.05;
      } else if (col.cRi(arr)) {
        player.origin.x = origin.x - player.size.x - 0.01;
      } 
    }
  }
   
}
