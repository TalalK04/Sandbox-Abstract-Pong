class Ellipse extends Point {
  //Global Variables
  float xDiameter, yDiameter;
  //Constructor
  Ellipse(float x, float y, float xDiameter, float yDiameter){
    super(x, y);
    this.xDiameter = xDiameter;
    this.yDiameter = yDiameter;
  }//end Constructor

  void draw() {
    ellipse(x, y, xDiameter, yDiameter);
  }//end draw

  //Common Methods
}//end Ellipse
