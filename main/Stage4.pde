class Stage4{
  ArrayList<Ground> grounds = new ArrayList<Ground>();
  public Stage4(){
    grounds.add(new Ground(375,200,90,25)); //1
    grounds.add(new Ground(875,200,90,25)); //1
    grounds.add(new Ground(300,300,600,50)); //2
    grounds.add(new Ground(0,300,200,25)); //3
    grounds.add(new Ground(1000,150,100,25)); //1
    grounds.add(new Ground(0,470,1200,30)); //4
    grounds.add(new Ground(1000,400,25,100)); //6
    grounds.add(new Ground(200,400,25,100)); //6
    grounds.add(new Ground(0,120,400,25)); //1
    grounds.add(new Ground(455,80,200,25)); //1
    grounds.add(new Ground(705,135,100,25)); //1
    grounds.add(new Ground(440,225,25,50)); //1



  }  
  
  public void initiate(){
    for(int i = 0; i <= grounds.size() - 1; i++){
      grounds.get(i).drawShape();
    }
  }
}
