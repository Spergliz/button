//global 
float quitButtonX, quitButtonY, quitButtonWidth, quitbuttonHeight;
color red=#FA0505, blue=#0581FA, resetButtonColour=#FFFFFF, buttonfill=#AD9DF0;// non nightmode
//
void setup() {
  size(500, 300);
  //
  int centerX = width/2;
  int centerY = height/2;
  int centeringbuttonWidth = width*1/4;
  int centeringbuttonHeight = height*1/4;
  quitButtonX = centerX -centeringbuttonWidth;
  quitButtonY = centerY - centeringbuttonHeight;
  quitButtonWidth = width*1/2;
  quitbuttonHeight = height*1/2;
}
//
void draw()
{
  //hover
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitbuttonHeight ) {
    buttonfill = red;
  } else {
  buttonfill =blue;
}

rect(quitButtonX, quitButtonY, quitButtonWidth, quitbuttonHeight);
fill(resetButtonColour);
fill(buttonfill);
//println("X-value", quitButtonX, "\t", mouseX,"\t", quitButtonX+quitButtonWidth,"\t\t Look at the middle value");
//println("X-value", quitButtonY, "\t", mouseX,"\t", quitButtonY+quitbuttonHeight,"\t\t Look at the middle value");
}
//
void keyPressed() {
}
//
void mousePressed() { 
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitbuttonHeight) exit();
}
