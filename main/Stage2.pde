class Stage2{
  ArrayList<Ground> grounds = new ArrayList<Ground>();
  public Stage2(){
    grounds.add(new Ground(0,305,100,25)); //1
    grounds.add(new Ground(0,330,75,220)); //2
    grounds.add(new Ground(75,400,155,25)); //3
    grounds.add(new Ground(75,465,900,35)); //4
    grounds.add(new Ground(310,330,80,50)); //5
    grounds.add(new Ground(440,305,25,70)); //Gate 1
    grounds.add(new Ground(440,375,365,20)); //6
    grounds.add(new Ground(705,305,100,75)); //7
    grounds.add(new Ground(440,285,365,20)); //8
    grounds.add(new Ground(340,225,50,50)); //9
    grounds.add(new Ground(465,175,50,50)); //10
    grounds.add(new Ground(600,145,50,50)); //11
    grounds.add(new Ground(755,135,50,50)); //12
    grounds.add(new Ground(200,0,1000,25)); //13
    grounds.add(new Ground(975,215,25,70)); //Gate 2
    grounds.add(new Ground(975,25,225,190)); //Block above gate 2
    grounds.add(new Ground(975,285,225,40)); //14
    grounds.add(new Ground(1025,325,175,50)); //15
    grounds.add(new Ground(975,375,225,125)); //16
    grounds.add(new Ground(0,0,200,100)); //17

  }  
  
  public void initiate(){
    for(int i = 0; i <= grounds.size() - 1; i++){
      grounds.get(i).drawShape();
    }
  }
}
