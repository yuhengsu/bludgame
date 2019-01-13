class Stage3{
  ArrayList<Ground> grounds = new ArrayList<Ground>();
  Enemy enemy = new Enemy(100,0,80,60,120,60);
  public Stage3(){
    grounds.add(new Ground(0,100,800,25)); //1
    grounds.add(new Ground(0,250,300,50)); //2
    grounds.add(new Ground(0,370,200,25)); //3
    grounds.add(new Ground(0,470,1200,30)); //4
    grounds.add(new Ground(840,305,25,70)); //6
    grounds.add(new Ground(900,375,1200,40)); //7
    grounds.add(new Ground(1100,305,1200,25)); //8
    grounds.add(new Ground(440,385,315,20)); //9
    grounds.add(new Ground(250,125,475,50)); //10
    grounds.add(new Ground(400,175,40,230));
    grounds.add(new Ground(440,290,50,25));
    grounds.add(new Ground(655,285,50,25));
    grounds.add(new Ground(610,175,115,50)); //5
    grounds.add(new Ground(705,225,20,85)); //6
    grounds.add(new Ground(780,125,20,70)); //6
    grounds.add(new Ground(800,170,50,25)); //6
    grounds.add(new Ground(270,300,30,90)); //6
    grounds.add(new Ground(950,200,1200,35)); //11


  }  
  
  public void initiate(){
    for(int i = 0; i <= grounds.size() - 1; i++){
      grounds.get(i).drawShape();
    }
    enemy.drawShape();
  }
}
