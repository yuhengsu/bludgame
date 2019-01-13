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
   
}
