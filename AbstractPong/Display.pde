  int appWidth, appHeight;

//functions are always LOWER CASE
void display(){
  //Display Orientation: Landscape, not portrait nor square
  println(width, height, displayWidth, displayHeight);
    int appWidth = width;
  int appHeight = height;

  String ls = "Landscape", p = "portrait", DO = "Display Orientation", instruct = "Turn your phone";
  String orientation = (appWidth >= appHeight) ? ls : p ; //repeats IF-ELSE Structure

  if (orientation == ls) { 
    println ("Good to Go");
  } else {
    println(instruct);
    appWidth *= 0;
    appHeight *= 0;
  }//End Display Orientation
}//end display
