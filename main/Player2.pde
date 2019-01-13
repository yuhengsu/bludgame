class Player2{

  Point origin, size;
  Physics movement;
  
  
  Player2(Point origin, Point size, Point speed){
    this.origin = new Point();
    this.size = new Point();
    this.origin = origin;
    this.size = size;
    this.movement = new Physics();
    this.movement.speed = speed;
  }
  
  void display() {
    PImage C2;
    if (this.movement.speed.x < 0) {
      C2 = loadImage("C2Left.png");
      image(C2, this.origin.x - 22
      , this.origin.y);
    }
    else {
      C2 = loadImage("C2Right.png"); 
      image(C2, this.origin.x, this.origin.y);
    }
    //fill(255);
    //rect(this.origin.x, this.origin.y, 50, 50, 16, 16, 4, 4);
  }
  
  void move() {
    if (!bottomCollide)
      this.origin.y += this.movement.speed.y;
    this.movement.speed.y += this.movement.gravity;
   
    
    this.movement.gravity = 0.2;
    this.movement.speed.y = constrain(this.movement.speed.y, -25, 25);
    
    if (keys.contains(65)) {
      //this.movement.speed.x -= this.movement.acceleration;
      //this.movement.speed.x = constrain(this.movement.speed.x, -this.movement.topSpeed, 0);
      this.movement.speed.x = -3;
      
      //if (leftCollide) this.movement.speed.x = 0;
    }    
    else if (keys.contains(68)) {
      constrain(this.movement.speed.x, -3, 0);
      //this.movement.speed.x += this.movement.acceleration;
      //this.movement.speed.x = constrain(this.movement.speed.x, 0, this.movement.topSpeed);
      //if (rightCollide) this.movement.speed.x = 0;
      this.movement.speed.x = 3;
    } else {
      this.movement.speed.x *= 0.85;
    }
    
    constrain(this.movement.speed.x, -3, 3);
    this.origin.x += this.movement.speed.x; 
    System.out.println(leftCollide);
    
    if (keys.contains(87) && !bottomCollide) {
      if (!jumping){
        this.movement.speed.y = -6.5;
        jumping = true;
      }
    }
    
    if (topCollide) this.movement.gravity = 0;
    System.out.print("\n[" + this.movement.speed.x + "|" + this.movement.topSpeed);
    
    this.origin.x = constrain(this.origin.x, 0, 1150);
    this.origin.y = constrain(this.origin.y, 0, 450);
  }
}
