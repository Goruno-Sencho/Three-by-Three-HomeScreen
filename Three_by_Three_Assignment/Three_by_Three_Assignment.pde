//Global Variables
color black=0, whiteReset=255;
float rectWidth, rectHeight, pointdiameter;
//Points are organized by row and actually... hint-hint ... VALUE!!!
float pointX1, pointY1, pointX2, pointY2, pointX3, pointY3, pointX4, pointY4;
float pointX5, pointY5, pointX6, pointY6, pointX7, pointY7, pointX8, pointY8;
float pointX9, pointY9, pointX10, pointY10, pointX11, pointY11, pointX12, pointY12;
float pointX13, pointY13, pointX14, pointY14, pointX15, pointY15, pointX16, pointY16;
//
void setup() 
{
  fullScreen();
  displayOrientation();
  //
  //Population
  rectWidth = appWidth*1/3;
  rectHeight = appHeight*1/2;
  pointdiameter = appWidth*1/60;
  pointX1 = appWidth*0;
  pointY1 = appHeight*0;
  pointX2= appWidth*; 
  pointY2= appHeight*0;
  pointX3= appWidth*; 
  pointY3= appHeight*0;
  pointX4= appWidth*; 
  pointY4= appHeight*0; 
  pointX5= appWidth*0; 
  pointY5= appHeight*; 
  pointX6= appWidth*; 
  pointY6= appHeight*;
  pointX7= appWidth*; 
  pointY7= appHeight*; 
  pointX8= appWidth*; 
  pointY8= appHeight*; 
  pointX9= appWidth*; 
  pointY9= appHeight*;
  pointX10= ; 
  pointY10= ; 
  pointX11= ; 
  pointY11= ; 
  pointX12= ; 
  pointY12= ;
  pointX13= ; 
  pointY13= ; 
  pointX14= ; 
  pointY14= ; 
  pointX15= ; 
  pointY15= ; 
  pointX16= ; 
  pointY16= ;
}//EndSetup
//
void draw() 
{
  rect(pointX1, pointY1, rectWidth, rectHeight);
  //rect(pointX2, pointY2, rectWidth, rectHeight);
  //rect(pointX3, pointY3, rectWidth, rectHeight);
  //rect(pointX4, pointY4, rectWidth, rectHeight);
  //rect(pointX5, pointY5, rectWidth, rectHeight);
  //rect(pointX6, pointY6, rectWidth, rectHeight);
  //rect(pointX7, pointY7, rectWidth, rectHeight);
  //rect(pointX8, pointY8, rectWidth, rectHeight);
  //rect(pointX9, pointY9, rectWidth, rectHeight);
  fill(black);
  //Starting pts for rect() must be 1-9& filled black
   ellipse(pointX1, pointY1, pointdiameter, pointdiameter);
   //ellipse(pointX2, pointY2, pointdiameter, pointdiameter);
   //ellipse(pointX3, pointY3, pointdiameter, pointdiameter);
   //ellipse(pointX5, pointY5, pointdiameter, pointdiameter);
   //ellipse(pointX6, pointY6, pointdiameter, pointdiameter);
   //ellipse(pointX7, pointY7, pointdiameter, pointdiameter);
   //ellipse(pointX8, pointY8, pointdiameter, pointdiameter);
   //ellipse(pointX9, pointY9, pointdiameter, pointdiameter);
   //ellipse(pointX10, pointY10, pointdiameter, pointdiameter);
   //ellipse(pointX11, pointY11, pointdiameter, pointdiameter);
  fill(red);
   //ellipse(pointX4, pointY4, pointdiameter, pointdiameter);
   //ellipse(pointX8, pointY8, pointdiameter, pointdiameter);
   //ellipse(pointX12, pointY12, pointdiameter, pointdiameter);
   //ellipse(pointX13, pointY13, pointdiameter, pointdiameter);
   //ellipse(pointX14, pointY14, pointdiameter, pointdiameter);
   //ellipse(pointX15, pointY15, pointdiameter, pointdiameter);
   //ellipse(pointX16, pointY16, pointdiameter, pointdiameter);
  fill(whiteReset);//Best Practice
}//EndDraw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//mousePressed
//
//End Main
