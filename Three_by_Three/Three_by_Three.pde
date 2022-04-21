//Global Variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float ellipseX, ellipseY, ellipseDiameterX, ellipseDiameterY;
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
buttonX2= appWidth*2/3; 
buttonY2= buttonY1; 
buttonWidth2= buttonWidth1;
buttonHeight2= buttonHeight1;
rectDisplayX= appWidth*1/8;
rectDisplayY= appHeight*1/8;
rectDisplayWidth= buttonWidth1;
rectDisplayHeight= buttonWidth1;
ellipseX= appWidth; 
ellipseY= appHeight;
ellipseDiameterX= appWidth;
ellipseDiameterY= appHeight;
}//EndSetup
//
void draw() 
{
 rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1); //DIV: "Try Me"
 rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2); //DIV: "Me too"
 rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight ); //DIV: Display Rectangle
 rect(ellipseX, ellipseY, ellipseDiameterX, ellipseDiameterY); //DIV: Display Circle
 ellipse()
}//EndDraw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN
