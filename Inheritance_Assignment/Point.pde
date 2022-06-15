//Shape - Point - Line - Ellipse - Rectangle
//Shape - Point - Circle - Square 
int strokeLine = 10;
class Point extends Shape{
  //Global Variables
  
  //Constructor
  Point(float x, float y) {
    super(x, y);
  }//end Constructor
  
  void draw(){
    strokeLine();
    point(x, y);
  }//end draw
  
  //Common Methods
public void strokeLine(){
  strokeWeight(strokeLine);
}

}//end Point
