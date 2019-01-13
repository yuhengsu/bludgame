class Physics {
  Point speed;
  float gravity, topSpeed, acceleration, drag;
  Physics(){
    speed = new Point(0, 0);
    gravity = 0.2;
    topSpeed = 0.6;
    acceleration = 0.3;
    drag = 0.2;
  }
}
