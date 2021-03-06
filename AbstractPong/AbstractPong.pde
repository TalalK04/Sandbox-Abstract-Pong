//Global Variables & Other Items (Classes)
ArrayList<Shape> shapes = new ArrayList<Shape>();
boolean showInstructions = true;
//Annonoymous Class, one time object
Shape instructions = new Shape (50, 50, 1100, 900) {
  //Global Variables
  color colourDayMode, resetNightMode;
  boolean twoPlayer, singlePlayer;
  //No Constructor Needed
  void draw() {
    fill(#FFFFFF); //white
    rect(x, y, w, h); //background for instructions menu
    //Text Code Here
    instructionsText();
    fill(#FFFFFF); //reset white
  }//end draw
  //Methods for Possible Text Drawing
  void bounce() {
  }
  float xGetter() {
    return x;
  }
  float yGetter() {
    return y;
  }
  float wGetter() {
    return w;
  }
  float hGetter() {
    return h;
  }
  color DayModeGetter() {
    return colourDayMode;
  }
  color resetNightModeGetter() {
    return resetNightMode;
  }
  boolean twoPlayerGetter () {
    return twoPlayer;
  }
  boolean singlePlayerGetter () {
    return singlePlayer;
  }
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
  //int scoreWidth = appWidth*1/8;
  //int scoreHeight = appHeight*1/8;
  int colourDayRectLeft = color(int (random(100, 255)), int (random(50, 255)), int (random(175, 255)));
  int colourNightRectLeft = color(int (random(100, 255)), int (random(50, 255)), 0);
  int colourDayRectRight = color(int (random(100, 255)), int (random(50, 255)), int (random(175, 255)));
  int colourNightRectRight = color(int (random(100, 255)), int (random(50, 255)), 0);
  int colourDayBall = color(int (random(100, 255)), int (random(50, 255)), int (random(175, 255)));
  int colourNightBall = color(int (random(100, 255)), int (random(50, 255)), 0);
  Circle c = new Circle(appWidth*1/2, appHeight*1/2, xDiameter, yDiameter, colourDayBall, colourNightBall);
  Rectangle rLeft = new Rectangle(appWidth*1/40, appHeight*1/4, rectWidth, rectHeight, colourDayRectLeft, colourNightRectLeft);
  Rectangle rRight = new Rectangle(appWidth*38/40, appHeight*1/4, rectWidth, rectHeight, colourDayRectRight, colourNightRectRight);
  //Rectangle rightScore = new Rectangle(appWidth*1/8, appHeight*0, scoreWidth, scoreHeight, colourDayRectRight, colourNightRectRight);
  //Rectangle leftScore = new Rectangle(appWidth*3/4, appHeight*0, scoreWidth, scoreHeight, colourDayRectRight, colourNightRectRight);
  //Shapes Global Variable, Shapes will not change
  shapes.add(rLeft); //Element 1, Left Paddle
  shapes.add(rRight); //Element 2, Right Paddle
  shapes.add(c); //Element 3, Pong BALL
  //shapes.add(rightScore); //Element 4, rightSocre
  //shapes.add(leftScore); //Element 5, leftSocre

  //Reminder: ALL local objects are deleted, "Garbage Heap collected"\
  println("press m once you've read instructions");
  println("press i to take a look at the instructions again");
}//end setup

void draw() {
  background(0);
  //for (Shape s : shapes) {
  //  s.draw();
  //}

  if (showInstructions == true) {
    shapes.get(0).draw();
  } 

  for ( int i=1; i<shapes.size(); i++ ) {
    if (showInstructions == false) {
      shapes.get(i).draw();
    }
  }
}//end draw
//Annonymous Class
void keyPressed() {
  //Instructions: Instructions, Features, and Hints for easter Eggs
  //Note: .remove & .add combined in .set 

  if ((key == CODED && key == 'M' || key == 'm') && (showInstructions == true)) {
    showInstructions = false;
  }  
  if ((key == CODED && key == 'I' || key == 'i') && (showInstructions == false)) {
    showInstructions = true;
  }

  Rectangle paddle = new Rectangle (shapes.get(2).x, shapes.get(2).y, shapes.get(2).w, shapes.get(2).h, shapes.get(2).DayModeGetter(), shapes.get(2).resetNightModeGetter());
  if (key == 'P'|| key == 'p') paddle.singlePlayer = true;
  if (key == 'T'|| key == 't') paddle.twoPlayer = true;
  if (key == 'C'|| key == 'c') paddle.screenSaver = true;

  //LeftPaddleMove (0)
  Rectangle paddleLeft = new Rectangle (shapes.get(1).x, shapes.get(1).y, shapes.get(1).w, shapes.get(1).h, shapes.get(1).DayModeGetter(), shapes.get(1).resetNightModeGetter());
  if ( (key == CODED && key == 'W' || key == 'w') && (paddleLeft.singlePlayerGetter() == true || paddleLeft.twoPlayerGetter() == true) ) {
    paddleLeft.moveUp();
    shapes.set(1, paddleLeft);
  }//end LeftUp
  if ( (key == CODED && key == 'S' || key == 's') && (paddleLeft.singlePlayerGetter() == true || paddleLeft.twoPlayerGetter() == true) ) {
    paddleLeft.moveDown();
    shapes.set(1, paddleLeft);
  }//end LeftDown
  if ( (key == CODED && key == 'D' || key == 'd') && (paddleLeft.singlePlayerGetter() == true || paddleLeft.twoPlayerGetter() == true) ) {
    paddleLeft.stopPaddle();
    shapes.set(1, paddleLeft);
  }//end LeftStop
  //LeftPaddle Difficulty
  if ((paddleLeft.paddleSpd == 0) && (key == 'e'|| key == 'E')) { //easy
    paddleLeft.paddleSpd = 2;
    paddleLeft.leftMode = true;
  } else if ((paddleLeft.paddleSpd == 0) && (key == 'm'|| key == 'M')) { //medium
    paddleLeft.paddleSpd = 5;
    paddleLeft.leftMode = true;
  } else if ((paddleLeft.paddleSpd == 0) && (key == 'h'|| key == 'H')) { //hard
    paddleLeft.paddleSpd = 10;
    paddleLeft.leftMode = true;
  }
  //
  //RightPaddleMove (1)
  Rectangle paddleRight = new Rectangle (shapes.get(2).x, shapes.get(2).y, shapes.get(2).w, shapes.get(2).h, shapes.get(2).DayModeGetter(), shapes.get(2).resetNightModeGetter());
  if ((key == CODED && keyCode == UP) && paddleRight.twoPlayerGetter() == true) {  
    paddleRight.moveUp();
    shapes.set(2, paddleRight);
  }//end RightUp
  if ((key == CODED && keyCode == DOWN) && paddleRight.twoPlayerGetter() == true) {
    paddleRight.moveDown();
    shapes.set(2, paddleRight);
  }//end RightDown
  if ((key == CODED && keyCode == LEFT) && paddleRight.twoPlayerGetter() == true) {
    paddleRight.stopPaddle();
    shapes.set(2, paddleRight);
  }//end RightStop
  //RightPaddle Difficulty
  if ((paddleRight.paddleSpd == 0) && (key == '1')) { //easy
    paddleRight.paddleSpd = 2;
    paddleRight.rightMode = true;
  } else if ((paddleRight.paddleSpd == 0) && (key == '2')) { //medium
    paddleRight.paddleSpd = 5;
    paddleRight.rightMode = true;
  } else if ((paddleRight.paddleSpd == 0) && (key == '3')) { //hard
    paddleRight.paddleSpd = 10;
    paddleRight.rightMode = true;
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
