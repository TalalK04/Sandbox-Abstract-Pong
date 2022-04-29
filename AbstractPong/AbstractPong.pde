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
  for (Shape s : shapes) {
    s.draw();
  }
  //shapes.get(i).draw();
}//end draw

void keyPressed() {
  //Note: .remove & .add combined in .set 
  //LeftPaddle (0)
  if (key == CODED && key == 'W' || key == 'w') {
    //shapes.get(0)
    Rectangle paddleLeft = new Rectangle (shapes.get(0).x, shapes.get(0).y, shapes.get(0).w, shapes.get(0).h, shapes.get(0).DayModeGetter(), shapes.get(0).restNightModeGetter)

    paddleLeft.moveUp();
    shapes.set(0, paddleLeft);
  }//end LeftUp
  if (key == CODED && key == 'S' || key == 's') {
    .moveDown();
    shapes.set(0, ???);
  }//end LeftDown
  if (key == CODED && key == 'D' || key == 'D') {
    .paddleStop();
    shapes.set(0, ???);
  }//end LeftStop
  //RightPaddle (1)
  if (key == CODED && keyCode == UP) {
    shapes.set(1, ???);
  }
  if (key == CODED && keyCode == DOWN) {
    shapes.set(1, ???);
  }
  if (key == CODED && keyCode == LEFT) {
    shapes.set(1, ???);
  }
}//end keyPressed

void mousePressed() {
  //Note, trigger: this trigger will work anytime, actual trigger should be after celebration is complete
  //Be creative on your Pong BALL Triggers
  shapes.remove(2);
  int yDiameter = appWidth*1/30;
  int xDiameter = appWidth*1/30;
  int colourDayBall = color(int (random(100, 255)), int (random(50, 255)), int (random(175, 255)));
  int colourNightBall = color(int (random(100, 255)), int (random(50, 255)), 0);
  Circle c = new Circle(appWidth*1/2, appHeight*1/2, xDiameter, yDiameter, colourDayBall, colourNightBall);
  shapes.add(2, c);//Replace BALL Element Hardcoded into void draw()
}//end mousePressed

//END MAIN (Driver) Program
