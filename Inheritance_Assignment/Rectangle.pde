class Rectangle extends Ellipse{
  //Global Variables
  float sideY;
  float sideX;
  //Constructor
  Rectangle(float x, float y, float sideX, float sideY) {
    super(x, y, sideX, sideY);
  }//end Constructor

  void draw() {
    rect(x, y, diameterX, diameterY);
  }//end draw

  //Common Methods

}//end Circle
