class Point extends Shape {
  //Global Variables
  color colour = 255;
  //
  //Constructor
  Point (float x, float y) {
    super(x, y);
  }//end Constructor

  void draw() {
    stroke(255); //Grey Scale
    point(x, y);
    stroke(0); //Grey Scale
  }//end draw

  //Common Methods
  void fillCode() {
    fill ( fillColour (colour) );
  }//end fillCode
  void fillWhite() {
    fill ( fillColour(colour) );
  }//end fillWhite
  color fillColour (color colour) {
    return color (0, 0, 0);
  }//end fillColour
}//end Circle
