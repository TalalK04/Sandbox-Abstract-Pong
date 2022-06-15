//Shape - Point - Line - Ellipse - Rectangle
//Shape - Point - Circle - Square 

class Line extends Point {
  //Global Variables
  float ptX, ptY;
  //
  //Constructor
  Line (float x, float y, float ptX, float ptY) {
    super(x, y);
    this.ptX = ptX;
    this.ptY = ptY;
  }//end Constructor

  void draw() {
    strokeLine();
    strokeColour();
    fillColour();
    line(x, y, ptX, ptY);
  }//end draw

  //Common Methods
  public void strokeLine() {
    strokeLine = 4;
    strokeWeight(strokeLine);
  }
  public void strokeColour() {
    if (ptY < width/2.33 && ptX < width*1/2) {
      stroke(strokeColour, 0, 0);
    } else if (ptY < width/2.33 && ptX > width*1/2) {
      stroke(0, 0, strokeColour);
    } else if (ptY>height*2/3) {
      stroke(strokeColour, 0, 0);
    } else stroke(strokeColour-105, strokeColour-155, 0);
  }//end strokeColour

  public void fillColour() {
    if (ptY < width/2.33 && ptX < width*1/2) {
      fill(fillColour, 0, 0);
    } else if (ptY < width/2.33 && ptX > width*1/2) {
      fill(0, 0, fillColour);
    } else if (ptY>2/3) {
      fill(fillColour, 0, 0);
    } else fill(fillColour-105, fillColour-155, 0);
  }//end fillColour
}//end Line
