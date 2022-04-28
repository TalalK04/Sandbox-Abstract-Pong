//class is always UPPER CASE
class Rectangle extends Shape {
  //Global Varibales
  color colourDayMode, resetNightMode;

  //Constructor
  Rectangle(float x, float y, float w, float h, color colourDayParameter, color resetNightParameter) {
    super(x, y, w, h);
    this.colourDayMode = colourDayParameter;
    this.resetNightMode = resetNightParameter;
  }
  //Methods
  void draw() {
    rect(x, y, w, h);
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
}//end Rectangle
