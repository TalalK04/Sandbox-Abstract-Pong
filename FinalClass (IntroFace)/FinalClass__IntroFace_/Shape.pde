abstract class Shape {
  //Global Variables
  float x, y;
  //
  //Constructor: ellipse(), circle(), square(), rect(), line(), point()
  Shape(float xParameter, float yParameter){
  this.x = xParameter;
  this.y = yParameter;
  }

  abstract void draw();

  //Common Methods
}//end Shape
