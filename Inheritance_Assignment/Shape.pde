//Shape - Point - Line - Ellipse - Rectangle
//Shape - Point - Circle - Square 

abstract class Shape {
  //Global Variables
  public float x, y;
  //
  //Constructor
  private Shape(float xParameter, float yParameter) {
    this.x = xParameter;
    this.y = yParameter;
  }

  abstract public void draw();
 //Common Methods
}//end Shape
