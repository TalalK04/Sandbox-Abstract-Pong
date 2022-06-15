//Shape - Point - Line - Ellipse - Rectangle
//Shape - Point - Circle - Square 

class Ellipse extends Line {
  //Global Variables
  float diameterY;
  float diameterX;
  //Constructor
  Ellipse(float x, float y, float diameterX, float diameterY) {
    super(x, y, diameterX, diameterY);
    this.diameterX = diameterX;
    this.diameterY = diameterY;
  }//end Constructor

  void draw() {
    strokeLine();
    ellipse(x, y, diameterX, diameterY);
  }//end draw

  //Common Methods
    public void strokeLine(){
    strokeLine = 5;
  strokeWeight(strokeLine);
}
}//end Circle
