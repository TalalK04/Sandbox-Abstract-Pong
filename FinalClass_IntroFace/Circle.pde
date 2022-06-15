/*Inheritance:
Shape - Point - Line
Shape - Point - Circle - Ellipse - Ball
Shape - Point - Square - Rectangle - Hat
*/
class Circle extends Point {
  //Global Variables
  public float diameter;
  //Constructor
  private Circle(float x, float y, float diameter) {
    super(x, y);
    this.diameter = diameter;
  }//End Constructor

  public void draw() {
    fillCode();
    circle(x, y, diameter);
    fillWhite(); //reset to white colour (best pratice)
  }//end draw
  public color fillColour (color colour) {
    if (colour != 255) { 
      return 255;
    } else { 
      return color( random(255), random(255), random(255) );
    }
  }//end fillColour()

  //Common Methods
}//end Circle
