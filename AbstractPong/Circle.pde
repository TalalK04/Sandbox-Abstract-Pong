//class is always UPPER CASE
class Circle extends Shape {
  //Global Varibales
  int xSpeed, ySpeed;
  color colour, resetNightMode;

  //Constructor
  Circle(float x, float y, float w, float h) {
    super(x, y, w, h);
    colour = color(int (random(100, 255)), int (random(50, 255)), int (random(175, 255)));
    resetNightMode = color(int (random(100, 255)), int (random(50, 255)), 0);
    xSpeed = int ( random (width/width, width/width*5) );
    ySpeed = int ( random (height/height, height/height*5) );
  }//end Constructor

  //Methods
  void draw() {
    fill(colour);
    ellipse(x, y, w, h);
    move();
    bounce();
  }//end draw

  void move() {
    x += xSpeed;
    y += ySpeed;
  }

  void bounce() {
    //bounceWall
    if (y-w*1/2 < height*0 || y+h*1/2 > height) ySpeed *= -1; //Top and Bottom 
    //end bounceWall
    //
    //bouncePaddle
    if ((x <= rLeft.x + (rLeft.w + w*1/2)) && ((y >= rLeft.y) && (y <= (rLeft.y + rLeft.h)))) {
      xSpeed *= -1;
    }
    if ((x >=  rRight.x - (w*1/2)) && ((y >=  rRight.y) && (y <= ( rRight.y+  rRight.h)))) {
      xSpeed*=-1;
    }
    //end bouncePaddle
    //
  }//end Bounce

  void Goal() {
    if (x > rRight.x + (rRight.w)) {
      xSpeed = 0;
      ySpeed = 0;
      x = width - w*1/2;
      y = y;
    } 
    if (x < rLeft.x ) {
      xSpeed = 0;
      ySpeed = 0;
      x = width*0 + w*1/2;
      y = y;
    }
  }
}//end Circle
