Stage1 stage1 = new Stage1();
Stage2 stage2 = new Stage2();
Stage3 stage3 = new Stage3();

void setup(){
  smooth();
  size(1200,500);
  frameRate(60);
}

void draw(){
  stage3.initiate();

}
