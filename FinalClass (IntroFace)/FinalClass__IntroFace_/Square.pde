class Square extends Circle {
  //Global Variables
  float side;
  //
  //Constructor
  Square(float x, float y, float side){
   super(x, y, side);
   this.side = side;
  }

  void draw() {
    square(x,y,side);
  }//end draw

  //Common Methods
}//end Square
