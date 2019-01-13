class StartMenu{
  
  public void initiate (){
    
  background(world);
  textSize(36);
  textAlign(CENTER);
  cursor(HAND);
  
  image(world, x, 0);
  image(world, x + world.width, 0);
  x--;
  if (x < -world.width) {
    x = 0;
  }
  
  
  
  for(int i = 0; i < xPosition.length; i++) {
    
    fill(138,7,7);
    ellipse(xPosition[i], yPosition[i], flakeSize[i], flakeSize[i]);
    
    if(direction[i] == 0) {
      xPosition[i] += map(flakeSize[i], minFlakeSize, maxFlakeSize, .01, .05);
    } else {
      xPosition[i] -= map(flakeSize[i], minFlakeSize, maxFlakeSize, .01, .05);
    }
    
    yPosition[i] += flakeSize[i] + direction[i]; 
    
    if(xPosition[i] > width + flakeSize[i] || xPosition[i] < -flakeSize[i] || yPosition[i] > height + flakeSize[i]) {
      xPosition[i] = random(0, width);
      yPosition[i] = -flakeSize[i];
    }
  }
  image(blud,20,0);
  button.draw();
    
    
  }
  
  
  
  
  
  
  
}
