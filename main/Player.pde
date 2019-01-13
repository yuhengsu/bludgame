class Player{

  Point origin, size;
  Physics mov;
  
  
  Player(Point origin, Point size, Point speed){
    this.origin = new Point();
    this.size = new Point();
    this.origin = origin;
    this.size = size;
    this.mov = new Physics();
    this.mov.speed = speed;
  }
  
  void display() {
    PImage C1;
    if (this.mov.speed.x < 0) {
      C1 = loadImage("C1Left.png");
      image(C1, this.origin.x - 22
      , this.origin.y);
    }
    else {
      C1 = loadImage("C1Right.png"); 
      image(C1, this.origin.x, this.origin.y);
    }
    //fill(255);
    //rect(this.origin.x, this.origin.y, 50, 50, 16, 16, 4, 4);
  }
  
  void move() {
    if (!bottomCollide)
      this.origin.y += this.mov.speed.y;
    this.mov.speed.y += this.mov.gravity;
   
    
    this.mov.gravity = 0.2;
    this.mov.speed.y = constrain(this.mov.speed.y, -25, 25);
    
    if (keys.contains(LEFT)) {
      //this.mov.speed.x -= this.mov.acceleration;
      //this.mov.speed.x = constrain(this.mov.speed.x, -this.mov.topSpeed, 0);
      this.mov.speed.x = -3;
      
      //if (leftCollide) this.mov.speed.x = 0;
    }    
    else if (keys.contains(RIGHT)) {
      constrain(this.mov.speed.x, -3, 0);
      //this.mov.speed.x += this.mov.acceleration;
      //this.mov.speed.x = constrain(this.mov.speed.x, 0, this.mov.topSpeed);
      //if (rightCollide) this.mov.speed.x = 0;
      this.mov.speed.x = 3;
    } else {
      this.mov.speed.x *= 0.85;
    }
    
    constrain(this.mov.speed.x, -3, 3);
    this.origin.x += this.mov.speed.x; 
    System.out.println(leftCollide);
    
    if (keys.contains(UP) && !bottomCollide) {
      if (!jumping){
        this.mov.speed.y = -6.5;
        jumping = true;
      }
    }
    
    if (topCollide) this.mov.gravity = 0;
    System.out.print("\n[" + this.mov.speed.x + "|" + this.mov.topSpeed);
    
    this.origin.x = constrain(this.origin.x, 0, 1150);
    this.origin.y = constrain(this.origin.y, 0, 450);
  }
}
