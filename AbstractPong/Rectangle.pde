//class is always UPPER CASE
class Rectangle extends Shape {
  //Global Varibales

  //Constructor
  Rectangle(float x, float y, float w, float h) {
    super(x, y, w, h);
  }
  //Methods
  void draw() {
    rect(x, y, w, h);
  }//end draw
}//end Rectangle
