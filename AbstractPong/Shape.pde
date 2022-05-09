//class is always UPPER CASE
abstract class Shape {
  //Global Varibales
  float x;
  float y;
  float w;
  float h;
  //Constructor
  Shape (float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }//end Constructor
  //Methods
  abstract void draw(); 
  //Mandatory, references extended classes
  //Note: no braces, code in extended classes
  //Any other procedures common to all extended classes
  //Must be declared here, like draw();
  abstract void bounce();
  abstract float xGetter();
  abstract float yGetter();
  abstract float wGetter();
  abstract float hGetter();
  abstract color DayModeGetter();
  abstract color resetNightModeGetter();
  abstract boolean twoPlayerGetter ();
  abstract boolean singlePlayerGetter ();
   
}// end Shape
