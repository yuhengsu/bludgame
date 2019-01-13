class Button {
  int x,y;
  String label;
  Button(int x, int y, String label) {
    this.x = x;
    this.y = y;
    this.label = label;
}
  
void draw() {
  fill(255);
  if(over()) {
fill(233,30,37);
}
  text(label, x, y + 20);
}

boolean over() {
  if(mouseX >= x - 55 && mouseY >= y - 12 && mouseX <= x + textWidth(label) - 55 && mouseY <= y + 20) {
return true;
  }
   return false;
  }
}
