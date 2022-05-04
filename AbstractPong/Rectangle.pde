//class is always UPPER CASE
class Rectangle extends Shape {
  //Global Varibales
  color colourDayMode, resetNightMode;
  boolean moveUp, moveDown;
  int paddleSpd;
  //Constructor
  Rectangle(float x, float y, float w, float h, color colourDayParameter, color resetNightParameter) {
    super(x, y, w, h);
    this.colourDayMode = colourDayParameter;
    this.resetNightMode = resetNightParameter;
    this.moveUp = false;
    this.moveDown = false;
    paddleSpd = 5;
  }
  //Methods
  void draw() {
    if (moveUp = true) y -= paddleSpd;
    if (moveDown = true) y += paddleSpd;
    fill(colourDayMode);
    rect(x, y, w, h);
    fill(resetNightMode);
  }//end draw

  float xGetter() {
    return x;
  }
  float yGetter() {
    return y;
  }
  float wGetter() {
    return w;
  }
  float hGetter() {
    return h;
  }
  color DayModeGetter() {
    return colourDayMode;
  }
  color resetNightModeGetter(){
    return resetNightMode;
  }

  void moveUp() {
    moveUp = true;
    moveDown = false;
  }//end moveUp
  void moveDown() {
    moveDown = true;
    moveUp = false;
  }//end moveDown
  void stopPaddle() {
    moveUp = false;
    moveDown = false;
  }//end stopPaddle

  //Common Methods
  void bounce() {
  }//end bounce
}//end Rectangle
