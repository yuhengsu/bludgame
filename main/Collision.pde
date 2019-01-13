class Collision {
   
  /*
   *
   * speed = obj1 speed(x, y)
   * obj1 = object 1 coordinates (moving)
   * obj2 = object 2 coordinates (still)
   * size1 = object 1 size
   * size2 = object 2 size
   *
   */
   
  boolean cIn(Point arr[]){
    return checkInside(arr[0], arr[1], arr[2], arr[3], arr[4]);
  }
  
  boolean cTop(Point arr[]){
    return checkTop(arr[0], arr[1], arr[2], arr[3], arr[4]);
  }
  
  boolean cBot(Point arr[]){
    return checkBottom(arr[0], arr[1], arr[2], arr[3], arr[4]);
  }
  
  boolean cLe(Point arr[]){
    return checkLeft(arr[0], arr[1], arr[2], arr[3], arr[4]);
  }
  
  boolean cRi(Point arr[]){
    return checkRight(arr[0], arr[1], arr[2], arr[3], arr[4]);
  }
   
  boolean checkInside(Point obj1, Point size1, Point obj2, Point size2, Point speed) {
    float deltaX = obj1.x + size1.x;
    float deltaY = obj1.y + size1.y;
    if (deltaX >= obj2.x && obj1.x <= obj2.x + size2.x &&
      deltaY >= obj2.y && obj1.y <= obj2.y + size2.y) {
      return true;
    } else {
      return false;
    }
  }
  
//////////////////////////////////////////////////
//////////////////////////////////////////////////
  boolean checkTop(Point obj1, Point size1, Point obj2, Point size2, Point speed) {
    float deltaY = obj1.y + size1.y + speed.y;
    if (deltaY >= obj2.y && obj1.y < obj2.y && speed.y >= 0) {
      return true;
    }
    else {
      return false;
    }
  }
//////////////////////////////////////////////////
//////////////////////////////////////////////////
  boolean checkBottom(Point obj1, Point size1, Point obj2, Point size2, Point speed) {
    float deltaY = obj1.y + speed.y;
    if (deltaY <= obj2.y + size2.y && obj1.y >= obj2.y && speed.y <= 0) {
      return true;
    }
    else {
      return false;
    }
  }
//////////////////////////////////////////////////
//////////////////////////////////////////////////
  boolean checkLeft(Point obj1, Point size1, Point obj2, Point size2, Point speed) {
    float deltaX = obj1.x + speed.x;
    if (deltaX <= obj2.x + size2.x && obj1.x - 10 > obj2.x + size2.x) {
      
      return true;
    }
    else {
      return false;
    }
  }
//////////////////////////////////////////////////
//////////////////////////////////////////////////
  boolean checkRight(Point obj1, Point size1, Point obj2, Point size2, Point speed) {
    float deltaX = obj1.x + size1.x + speed.x;
    if (deltaX >= obj2.x && obj1.x + size1.x < obj2.x + 10) {
      
      return true;
    }
    else {
      return false;
    }
  }
  
  void resetCollision() {
    topCollide = false;
    bottomCollide = false;
    leftCollide = false;
    rightCollide = false;
  }
}
