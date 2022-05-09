PFont titleFont;

void instructionsText(){
  fill(0);
  textSize(50);
  text("Welcome to Pong", 75, 110);
  textSize(25);
  text("Choose paddle speed:\nSlow (EASY): RightPaddle (press '1') | LeftPaddle (press 'e')\nMedium: RightPaddle (press '2') | LeftPaddle (press 'm')\nFast (HARD): RightPaddle (press '3') | LeftPaddle (press 'h')", width*1/10, height*1/4);
  text("Left Paddle Controls: W (Up) | S (Down)\nRight Paddle Controls: Up Arrow Key | Down Arrow Key", width*1/10, height*1/2);
}
