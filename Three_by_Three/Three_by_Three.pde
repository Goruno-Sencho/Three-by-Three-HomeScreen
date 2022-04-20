//Global Variables
float buttonX1, buttonY, buttonWidth, buttonHeight;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
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
println(appWidth, appHeight);
//
/*Population
buttonX1= ; 
buttonY= ; 
buttonWidth= ; 
buttonHeight;
buttonX2= ; 
buttonY2= ; 
buttonWidth2= ;
buttonHeight2= ;
*/
}//EndSetup
//
void draw() 
{
 //rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1); //DIV: "Try Me"
 //rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2); //DIV: "Me too"
 //rect(); //DIV: Display Rectangle
 //rect(); //DIV: Display Circle
}//EndDraw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN
