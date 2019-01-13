class Player{

  Point origin, size;
  Physics movement;
  
  Player(Point origin, Point size, Point speed){
    this.origin = new Point();
    this.size = new Point();
    this.origin = origin;
    this.size = size;
    this.movement = new Physics();
    this.movement.speed = speed;
  }
  
  void display() {
    fill(255);
    rect(origin.x, origin.y, 50, 50, 16, 16, 4, 4);
  }
  
  void move() {
    origin.y += movement.speed.y;
    movement.speed.y += movement.gravity;
    origin.x += movement.speed.x;
    
    
    movement.speed.y = constrain(movement.speed.y, -25, 25);
    
    if (keys.contains(LEFT)) {
      movement.speed.x -= movement.acceleration;
    } else {if (movement.speed.x < 0){movement.speed.x += movement.drag;
                movement.speed.x = constrain(movement.speed.x, -movement.topSpeed, 0);}}
    
    if (keys.contains(RIGHT)) {
      movement.speed.x += movement.acceleration;
    } else {if (movement.speed.x > 0){movement.speed.x -= movement.drag;
                movement.speed.x = constrain(movement.speed.x, 0, movement.topSpeed);}}
      
    if (keys.contains(UP)) {
      movement.speed.y = -5;
    }
  
    
    origin.x = constrain(origin.x, 0, 1150);
    origin.y = constrain(origin.y, 0, 450);
  }
}
