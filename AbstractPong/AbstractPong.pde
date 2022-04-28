//Global Variables & Other Items (Classes)
ArrayList<Shape> shapes = new ArrayList<Shape>();
//Circle c;
//Rectangle rLeft;
//Rectangle rRight;

void setup() {
  size(1200, 1000);
  display();
  //Local Variables & Object Setup
  int yDiameter = appWidth*1/30;
  int xDiameter = appWidth*1/30;
  int rectWidth = appWidth*1/40;
  int rectHeight = appHeight*1/2;
  int colourDayRectLeft = color(int (random(100, 255)), int (random(50, 255)), int (random(175, 255)));
  int colourNightRectLeft = color(int (random(100, 255)), int (random(50, 255)), 0);
   int colourDayRectRight = color(int (random(100, 255)), int (random(50, 255)), int (random(175, 255)));
  int colourNightRectRight = color(int (random(100, 255)), int (random(50, 255)), 0);
  int colourDayBall = color(int (random(100, 255)), int (random(50, 255)), int (random(175, 255)));
  int colourNightBall = color(int (random(100, 255)), int (random(50, 255)), 0);
  Circle c = new Circle(appWidth*1/2, appHeight*1/2, xDiameter, yDiameter, colourDayBall, colourNightBall);
  Rectangle rLeft = new Rectangle(appWidth*1/40, appHeight*1/4, rectWidth, rectHeight, colourDayRectLeft, colourNightRectLeft);
  Rectangle rRight = new Rectangle(appWidth*38/40, appHeight*1/4, rectWidth, rectHeight, colourDayRectRight, colourNightRectRight);
  //Shapes Global Variable, Shapes will not change
  shapes.add(rLeft); //Element 0, Left Paddle
  shapes.add(rRight); //Element 1, Right Paddle
  shapes.add(c); //Element 2, Pong BALL

  //Reminder: ALL local objects are deleted, "Garbage Heap collected"
}//end setup

void draw() {
  background(0);
  for(Shape s : shapes){
    s.draw();
  }
    //shapes.get(i).draw();
  
}//end draw

void keyPressed() {
}//end keyPressed

void mousePressed() {
}//end mousePressed

//END MAIN (Driver) Program
