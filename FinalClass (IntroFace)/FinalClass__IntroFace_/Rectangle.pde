class Rectangle extends Square {
  //Global Variables
  float sideY;
  //
  //Constructor
  Rectangle(float x, float y, float side, float sideY) {
    super(x, y, side);
    this.sideY = sideY;
  }

  void draw() {
    fillCode();
    rect(x, y, side, sideY);
    fillWhite(); //reset to white colour (best pratice)
  }//end draw

  //Common Methods
}//end Rectangle
