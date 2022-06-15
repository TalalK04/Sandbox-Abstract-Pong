//Shape - Point - Line - Ellipse - Rectangle
//Shape - Point - Circle - Square 

class Rectangle extends Ellipse {
  //Global Variables
  float sideY;
  float sideX;
  //Constructor
  Rectangle(float x, float y, float sideX, float sideY) {
    super(x, y, sideX, sideY);
  }//end Constructor

  void draw() {
    fillColour();
    strokeLine();
    strokeColour();
    rect(x, y, diameterX, diameterY);
  }//end draw

  //Common Methods
    public void fillColour() {
    fill(fillColour);
  }
  public void strokeLine() {
    strokeLine = 9;
    strokeWeight(strokeLine);
  }
    public void strokeColour() {
    if (x < width*1/2) {
      stroke(strokeColour, 0, 0);
    } else stroke(0, 0, strokeColour);
  }
}//end Circle
