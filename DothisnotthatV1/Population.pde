void population() {
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
}//End population
