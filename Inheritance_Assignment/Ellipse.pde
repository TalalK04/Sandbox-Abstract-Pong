//Shape - Point - Line - Ellipse - Rectangle
//Shape - Point - Circle - Square 

class Ellipse extends Line {
  //Global Variables
  float diameterY;
  float diameterX;
  //Constructor
  Ellipse(float x, float y, float diameterX, float diameterY) {
    super(x, y, diameterX, diameterY);
    this.diameterX = diameterX;
    this.diameterY = diameterY;
  }//end Constructor

  void draw() {
    strokeLine();
    strokeColour();
    fillColour();
    ellipse(x, y, diameterX, diameterY);
  }//end draw

  //Common Methods

  public void strokeLine() {
    strokeLine = 5;
    strokeWeight(strokeLine);
  }

  public void strokeColour() {
    if (y>height*1/2) {
      stroke(strokeColour, 0, 0);
    } else stroke(strokeColour-105, strokeColour-155, 0);
  }//end strokeColour

  public void fillColour() {
    if (y>height*1/2) {
      fill(fillColour, 0, 0);
    } else fill(fillColour-105, fillColour-155, 0);
  }
}//end Circle
