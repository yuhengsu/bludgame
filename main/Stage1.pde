
class Stage1 {

  ArrayList<Ground> grounds = new ArrayList<Ground>();
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
    
    
    
    
    pg.beginDraw();
    fill(0);
    rect(0,0,1200,500);
    fill(255,255,255,255);
    float angle =atan2(-(mouseY- 200),(mouseX - 200));
    if (angle < 0) {
      angle += PI*2;
    }
    pushMatrix();
    translate(player.origin.x + 25, player.origin.y + 25);
    rotate(-angle);
    quad(-5, -5, 205, -60, 205, 60, 5, 5);
    popMatrix();
    //quad(125,10,70,170,190,170,135,10);
       
    pg.endDraw();
    for(int i = 0; i < grounds.size(); i++){
      grounds.get(i).drawShape();
      grounds.get(i).collidePlayer();
    }
    
    player.move();
    pg.mask(background);   
    image(pg,0,0);
    player.display();
    System.out.println(player.origin.x + "|" + player.origin.y);
    //image(overlay, 0, 0);
    

  }
}
