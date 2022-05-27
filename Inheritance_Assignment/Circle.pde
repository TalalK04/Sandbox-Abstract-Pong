abstract class Circle extends Point{
  //Global Variables
  float diameterX;
  //Constructor
  Circle(float x, float y, float diameterX) {
    super(x, y);
    this.diameterX = diameterX;
  }//end Constructor
  
  void draw(){
    circle(x, y, diameterX);
  }//end draw
  
  //Common Methods
  
}//end Circle
