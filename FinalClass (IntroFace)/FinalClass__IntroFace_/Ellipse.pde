class Ellipse extends Point {
  //Global Variables
  float xDiameter, yDiameter;
  //Constructor
  Ellipse(float x, float y, float xDiameter, float yDiameter) {
    super(x, y);
    this.xDiameter = xDiameter;
    this.yDiameter = yDiameter;
  }//End Constructor

  final void draw() {
    fillCode();
    ellipse(x, y, xDiameter, yDiameter);
    fillWhite(); //reset to white colour (best pratice)
  }//end draw

  //Common Methods
  //
  final color fillColour (color colour) {
    return color (0, 0, 0);
  }//end fillColour
  
}//end Ellipse
