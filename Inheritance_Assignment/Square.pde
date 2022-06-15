/* Inheritance Map
 //Shape - Point - Line - Ellipse - Rectangle
 //Shape - Point - Circle - Square
 */

final private class Square extends Circle {
  //Global Variables
  public float side;
  //
  //Constructor
  private Square(float x, float y, float side) {
    super(x, y, side);
    this.side = side;
  }//End Constructor

  public void draw() {
    fillShapes();
    fillStroke();
    fillWeight();
    square(x, y, side);
    fillWhite();
  }//End draw

  //Common Methods

  final public color fillColour (color colour) {
    if (x == 0) { 
      return 255;
    } else { 
      return color(fillColour, fillColour-40, 0);
    }
  }//End fillColour()

  final public color strokeColour (color strokeColour) {
    if (x == 0) { 
      return 255;
    } else { 
      return color(strokeColour, strokeColour-40, 0);
    }
  }//End strokeColour()

  final public int fillWeight (int weight) {
    return weight = 2;
  }//End fillWeight
}//End Square
