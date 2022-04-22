//Global Variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float ellipseX, ellipseY, ellipseDiameterX, ellipseDiameterY;
float X, Y;
float titleX, titleY, titleWidth, titleHeight, titleX2, titleY2, titleWidth2, titleHeight2;
color black=#000000, white=#FFFFE3, blue=#45A2FC, resetDefaultInk=#FFFFFF; //Night Mode, blue is 00
Boolean rectON=false, ellipseON=false;
String title = "Click me";
String title2 = "    No, me!";
PFont titleFont;
//
void setup() 
{  
//Display Geometry
  fullScreen(); //displyWidth/Height
  displayOrientation();
  population();

}//EndSetup
//
void draw() 
{
  GUI_draw();
}//EndDraw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() 
{
  buttonsMousePressed();
}//End mousePressed
//
//End MAIN
