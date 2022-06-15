/* Inheritance Map
//Shape - Point - Line - Ellipse - Rectangle
//Shape - Point - Circle - Square
*/ 

private class Ellipse extends Line {
  //Global Variables
  public float diameterY;
  public float diameterX;
  //Constructor
  private Ellipse(float x, float y, float diameterX, float diameterY) {
    super(x, y, diameterX, diameterY);
    this.diameterX = diameterX;
    this.diameterY = diameterY;
  }//End Constructor

  void draw() {
    fillShapes();
    fillStroke();
    fillWeight();
    ellipse(x, y, diameterX, diameterY);
    fillWhite();
  }//End draw

  //Common Methods

  public color fillColour (color fillColour) {
    if (y==0) {
      return 255;
    } else if (y>height*1/2) {
      return color(fillColour, 0, 0);
    } else if (y < height*1/2.2) {
      return color(fillColour);
    } else return color(fillColour-93, fillColour-136, fillColour-190);
  }//End fillColour()

  public color strokeColour (color strokeColour) {
    if (x==0) {
      return 255;
    } else {
      return color (0);
    }
  }//End strokeColour

  public int fillWeight (int weight) {
    return weight = 5;
  }//End fillWeight
  
}//End Ellipse
