//class is always UPPER CASE
class Circle extends Shape {
  //Global Varibales

  //Constructor
  Circle(float x, float y, float w, float h) {
    super(x, y, w, h);
  }//end Constructor

  //Methods
  void draw() {
    ellipse(x, y, w, h);
  }//end draw
}//end Circle
