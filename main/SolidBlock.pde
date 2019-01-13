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
  
  void collidePlayer(Player player){
    Point arr[] = {player.origin, player.size, origin, size, player.mov.speed};
    if (col.cIn(arr)) {
      if (col.cTop(arr)) {
        topCollide = true;
        jumping = false;
        System.out.print("coll");
        if (player.origin.y < origin.y - player.size.y * 0.9) player.origin.y = origin.y - player.size.y;
        if (player.mov.speed.y > 0) player.mov.speed.y = 0;
      } if (col.cBot(arr)) {
        bottomCollide = true;
        if (player.origin.y < origin.y + size.y
         && player.origin.y + player.size.y > origin.y + size.y) player.origin.y = origin.y + size.y;
        
        player.mov.speed.y = 0;
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
    void collidePlayer(Player2 player2){
    Point arr[] = {player2.origin, player2.size, origin, size, player2.movement.speed};
    if (col.cIn(arr)) {
      if (col.cTop(arr)) {
        topCollide = true;
        jumping = false;
        System.out.print("coll");
        if (player2.origin.y < origin.y - player2.size.y * 0.9) player2.origin.y = origin.y - player2.size.y;
        if (player2.movement.speed.y > 0) player2.movement.speed.y = 0;
      } if (col.cBot(arr)) {
        bottomCollide = true;
        if (player2.origin.y < origin.y + size.y
         && player2.origin.y + player2.size.y > origin.y + size.y) player2.origin.y = origin.y + size.y;
        
        player2.movement.speed.y = 0;
      } if (col.cLe(arr)) {
        System.out.println("LEFT");
        leftCollide = true;
        player2.origin.x = origin.x + size.x + player2.size.x;
        
      } if (col.cRi(arr)) {
        rightCollide = true;
        player2.origin.x = origin.x - player2.size.x;
      } 
    }
  }
   
}
