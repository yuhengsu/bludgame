//////////////////////////////////////////////////
// This class has the collision detection functions that other classes use in order to effect player or boxes
//////////////////////////////////////////////////

class Collision {
  
  Point speed, x, y;
  
  //////////////////////////////////////////////////
  Collision() {
  }
//////////////////////////////////////////////////
//////////////////////////////////////////////////

  
  boolean checkInside(Point x, Point y, Point speed) {
    float deltaX = x1 + xspeed;
    float deltaY = y1 + yspeed;
    if (deltaX >= x2 - xsize2/2 - xsize1/2 && deltaX <= x2 + xsize2/2 + xsize1/2 &&
      deltaY >= y2 - ysize2/2 - ysize1/2 && deltaY <= y2 + ysize2/2 + ysize1/2) {
      return true;
    }
    else {
      return false;
    }
  }
  
//////////////////////////////////////////////////
//////////////////////////////////////////////////
  boolean checkTop(float x1, float y1, float xsize1, float ysize1, float yspeed, float xspeed, 
  float x2, float y2, float xsize2, float ysize2) {
    float deltaY = y1 + yspeed;
    if (deltaY >= y2 - ysize2/2 - ysize1/2 && y1 <= y2 - ysize2/2 /* - ysize1/2*/ && yspeed >= 0) {
      return true;
    }
    else {
      return false;
    }
  }
//////////////////////////////////////////////////
//////////////////////////////////////////////////
  boolean checkBottom(float x1, float y1, float xsize1, float ysize1, float yspeed, float xspeed, 
  float x2, float y2, float xsize2, float ysize2) {
    float deltaY = y1 + yspeed;
    if (deltaY <= y2 + ysize2/2 + ysize1/2 && y1 >= y2 + ysize2/2 /* + ysize1/2*/ && yspeed <= 0) {
      return true;
    }
    else {
      return false;
    }
  }
//////////////////////////////////////////////////
//////////////////////////////////////////////////
  boolean checkLeft(float x1, float y1, float xsize1, float ysize1, float yspeed, float xspeed, 
  float x2, float y2, float xsize2, float ysize2) {
    float deltaX = x1 + xspeed;
    if (deltaX >= x2 - xsize2/2 - xsize1/2 && x1 <= x2 - xsize2/2) {
      return true;
    }
    else {
      return false;
    }
  }
//////////////////////////////////////////////////
//////////////////////////////////////////////////
  boolean checkRight(float x1, float y1, float xsize1, float ysize1, float yspeed, float xspeed, 
  float x2, float y2, float xsize2, float ysize2) {
    float deltaX = x1 + xspeed;
    if (deltaX <= x2 + xsize2/2 + xsize1/2 && x1 >= x2 + xsize2/2) {
      return true;
    }
    else {
      return false;
    }
  }
}
