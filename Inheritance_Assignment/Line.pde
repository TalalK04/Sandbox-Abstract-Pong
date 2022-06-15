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
    line(x, y, ptX, ptY);
  }//end draw

  //Common Methods
  public void strokeLine(){
    strokeLine = 4;
  strokeWeight(strokeLine);
}
}//end Line
