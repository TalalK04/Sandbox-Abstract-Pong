/*Inheritance:
Shape - Point - Line
Shape - Point - Circle - Ellipse - Ball
Shape - Point - Square - Rectangle - Hat
*/
abstract private class Shape {
  //Global Variables
  public float x, y;
  //
  //Constructor: ellipse(), circle(), square(), rect(), line(), point()
  private Shape(float xParameter, float yParameter) {
    this.x = xParameter;
    this.y = yParameter;
  }

  abstract public void draw();
  //abstract public void fillWhite();  //Common Methods
}//end Shape
