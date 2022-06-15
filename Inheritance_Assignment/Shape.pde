/* Inheritance Map
//Shape - Point - Line - Ellipse - Rectangle
//Shape - Point - Circle - Square
*/

abstract private class Shape {
  //Global Variables
  public float x, y;
  //
  //Constructor
  private Shape(float xParameter, float yParameter) {
    this.x = xParameter;
    this.y = yParameter;
  }//End Constructor
  

  abstract public void draw();
  
}//End Shape
