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
String title2 = "     Or me";
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
  background(black);
 rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1); //DIV: "Try Me"
 rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2); //DIV: "Me too"
 if(rectON==true && ellipseON==false) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight );
 //rect(ellipseX, ellipseY, ellipseDiameterX, ellipseDiameterY); //DIV: Display Circle
 if (rectON==false && ellipseON==true) ellipse(X, Y, ellipseDiameterX, ellipseDiameterY);
//
fill(blue);
textAlign(BOTTOM, LEFT);
textFont(titleFont, 70);
text(title, titleX, titleY, titleWidth, titleHeight);
text(title2, titleX2, titleY2, titleWidth2, titleHeight2);
fill(resetDefaultInk);
}//EndDraw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() 
{
rectON = false;
ellipseON = false;
if (mouseX>=buttonX1 && mouseX<=buttonX1+buttonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1+buttonHeight1 )rectON = true;
if (mouseX>=buttonX2 && mouseX<=buttonX2+buttonWidth2 && mouseY>=buttonY2 && mouseY<=buttonY2+buttonHeight2 )ellipseON = true;
}//End mousePressed
//
//End MAIN
