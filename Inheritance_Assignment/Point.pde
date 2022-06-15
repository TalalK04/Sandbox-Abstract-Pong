/* Inheritance Map
//Shape - Point - Line - Ellipse - Rectangle
//Shape - Point - Circle - Square
*/

private class Point extends Shape {
  //Global Variables
  private int weight;
  private color strokeColour = 255;
  public color fillColour = 255;
  //Constructor
  private Point(float x, float y) {
    super(x, y);
  }//End Constructor

  void draw() {
    fillShapes();
    fillStroke();
    fillWeight();
    point(x, y);
    fillWhite();
  }//End draw

  //Common Methods

  final public void fillShapes() {
    fill ( fillColour (fillColour) );
  }//End fillShapes

  final public void fillWhite() {
    fill ( fillColour(fillColour) );
  }//End fillWhite
  
  final public void fillStroke() {
    stroke ( strokeColour(strokeColour) );
  }//End fillStroke
  
  final public void fillWeight() {
    strokeWeight (fillWeight(weight));
  }//End fillWeight

  public color fillColour (color fillColour) {
    return color (0, 0, 0);
  }//End fillColour

  public color strokeColour (color strokeColour) {
    if (y<height*1/2) {
      return 255;
    } else {
      return color (0, 0, 0);
    }
  }//End strokeColour

  public int fillWeight (int weight) {
    if (y>height*1/2) {
      return weight = 5;
    } else return weight = 10;
  }//End fillWeight
  
}//End Point
