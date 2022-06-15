/* Inheritance Map
//Shape - Point - Line - Ellipse - Rectangle
//Shape - Point - Circle - Square
*/

final private class Rectangle extends Ellipse {
  //Global Variables
  public float sideY;
  public float sideX;
  //Constructor
  private Rectangle(float x, float y, float sideX, float sideY) {
    super(x, y, sideX, sideY);
  }//End Constructor

  public void draw() {
    fillShapes();
    fillStroke();
    fillWeight();
    rect(x, y, diameterX, diameterY);
    fillWhite();
  }//End draw

  //Common Methods

 final public color fillColour (color fillColour) {
    if (x == 0) { 
      return 255;
    } else if (x>width*1/2) {
      return color (0, 0, fillColour);
    } else return color (fillColour, 0, 0);
  }//End fillColour()

  final public color strokeColour (color strokeColour) {
    if (x==0) {
      return 255;
    } else return color(0);
  }//End strokeColour
  
  final public int fillWeight (int weight){
    return weight = 9;
  }//End fillWeight
  
}//End Rectangle
