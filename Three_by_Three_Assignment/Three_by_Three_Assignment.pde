//Global Variables
color black=0, whiteReset=255, red =#FC0000;
float rectWidth, rectHeight, pointdiameter;
//Points are organized by row and actually... hint-hint ... VALUE!!!
int numberOfPoints= 17;
float[] pointX = new float[numberOfPoints];
float[] pointY = new float[numberOfPoints];

//
void setup() 
{
  fullScreen();
  displayOrientation();
  //
  //Population
  rectWidth = appWidth*1/3;
  rectHeight = appHeight*1/3;
  pointdiameter = appWidth*1/60;
  //
  //FOR loops can be grouped
  for(int i=1; i<pointX.length; i+=4) {
   pointX[i] = appWidth*0/3;
  }
  for(int i=2; i<pointX.length; i+=4) {
  pointX[i] = appWidth*1/3;
  }
  for(int i=3; i<pointX.length; i+=4) {
   pointX[i] = appWidth*2/3;
  }
  for(int i=4; i<pointX.length; i+=4) {
  pointX[i] = appWidth*3/3;
  }
  //
  // Point Y for loops
  for(int i=1; i<pointY.length; i+=1) {
  pointY[i] = appHeight*0;
  }
  for(int i=5; i<pointY.length; i+=1) {
  pointY[i] = appHeight*1/3;
  }
  for(int i=9; i<pointY.length; i+=1) {
  pointY[i] = appHeight*2/3;
  }
  for(int i=13; i<pointY.length; i+=1) {
  pointY[i] = appHeight*3/3;  
  }
}//EndSetup
//
void draw() 
{
  rect(pointX[1], pointY[1], rectWidth, rectHeight);
  rect(pointX[2], pointY[2], rectWidth, rectHeight);
  rect(pointX[3], pointY[3], rectWidth, rectHeight);
  rect(pointX[4], pointY[4], rectWidth, rectHeight);
  rect(pointX[5], pointY[5], rectWidth, rectHeight);
  rect(pointX[6], pointY[6], rectWidth, rectHeight);
  rect(pointX[7], pointY[7], rectWidth, rectHeight);
  rect(pointX[8], pointY[8], rectWidth, rectHeight);
  rect(pointX[9], pointY[9], rectWidth, rectHeight);
  rect(pointX[10], pointY[10], rectWidth, rectHeight);
  rect(pointX[11], pointY[11], rectWidth, rectHeight);
  fill(black);
  //Starting pts for rect() must be 1-9& filled black
   ellipse(pointX[1], pointY[1], pointdiameter, pointdiameter);
   ellipse(pointX[2], pointY[2], pointdiameter, pointdiameter);
   ellipse(pointX[3], pointY[3], pointdiameter, pointdiameter);
   ellipse(pointX[5], pointY[5], pointdiameter, pointdiameter);
   ellipse(pointX[6], pointY[6], pointdiameter, pointdiameter);
   ellipse(pointX[7], pointY[7], pointdiameter, pointdiameter);
   ellipse(pointX[8], pointY[8], pointdiameter, pointdiameter);
   ellipse(pointX[9], pointY[9], pointdiameter, pointdiameter);
   ellipse(pointX[10], pointY[10], pointdiameter, pointdiameter);
   ellipse(pointX[11], pointY[11], pointdiameter, pointdiameter);
  fill(whiteReset);//Best prectice
  //
  fill(red);
   ellipse(pointX[4], pointY[4], pointdiameter, pointdiameter);
   ellipse(pointX[8], pointY[8], pointdiameter, pointdiameter);
   ellipse(pointX[12], pointY[12], pointdiameter, pointdiameter);
   ellipse(pointX[13], pointY[13], pointdiameter, pointdiameter);
   ellipse(pointX[14], pointY[14], pointdiameter, pointdiameter);
   ellipse(pointX[15], pointY[15], pointdiameter, pointdiameter);
   ellipse(pointX[16], pointY[16], pointdiameter, pointdiameter);
  fill(whiteReset);//Best Practice
}//EndDraw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//mousePressed
//
//End Main
