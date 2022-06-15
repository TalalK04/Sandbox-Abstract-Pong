//Shape - Point - Line - Ellipse - Rectangle
//Shape - Point - Circle - Square 

class Rectangle extends Ellipse{
  //Global Variables
  float sideY;
  float sideX;
  //Constructor
  Rectangle(float x, float y, float sideX, float sideY) {
    super(x, y, sideX, sideY);
  }//end Constructor

  void draw() {
    strokeLine();
    rect(x, y, diameterX, diameterY);
  }//end draw

  //Common Methods
  public void strokeLine(){
    strokeLine = 9;
  strokeWeight(strokeLine);
}
}//end Circle
