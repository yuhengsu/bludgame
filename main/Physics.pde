public class Physics {
  Point speed;
  float gravity, topSpeed, acceleration, drag;
  Physics(){
    speed.x = 0;
    speed.y = 0;
    gravity = -9.8;
    topSpeed = 30;
    acceleration = 8;
    drag = 6;
  }
}
