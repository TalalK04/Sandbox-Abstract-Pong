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
