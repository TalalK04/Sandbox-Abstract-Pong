//Shape - Point - Line - Ellipse - Rectangle
//Shape - Point - Circle - Square 

class Square extends Circle {
  //Global Variables
  float side;
  //
  //Constructor
  private Square(float x, float y, float side) {
    super(x, y, side);
    this.side = side;
  }

  void draw() {
    strokeLine();
    square(x, y, side);
  }//end draw

  //Common Methods
  public void strokeLine(){
    strokeLine = 2;
  strokeWeight(strokeLine);
}
}//end Square
