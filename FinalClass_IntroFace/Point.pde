private class Point extends Shape {
  //Global Variables
 private color colour = 255;
  //
  //Constructor
  private Point (float x, float y) {
    super(x, y);
  }//end Constructor

  public void draw() {
    stroke(255); //Grey Scale
    point(x, y);
    stroke(0); //Grey Scale, affects the line class too
  }//end draw

  //Common Methods
 final public void fillCode() {
    fill ( fillColour (colour) );
  }//end fillCode
  final public void fillWhite() {
    fill ( fillColour(colour) );
  }//end fillWhite
  public color fillColour (color colour) {
    return color (0, 0, 0);
  }//end fillColour
}//end Circle
