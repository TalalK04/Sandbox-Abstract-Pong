class Circle extends Point {
  //Global Variables
  float diameter;
  //Constructor
  Circle(float x, float y, float diameter) {
    super(x, y);
    this.diameter = diameter;
   }//End Constructor
   
  void draw() {
    fillCode();
    circle(x, y, diameter);
    fillWhite(); //reset to white colour (best pratice)
  }//end draw
  color fillCoulour (color colour) {
    if (colour != 255) { 
      return 255;
    } else { 
      return color( random(255), random(255), random(255) );
    }
  }//end fillColour()
  
  //Common Methods

}//end Circle
