/* Inheritance Map
//Shape - Point - Line - Ellipse - Rectangle
//Shape - Point - Circle - Square
*/

class Circle extends Point {
  //Global Variables
  public float diameterX;
  //Constructor
  Circle(float x, float y, float diameterX) {
    super(x, y);
    this.diameterX = diameterX;
  }//End Constructor

  public void draw() {
    fillStroke();
    fillShapes();
    fillWeight();
    circle(x, y, diameterX);
    fillWhite();
  }//End draw

  //Common Methods

  public color fillColour (color fillColour) {
    if (x == 0) { 
      return 255;
    } else { 
      return color(fillColour-177, fillColour-202, fillColour-219);
    }
  }//End fillColour()

  public color strokeColour (color strokeColour) {
    if (x == 0) { 
      return 255;
    } else { 
      return color(strokeColour-177, strokeColour-202, strokeColour-219);
    }
  }//End fillColour()

  public int fillWeight (int weight) {
    return weight = 4;
  }//End fillWeight
  
}//End Circle
