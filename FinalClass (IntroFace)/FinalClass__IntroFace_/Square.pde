class Square extends Circle {
  //Global Variables
  float side;
  //
  //Constructor
  Square(float x, float y, float side) {
    super(x, y, side);
    this.side = side;
  }

  void draw() {
    fillCode();
    square(x, y, side);
    fillWhite(); //reset to white colour (best pratice)
  }//end draw

  //Common Methods
   public color fillColour (color colour) {
    return color (0, 0, 0); //Not night mode, "hint hint"
  }//end fillColour
  
}//end Square
