class Square extends Circle {
  //Global Variables
  float side;
  //
  //Constructor
  private Square(float x, float y, float side) {
    super(x, y, side);
    this.side = side;
  }

  void draw() {
    square(x, y, side);
  }//end draw

  //Common Methods
  color fillColour (color colour) {
    return color (0, 0, colour); //Not night mode, "hint hint"
  }//end fillColour
}//end Square
