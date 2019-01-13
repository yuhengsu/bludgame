class Stage1{
  ArrayList<Ground> grounds = new ArrayList<Ground>();
  public Stage1(){
    grounds.add(new Ground(0,275,150,100)); // 1
    grounds.add(new Ground(150,325,150,15)); // 3
    grounds.add(new Ground(0,470,650,30)); // 2
    grounds.add(new Ground(400,275,75,30)); // 4
    grounds.add(new Ground(475,275,250,120)); //6
    grounds.add(new Ground(375,380,100,15)); //10
    grounds.add(new Ground(650,395,550,105)); //7
    grounds.add(new Ground(850,345,100,50)); //8
    grounds.add(new Ground(1050,370,150,25));
  }  
  
  public void initiate(){
    for(int i = 0; i <= grounds.size() - 1; i++){
      grounds.get(i).drawShape();
    }
  }
}
