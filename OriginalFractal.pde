int w=0;
public void setup()
{
  background(0);
  size(700, 700);
}
public void draw()
{
  myFractal (350, 350, 300+w, 700+w, 5);
  w+=10;

}
public void myFractal(float x, float y, float radius1, float radius2, int npoints)
{
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  strokeWeight(.5);
  ellipse(x, y, radius2, radius2);
  if(radius2>20){
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    myFractal(x + cos(a) * radius2/2, y + sin(a) * radius2/2, radius1/2, radius2/2, 5);
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1/2;
    sy = y + sin(a+halfAngle) * radius1/2;
    vertex(sx, sy);
  }
  endShape(CLOSE);
  }
}
