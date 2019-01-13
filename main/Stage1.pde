
class Stage1 {

  ArrayList<Ground> grounds = new ArrayList<Ground>();
  Torch light = new Torch();
  boolean bullet = false;
  Bullets bull;
  Enemy enemy = new Enemy(600,115);
  public Stage1(){
    
    grounds.add(new Ground(0,255,150,85)); // 1
    grounds.add(new Ground(150,255,150,15)); // 3
    grounds.add(new Ground(0,420,650,130)); // 2
    grounds.add(new Ground(400,165,75,30)); // 4
    grounds.add(new Ground(475,165,250,200)); //6
    grounds.add(new Ground(325,330,175,35)); //10
    grounds.add(new Ground(650,275,550,225)); //7
    grounds.add(new Ground(850,225,100,50)); //8
    grounds.add(new Ground(1050,250,150,25)); //9
    grounds.add(new Ground(550,0,100,110)); //5
  
  }  
  
  public void initiate(){
    PImage background, overlay;
    background = loadImage("BACKGROUND.jpg");
    overlay = loadImage("overlay.png");
    image(background, 0, 0);
    light.drawShape();
    
    pg.beginDraw();
    fill(0);
    rect(0,0,1200,500);
    fill(255,255,255,255);
    stroke(0,0,0,0);
    ellipse(player.origin.x + 25, player.origin.y + 25, 60,60);
    ellipse(player2.origin.x + 25, player2.origin.y + 25, 60,60);
    float angle =atan2(-(mouseY - player.origin.y - 25),(mouseX - player.origin.x - 25));
    if (angle < 0) {
      angle += PI*2;
    }
    pushMatrix();
    translate(player.origin.x + 25, player.origin.y + 25);
    rotate(-angle);
    quad(-5, -5, 265, -60, 265, 60, 5, 5);
    popMatrix();
    
    //quad(125,10,70,170,190,170,135,10);
    if (keys.contains(DOWN)){
      System.out.println("DOWN");
      if (!bullet)
        bull = new Bullets();
        bullet = true;
    }
    col.resetCollision();
    player.move();   
    player2.move();
    if (bullet) {
      bull.move();
      bull.drawShape();
    if (bull.coord.x > 550 + player2.origin.x) bullet = false;}
     
    
    
    pg.endDraw();
    for(int i = 0; i < grounds.size(); i++){
      grounds.get(i).drawShape();
      grounds.get(i).collidePlayer(player);
      grounds.get(i).collidePlayer(player2);
    }
    
    enemy.drawShape();
    pg.mask(background);   
    image(pg,0,0);
    player.display();
    player2.display();
    System.out.println(player.origin.x + "|" + player.origin.y);
    image(overlay, 0, 0);
    

  }
}
