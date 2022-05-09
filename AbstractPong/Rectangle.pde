//class is always UPPER CASE
class Rectangle extends Shape {
  //Global Varibales
  color colourDayMode, resetNightMode;
  boolean moveUp, moveDown;
  boolean screenSaver = false;
  boolean twoPlayer = false;
  boolean singlePlayer = false;
  int paddleSpd;
  boolean chooseMode = false;
  boolean leftMode = false, rightMode = false;
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
    //if (moveUp == true && singlePlayer == true) shapes.get(1).y -= paddleSpd;
    //if (moveDown == true && singlePlayer == true) shapes.get(1).y += paddleSpd;
    if (moveUp == true) y -= paddleSpd;
    if (moveDown == true) y += paddleSpd;
    //if (moveUp == true && screenSaver == true) y = shapes.get(3).y - h*1/2;
    //if (moveDown == true && screenSaver == true) y = shapes.get(3).y - h*1/2;
    if ((y+h) >= height) y = height-h;
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
  color resetNightModeGetter() {
    return resetNightMode;
  }
  boolean twoPlayerGetter () {
    return twoPlayer;
  }
  boolean singlePlayerGetter () {
    return singlePlayer;
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
