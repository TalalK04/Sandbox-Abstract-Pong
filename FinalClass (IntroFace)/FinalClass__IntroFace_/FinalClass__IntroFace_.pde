//Gloabl Variables
ArrayList<Shape> shapes = new ArrayList<Shape>();
color white = 255;
//
void setup() {
  size(500, 500);
  //
  float x = width*1/4;
  float y = height*1/4;
  float ptX = width*3/4;
  float ptY = height*1/4;
  float diameter = width*1/5;
  float xDiameter = width*1/10;
  float yDiameter = width*1/5;
  //
  Point p = new Point(x-width*1/16, y);  
  Line l = new Line(x, y, ptX, ptY);  
  Circle c = new Circle(x, y, diameter);  
  Ellipse e = new Ellipse(x, y, xDiameter, yDiameter);
  shapes.add(c);
  shapes.add(l);
  shapes.add(p);
  shapes.add(e);
}//end setup

void draw() {
  background(white);
  for (Shape s : shapes) {
    s.draw();
  }//end FOR
}//end draw

void mousePressed() {
}//end mousePressed

void keyPressed() {
}//end keyPressed
