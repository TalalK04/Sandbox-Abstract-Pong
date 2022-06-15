/*Inheritance:
Shape - Point - Line
Shape - Point - Circle - Ellipse - Ball
Shape - Point - Square - Rectangle - Hat
*/
private class Ellipse extends Circle {
  //Global Variables
  public float yDiameter;
  //Constructor
  Ellipse(float x, float y, float diameter, float yDiameter) {
    super(x, y, diameter);
    this.yDiameter = yDiameter;
  }//End Constructor

  final public void draw() {
    fillCode();
    ellipse(x, y, diameter, yDiameter);
    fillWhite(); //reset to white colour (best pratice)
  }//end draw

  //Common Methods
  //
  final public color fillColour (color colour) {
    return color (0, 0, 0);
  }//end fillColour
  
}//end Ellipse
