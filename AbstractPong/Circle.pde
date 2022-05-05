//class is always UPPER CASE
class Circle extends Shape {
  //Global Varibales
  int xSpeed, ySpeed, xDirection, yDirection;
  color colourDayMode, resetNightMode, colourScoreBoard;
  boolean leftGoal = false, rightGoal = false;

  //Constructor
  Circle(float x, float y, float w, float h, color colourDayParameter, color resetNightParameter) {
    super(x, y, w, h);
    this.colourDayMode = colourDayParameter;//color(int (random(100, 255)), int (random(50, 255)), int (random(175, 255)));
    this.resetNightMode = resetNightParameter;//color(int (random(100, 255)), int (random(50, 255)), 0);
    while (xSpeed>-2 && xSpeed<2) xSpeed = int(random( -3, 3));
    while (ySpeed>-2 && ySpeed<2) ySpeed = int(random( -3, 3));
    xDirection = int ( random (width/width, width/width*5) );
    yDirection = int ( random (height/height, height/height*5) );
  
  }//end Constructor

  //Methods
  void draw() {
    fill(colourDayMode);
    ellipse(x, y, w, h);
    fill(resetNightMode);
    move();
    bounce();
    Goal();
  }//end draw

  void move() {
    x += xSpeed*xDirection;
    y += ySpeed*yDirection;
  }

  void Goal() {
    if (rightGoal == true) {
      x = (width - (w*2/3));
      ySpeed = 0;
      xSpeed = 0;
    } else rightGoal = false; 


    if (leftGoal == true) {
      x = (width*0 + (w*2/3)); 
      ySpeed = 0;
      xSpeed = 0;
    } else leftGoal = false;

    if ( (x+w*1/2) > width) {
      rightGoal = true;
      //x = width - (w*1/2);
      //y = y;
    } 
    if ( (x+w*1/2) < width*0 ) {
      leftGoal = true;
      //x = (width*0) + w*1/2;
      //y = y;
    }
  }//end Goal

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

  void bounce() {
    //bounceWall
    if (y-w*1/2 < height*0 || y+h*1/2 > height) ySpeed *= -1; //Top and Bottom 
    //
    //Left bouncePaddle
    if ((x <= shapes.get(1).x + (shapes.get(1).w + w*1/2)) && ((y >= shapes.get(1).y) && (y <= (shapes.get(1).y + shapes.get(1).h)))) {
      xSpeed *= -1;
    }
    //
    //Right bouncePaddle
    if ((x >=  shapes.get(2).x - (w*1/2)) && ((y >=  shapes.get(2).y) && (y <= ( shapes.get(2).y + shapes.get(2).h)))) {
      xSpeed*=-1;
    }
    //
  }//end Bounce
}//end Circle
