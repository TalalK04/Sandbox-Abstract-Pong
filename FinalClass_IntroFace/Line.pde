final private class Line extends Point {
  //Global Variables
  float ptX, ptY;
  //
  //Constructor
  private Line (float x, float y, float ptX, float ptY) {
    super(x, y);
    this.ptX = ptX;
    this.ptY = ptY;
  }//end Constructor

  public void draw() {
    //fillCode();
    line(x, y, ptX, ptY);
    //fillWhite(); //reset to white colour (best pratice)
  }//end draw

  //Common Methods
}//end Circle
