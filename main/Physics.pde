class Physics {
  Point speed;
  float gravity, topSpeed, acceleration, drag;
  Physics(){
    speed = new Point(0, 0);
    gravity = 0.5;
    topSpeed = 30;
    acceleration = 1;
    drag = 0.3;
  }
}
