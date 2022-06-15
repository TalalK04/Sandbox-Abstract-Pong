/* Inheritance Map
//Shape - Point - Line - Ellipse - Rectangle
//Shape - Point - Circle - Square
*/

private class Line extends Point {
  //Global Variables
  public float ptX, ptY;
  //Constructor
  private Line (float x, float y, float ptX, float ptY) {
    super(x, y);
    this.ptX = ptX;
    this.ptY = ptY;
  }//End Constructor

  public void draw() {
    fillStroke();
    fillShapes();
    fillWeight();
    line(x, y, ptX, ptY);
    fillWhite();
  }//End draw

  //Common Methods

  public color strokeColour(color strokeColour) {
    if (x==0) {
      return 255;
    } else if (x < width*1/2 && ptX < width*1/2) {
      return color(strokeColour, 0, 0);
    } else if (x > width*1/2 && ptX > width*1/2) {
      return color(0, 0, strokeColour);
    } else return color(0);
  }//End strokeColour

  public int fillWeight(int weight) {
    if (x==0) {
      return 0;
    } else if (x < width*1/2 && ptX > width*1/2 && y < width*1/2) {
      return weight = 9;
    } else {
      return weight = 4;
    }
  }//End fillWeight
  
}//End Line
