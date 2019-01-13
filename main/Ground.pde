class Ground extends SolidBlock {
  public Ground(float tempCoordX, float tempCoordY, float tempSizeX, float tempSizeY){
    super(tempCoordX,tempCoordY,tempSizeX,tempSizeY, 0);
  }
  
  public void drawShape(){
    fill(colour);
    rect(origin.x, origin.y, size.x, size.y);
  }
}
