//Shape - Point - Line - Ellipse - Rectangle
//Shape - Point - Circle - Square 
int strokeLine = 10;
int strokeColour = 255;
int fillColour = strokeColour;
class Point extends Shape {
  //Global Variables

  //Constructor
  Point(float x, float y) {
    super(x, y);
  }//end Constructor

  void draw() {
    fillColour();
    strokeLine();
    strokeColour();
    point(x, y);
  }//end draw

  //Common Methods
  public void strokeLine() {
    strokeWeight(strokeLine);
  }
  public void strokeColour(){
    stroke(0, 0, strokeColour);
  }
  public void fillColour(){
    fill(fillColour);
  }
}//end Point
