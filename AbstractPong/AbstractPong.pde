//Global Variables & Other Items (Classes)
Circle c;
Rectangle rLeft;
Rectangle rRight;

void setup() {
  size(1200, 1000);
  display();
  int yDiameter = appWidth*1/30;
  int xDiameter = appWidth*1/30;
  int rectWidth = appWidth*1/40;
  int rectHeight = appHeight*1/2;
  c = new Circle(appWidth*1/2, appHeight*1/2, xDiameter, yDiameter);
  rLeft = new Rectangle(appWidth*1/40, appHeight*1/4, rectWidth, rectHeight);
  rRight = new Rectangle(appWidth*38/40, appHeight*1/4, rectWidth, rectHeight);
}//end setup

void draw() {
  background(0);
  
  c.draw();
  rLeft.draw();
  rRight.draw();
}//end draw

void keyPressed() {
}//end keyPressed

void mousePressed() {
}//end mousePressed

//END MAIN (Driver) Program
