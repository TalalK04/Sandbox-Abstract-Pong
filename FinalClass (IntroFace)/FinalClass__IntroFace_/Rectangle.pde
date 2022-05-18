private class Rectangle extends Square {
  //Global Variables
  float sideY;
  //
  //Constructor
  private Rectangle(float x, float y, float side, float sideY) {
    super(x, y, side);
    this.sideY = sideY;
  }

 final public void draw() {
    fillCode();
    rect(x, y, side, sideY);
    fillWhite(); //reset to white colour (best pratice)
  }//end draw

  //Common Methods
    final public color fillColour (color colour) {
    return color (0, colour, 0); //Not night mode, "hint hint"
  }//end fillColour
}//end Rectangle
