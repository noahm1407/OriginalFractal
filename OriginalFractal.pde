public int a = 90;
public int b = 50;
public int c = 250;
public void setup() {
  size(500, 500);
}
public void draw() {
  background(0);
  myFractal(250, 250, 250);
}
public void myFractal (int x, int y, int r) {
  ellipse(x, y, r, r);
  if (r > 10) {
    fill(a,b,c);
    stroke(255);
    myFractal(x, y, r/2);
    myFractal(x+r/2, y, r/2);
    myFractal(x-r/2, y, r/2);
    myFractal(x, y-r/2, r/2);
    myFractal(x, y+r/2, r/2);
  }
}
public void mousePressed(){
  if (mouseButton == LEFT){
    a = 65;
    b = 202;
    c = 350;
  }
  if (mouseButton == RIGHT){
    a = 90;
    b = 50;
    c = 250;
  }
}
