int appWidth, appHeight;
//
void displayOrientation() {
println(width, height, displayWidth, displayHeight);
String ls="Landscape or Square", p="Portrait", DO="DisplayOrientation:", instruct="Flip your phone";
//Swap display key variables for testing
appWidth = displayWidth;
appHeight = displayHeight;
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
}
//End displayOrientation
