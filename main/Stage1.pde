
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
    
    
    
    player.move();
    for(int i = 0; i < grounds.size(); i++){
      grounds.get(i).drawShape();
      grounds.get(i).collidePlayer();
    }
    player.display();
    System.out.println(player.origin.x);
    image(overlay, 0, 0);
    

  }
}
