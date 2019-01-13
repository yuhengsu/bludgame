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
    if (!bottomCollide)
      origin.y += movement.speed.y;
    movement.speed.y += movement.gravity;
   
    
    movement.gravity = 0.2;
    movement.speed.y = constrain(movement.speed.y, -25, 25);
    
    if (keys.contains(LEFT)) {
      //movement.speed.x -= movement.acceleration;
      //movement.speed.x = constrain(movement.speed.x, -movement.topSpeed, 0);
      movement.speed.x = -3;
      
      //if (leftCollide) movement.speed.x = 0;
    }    
    else if (keys.contains(RIGHT)) {
      constrain(movement.speed.x, -3, 0);
      //movement.speed.x += movement.acceleration;
      //movement.speed.x = constrain(movement.speed.x, 0, movement.topSpeed);
      //if (rightCollide) movement.speed.x = 0;
      movement.speed.x = 3;
    } else {
      movement.speed.x *= 0.85;
    }
    
    constrain(movement.speed.x, -3, 3);
    origin.x += movement.speed.x; 
    System.out.println(leftCollide);
    
    if (keys.contains(UP) && !bottomCollide) {
      if (!jumping){
        movement.speed.y = -6.5;
        jumping = true;
      }
    }
    
    if (topCollide) this.movement.gravity = 0;
    System.out.print("\n[" + movement.speed.x + "|" + movement.topSpeed);
    
    origin.x = constrain(origin.x, 0, 1150);
    origin.y = constrain(origin.y, 0, 450);
  }
}
