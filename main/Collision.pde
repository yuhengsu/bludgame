class Collision {
  
  Point speed, obj1, obj2, size1, size2;
  
  /*
   *
   * speed = obj1 speed(x, y)
   * obj1 = object 1 coordinates (moving)
   * obj2 = object 2 coordinates (still)
   * size1 = object 1 size
   * size2 = object 2 size
   *
   */
   
  boolean checkInside(Point obj1, Point size1, Point obj2, Point size2, Point speed) {
    float deltaX = obj1.x + speed.x;
    float deltaY = obj1.y + speed.y;
    if (deltaX >= obj2.x - size2.x/2 - size1.x/2 && deltaX <= obj2.x + size2.x/2 + size1.x/2 &&
      deltaY >= obj2.y - size2.y/2 - size1.y/2 && deltaY <= obj2.y + size2.y/2 + size1.y/2) {
      return true;
    }
    else {
      return false;
    }
  }
  
//////////////////////////////////////////////////
//////////////////////////////////////////////////
  boolean checkTop(Point obj1, Point size1, Point obj2, Point size2, Point speed) {
    float deltaY = obj1.y + speed.y;
    if (deltaY >= obj2.y - size2.y/2 - size1.y/2 && obj1.y <= obj2.y - size2.y/2 /* - size1.y/2*/ && speed.y >= 0) {
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
    if (deltaY <= obj2.y + size2.y/2 + size1.y/2 && obj1.y >= obj2.y + size2.y/2 /* + size1.y/2*/ && speed.y <= 0) {
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
    if (deltaX >= obj2.x - size2.x/2 - size1.x/2 && obj1.x <= obj2.x - size2.x/2) {
      return true;
    }
    else {
      return false;
    }
  }
//////////////////////////////////////////////////
//////////////////////////////////////////////////
  boolean checkRight(Point obj1, Point size1, Point obj2, Point size2, Point speed) {
    float deltaX = obj1.x + speed.x;
    if (deltaX <= obj2.x + size2.x/2 + size1.x/2 && obj1.x >= obj2.x + size2.x/2) {
      return true;
    }
    else {
      return false;
    }
  }
}
