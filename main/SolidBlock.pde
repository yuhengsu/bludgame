class SolidBlock {
  float coordX, coordY, sizeX, sizeY;
  int colour;
  
  public SolidBlock(float tempCoordX, float tempCoordY, float tempSizeX, float tempSizeY, int tempColour){
    coordX = tempCoordX;
    coordY = tempCoordY;
    sizeX = tempSizeX;
    sizeY= tempSizeY;
    colour = tempColour;
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
