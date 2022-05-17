class Circle extends Point {
  //Global Variables
  float diameter;
  //Constructor
  Circle(float x, float y, float diameter) {
    super(x, y);
    this.diameter = diameter;
  }//end Constructor

  void draw() {
    fillCode();
    circle(x, y, diameter);
    fillWhite(); //reset to white colour (best pratice)
  }//end draw
  color fillCoulour (color colour) {
    if () {
    } else {
    }
    //Common Methods
  }//end Circle
