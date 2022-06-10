//Shape - Point - Line - Ellipse - Rectangle
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
  Line noseLine = new Line(x, y-height*1/50, x, ptY*1.45/2);
  Ellipse mouth = new Ellipse(x, y*1.45, diameterX*1/3, diameterY*1/8);
  Line lips = new Line(x-(0.5*(diameterX*1/3)), y*1.45, x+(0.5*(diameterX*1/3)), y*1.45);
  Circle leftPupil = new Circle(x-diameterX*1/5, y-diameterY*1/9, 0.4*(diameterX*1/5));
  Circle rightPupil = new Circle(x+diameterX*1/5, y-diameterY*1/9, 0.4*(diameterX*1/5));
  Point pLeftEye = new Point(x-diameterX*1/5, y-diameterY*1/9);
  Point pRightEye = new Point(x+diameterX*1/5, y-diameterY*1/9);
  Rectangle leftLense = new Rectangle(x-width*1/4.75, y*1/1.4, diameterX*1/4, diameterY*1/7);
  Rectangle rightLense = new Rectangle(x+width*1/20, y*1/1.4, diameterX*1/4, diameterY*1/7);
  Line topNosePiece = new Line((x-width*1/4.75)+diameterX*1/4, (y*1/1.4)+diameterY*1/14, x+width*1/20, (y*1/1.4+diameterY*1/14));
  Ellipse leftEar = new Ellipse (width*1/6, height*1/2.2, width*1/10, height*1/4.5);
  Ellipse rightEar = new Ellipse (width-width*1/6, height*1/2.2, width*1/10, height*1/4.5);
  Line leftStick = new Line(x-width*1/4.75, (y*1/1.4)+diameterY*1/14, width*1/5, height*1/2.75);
  Line rightStick = new Line((x+width*1/20)+diameterX*1/4, (y*1/1.4)+diameterY*1/14, width-width*1/5, height*1/2.75);
  shapes.add(leftEar);
  shapes.add(rightEar);
  shapes.add(face);
  shapes.add(leftLense);
  shapes.add(rightLense);
  shapes.add(leftEye);
  shapes.add(rightEye);
  shapes.add(noseSlant);
  shapes.add(nose);
  shapes.add(noseLine);
  shapes.add(mouth);
  shapes.add(lips);
  shapes.add(leftPupil);
  shapes.add(rightPupil);
  shapes.add(pLeftEye);
  shapes.add(pRightEye);
  shapes.add(topNosePiece);
  shapes.add(leftStick);
  shapes.add(rightStick);
}//end setup

void draw() {
  background(255);
  for (Shape s : shapes) {
    s.draw();
  }//end FOR
}//end setup

void keyPressed() {
}//end keyPressed

void mousePressed() {
  println("X =", mouseX, "AND Y =", mouseY);
}//end keyPressed
