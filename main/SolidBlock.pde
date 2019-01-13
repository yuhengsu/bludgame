import Point;

class SolidBlock {
  float coordX, coordY, sizeX, sizeY;
  ArrayList<Point> corners = new ArrayList<Point>();
  int colour;
  static float offset = 0.1;
  
  public SolidBlock(float tempCoordX, float tempCoordY, float tempSizeX, float tempSizeY, int tempColour){
    coordX = tempCoordX;
    coordY = tempCoordY;
    sizeX = tempSizeX;
    sizeY= tempSizeY;
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
  
  public void setCoordX(float tempCoordX){
    coordX = tempCoordX;
  }
  
  public void setCoordY(float tempCoordY){
    coordY = tempCoordY;
  }
  
  public void setSizeX(float tempSizeX){
    sizeX = tempSizeX;
  }
  
  public void setSizeY(float tempSizeY){
    sizeY = tempSizeY;
  }
  
  public float getCoordX(){
      return coordX;
  }
  
  public float getCoordY(){
    return coordY;
  }
  
  public float getSizeX(){
    return sizeX;
  }
  
  public float getSizeY(){
    return sizeY;
  }
  
}
