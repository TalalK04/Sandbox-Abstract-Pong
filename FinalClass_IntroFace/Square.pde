/*Inheritance:
Shape - Point - Line
Shape - Point - Circle - Ellipse - Ball
Shape - Point - Square - Rectangle - Hat
*/
private class Square extends Point {
  //Global Variables
  public float side;
  //
  //Constructor
  private Square(float x, float y, float side) {
    super(x, y);
    this.side = side;
  }

  public void draw() {
    fillCode();
    square(x, y, side);
    fillWhite(); //reset to white colour (best pratice)
  }//end draw

  //Common Methods
   public color fillColour (color colour) {
    return color (0, 0, colour); //Not night mode, "hint hint"
  }//end fillColour
  
}//end Square
