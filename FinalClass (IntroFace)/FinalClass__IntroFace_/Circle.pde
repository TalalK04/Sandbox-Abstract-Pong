class Circle extends Point {
  //Global Variables
  float diameter;
  //Constructor
  Circle(float x, float y, float diameter){
    super(x, y);
    this.diameter = diameter;
  }//end Constructor

  void draw() {
    circle(x, y, diameter);
  }//end draw

  //Common Methods
}//end Circle
