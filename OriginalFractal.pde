int w=0;
public void setup()
{
  background(0);
  size(700, 700);
}
public void draw()
{
  myFractal (350, 350, 300, 700, 4);

}
public void myFractal(float x, float y, float radius1, float radius2, int npoints)
{
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  strokeWeight(.5);
  ellipse(x, y, radius2, radius2);
  if(radius2>20){
  //beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    fill(72,209,204,80);
    myFractal(x + cos(a) * radius2/2, y + sin(a) * radius2/2, radius1/2, radius2/2, 4);
    
    //vertex(sx, sy);
    //sx = x + cos(a+halfAngle) * radius1/2;
    //sy = y + sin(a+halfAngle) * radius1/2;
    //fill(72,209,204);
    fill(248,131,121);
    //vertex(sx, sy);
  }
  //endShape(CLOSE);
  }
}
