//Global Variables & Other Items (Classes)
ArrayList<Shape> shapes = new ArrayList<Shape>();
//Annonoymous Class, one time object
Shape instructions = new Shape (0, 0, 300, 300) {
//Global Variables
//No Constructor Needed
void draw() {
  fill(#FFFFFF); //white
  rect(x, y, w, h); //background for instructions menu
  //Text Code Here
  fill(#FFFFFF); //reset white
}//end draw
//Methods for Possible Text Drawing
}
; //Necessary Code
void setup() {
  size(1200, 1000);
  display();
  //Local Variables & Object Setup
  
  //Instructions, Features, and Hints for Easter Eggs
  shapes.add(instructions); //Element 0
  //Paddles and Ball
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
  shapes.add(rLeft); //Element 1, Left Paddle
  shapes.add(rRight); //Element 2, Right Paddle
  shapes.add(c); //Element 3, Pong BALL

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
  //Instructions: Instructions, Features, and Hints for easter Eggs
    if (key == CODED && key == 'I' || key == 'i') {
      shapes.get(0).draw(); //Annonymous Class
    } 
  //Note: .remove & .add combined in .set 
  
  //LeftPaddleMove (0)
  Rectangle paddleLeft = new Rectangle (shapes.get(1).x, shapes.get(1).y, shapes.get(1).w, shapes.get(1).h, shapes.get(1).DayModeGetter(), shapes.get(1).restNightModeGetter());
    if (key == CODED && key == 'W' || key == 'w') {
    //shapes.get(0)
    paddleLeft.moveUp();
    shapes.set(1, paddleLeft);
  }//end LeftUp
  if (key == CODED && key == 'S' || key == 's') {
    paddleLeft.moveDown();
    shapes.set(1, paddleLeft);
  }//end LeftDown
  if (key == CODED && key == 'D' || key == 'D') {
    paddleLeft.stopPaddle();
    shapes.set(1, paddleLeft);
  }//end LeftStop

  //RightPaddleMove (1)
  Rectangle paddleRight = new Rectangle (shapes.get(2).x, shapes.get(2).y, shapes.get(2).w, shapes.get(2).h, shapes.get(2).DayModeGetter(), shapes.get(2).restNightModeGetter());
    if (key == CODED && keyCode == UP) {
    paddleRight.moveUp();
    shapes.set(2, paddleRight);
  }
  if (key == CODED && keyCode == DOWN) {
    paddleRight.moveDown();
    shapes.set(2, paddleRight);
  }
  if (key == CODED && keyCode == LEFT) {
    paddleRight.stopPaddle();
    shapes.set(2, paddleRight);
  }
}//end keyPressed

void mousePressed() {
  //Note, trigger: this trigger will work anytime, actual trigger should be after celebration is complete
  //Be creative on your Pong BALL Triggers
  shapes.remove(3);
  int yDiameter = appWidth*1/30;
  int xDiameter = appWidth*1/30;
  int colourDayBall = color(int (random(100, 255)), int (random(50, 255)), int (random(175, 255)));
  int colourNightBall = color(int (random(100, 255)), int (random(50, 255)), 0);
  Circle c = new Circle(appWidth*1/2, appHeight*1/2, xDiameter, yDiameter, colourDayBall, colourNightBall);
  shapes.add(3, c);//Replace BALL Element Hardcoded into void draw()
}//end mousePressed

//END MAIN (Driver) Program
