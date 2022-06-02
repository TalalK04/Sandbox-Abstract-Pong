//Shape - Line - Ellipse - Rectangle
//Shape - Point - Circle - Square 

ArrayList<Shape> shapes = new ArrayList<Shape>();

void setup() {
  size (700, 700);
  
  float x = width*1/2;
  float y = width*1/2;
  float diameterX = width*1.3/2;
  float diameterY = height*3/4;
  float ptX = x-width*1/30;
  float ptY = y+height*1/10;
  
  Ellipse face =  new Ellipse(x, y, diameterX, diameterY);
  Ellipse leftEye = new Ellipse(x-diameterX*1/5, y-diameterY*1/9, diameterX*1/5, diameterY*1/10);
  Ellipse rightEye = new Ellipse(x+diameterX*1/5, y-diameterY*1/9, diameterX*1/5, diameterY*1/10);
  Line noseSlant = new Line(x, y-height*1/50, ptX, ptY);
  Line nose = new Line(ptX, ptY, x+width*1/30, ptY); 
  Line l = new Line(x, y-height*1/50, x, ptY*1.45/2);
  
  shapes.add(face);
  shapes.add(leftEye);
  shapes.add(rightEye);
  shapes.add(noseSlant);
  shapes.add(nose);
  shapes.add(l);
}//end setup

void draw() {
  background(255);
  for(Shape s : shapes){
   s.draw(); 
  }//end FOR
  
}//end setup

void keyPressed() {
}//end keyPressed

void mousePressed() {
  println("X =", mouseX, "AND Y =", mouseY);
}//end keyPressed
