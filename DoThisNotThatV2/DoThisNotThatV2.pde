//Global Variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float ellipseX, ellipseY, ellipseDiameterX, ellipseDiameterY;
float X, Y;
float titleX, titleY, titleWidth, titleHeight, titleX2, titleY2, titleWidth2, titleHeight2;
color black=#000000, white=#FFFFE3, blue=#45A2FC, resetDefaultInk=#FFFFFF; //Night Mode, blue is 00
Boolean rectON=false, ellipseON=false;
//
String title = "Click me";
PFont titleFont;
//
void setup() 
{  
//Display Geometry
fullScreen(); //displyWidth/Height
println(width, height, displayWidth, displayHeight);
String ls="Landscape or Square", p="Portrait", DO="DisplayOrientation:", instruct="Flip your phone";
//Swap display key variables for testing
int appWidth = displayWidth;
int appHeight = displayHeight;
String orientation = ( appWidth >= appHeight ) ? ls : p ;
println (DO, orientation);
if ( orientation==ls){ 
println("Phone orientation is good");
  }else{
  println(instruct);
appWidth = appWidth*0;
appHeight = appHeight*0;
  }
  println("App Geometry is:", "\tAppWidth:", appWidth, "\t\tApp Height:", appHeight);
//
//Population
buttonX1= appWidth*1/4 ; 
buttonY1= appHeight*3/4 ; 
buttonWidth1= appWidth*1/5; 
buttonHeight1= appHeight*1/5;
rectDisplayX= appWidth*1/8;
rectDisplayY= appHeight*1/8;
rectDisplayWidth= buttonWidth1;
rectDisplayHeight= buttonWidth1;
ellipseX= appWidth*6/8; 
ellipseY= rectDisplayY;
ellipseDiameterX= appWidth*1/8;// Note that the formula is not square, but the same
ellipseDiameterY= appHeight*1/8;
float ellipseRectXCenter = ellipseX + ellipseDiameterX*1/2 ;
float ellipseRectYCenter = ellipseY + ellipseDiameterY*1/2 ;
 X = ellipseRectXCenter;
 Y = ellipseRectYCenter;
 titleX = appWidth*2/7;
 titleY = appHeight*5/6;
 titleWidth = appWidth*1/5;
 titleHeight = appHeight*1/5;
 titleX2= appWidth*2/3; 
 titleY2= appHeight*5/6;
 titleWidth2= appWidth*1/5;
 titleHeight2= appHeight* 1/5;
 titleFont = createFont("Sitka Text", 55);
 
}//EndSetup
//
void draw() 
{
  background(black);
 rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1); //DIV: "Try Me"
 if(rectON==true && ellipseON==false) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight );
 //rect(ellipseX, ellipseY, ellipseDiameterX, ellipseDiameterY); //DIV: Display Circle
 
fill(blue);
textAlign(BOTTOM, LEFT);
textFont(titleFont, 70);
text(title, titleX, titleY, titleWidth, titleHeight);
fill(resetDefaultInk);
}//EndDraw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() 
{

 println("Before the Button:", "\tRect", rectON, "\tEllipse", ellipseON);
 //Note: "Thrid Button" is deleted due to Boolean Logic Error
 //Need button specifically to Reset Variable
  if (mouseX>=buttonX1 && mouseX<=buttonX1+buttonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1+buttonHeight1 ){
    if(rectON==true) {
rectON=false;
ellipseON=true;
} else {
  rectON=true;
  ellipseON=false;
}
  }
}//End mousePressed
//
//End MAIN
