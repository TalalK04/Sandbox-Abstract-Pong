//Shape - Point - Line - Ellipse - Rectangle
//Shape - Point - Circle - Square 

class Circle extends Point{
  //Global Variables
  float diameterX;
  //Constructor
  Circle(float x, float y, float diameterX) {
    super(x, y);
    this.diameterX = diameterX;
  }//end Constructor
  
  void draw(){
    strokeLine();
    circle(x, y, diameterX);
  }//end draw
  
  //Common Methods
    public void strokeLine(){
    strokeLine = 4;
  strokeWeight(strokeLine);
}
}//end Circle
