//Global Variables
color black=0, whiteReset=255;
color lime=#98FF00, Dlime=#518900, Lblue=#03B9FF, Orange=#FF8103;
color red=color(255, 0, 0);
Boolean turnOnDlime=false, turnOnLblue=false, turnOnOrange=false;
float rectWidth, rectHeight, pointdiameter;
//Points are organized by row and actually... hint-hint ... VALUE!!!
int numberOfPoints= 17;
float[] pointX = new float[numberOfPoints];
float[] pointY = new float[numberOfPoints];
int numberofButtons = 4;//Quit, Reset, 1per square for minimum
float[] buttonX= new float[numberofButtons];
float[] buttonY= new float[numberofButtons];
float[] buttonWidth= new float[numberofButtons];
float[] buttonHeight= new float[numberofButtons];
PImage Pic1, Pic2, Pic3;
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
  //
  buttonX[1] = appWidth*(1.0/3.0)*(1/3.0); //Section1; subsection 2
  buttonY[1] = appHeight*(1.0/3.0)*(1.0/3.0);//Section1; subsection 2
  buttonWidth[1] = appWidth*(1.0/3.0)*(1.0/3.0); //Width Denominator count = 9...1/9
  buttonHeight[1] = appHeight*(1.0/3.0)*(1.0/3.0); //Height Denominator count = 9...1/9
  //
  buttonX[2] = appWidth*(3.0/6.0);
  buttonY[2] = appHeight*(2.0/6.0);
  buttonWidth[2] = appWidth*(1.0/3.0)*(1/2.0);
  buttonHeight[2] = appHeight*(1.0/3.0)*(1.0/2.0);
  //
  buttonX[3] = appWidth*(11.0/15.0);
  buttonY[3] = appHeight*(11.0/15.0);
  buttonWidth[3] = appWidth*(1.0/3.0)*(1.0/5.0);
  buttonHeight[3] = appHeight*(1.0/3.0)*(1.0/5.0);
  //
  //buttonX[4] = appWidth*(11.0/15.0);
  //buttonY[4] = appHeight*(11.0/15.0);
  //buttonWidth[4] = appWidth*(1.0/3.0)*(1.0/5.0);
  //buttonHeight[4] = appHeight*(1.0/3.0)*(1.0/5.0);
  //
 // buttonX[5] = appWidth*(11.0/15.0);
  //buttonY[5] = appHeight*(11.0/15.0);
 // buttonWidth[5] = appWidth*(1.0/3.0)*(1.0/5.0);
  //buttonHeight[5] = appHeight*(1.0/3.0)*(1.0/5.0);
  //
  //buttonX[6] = appWidth*(11.0/15.0);
  //buttonY[6] = appHeight*(11.0/15.0);
  //buttonWidth[6] = appWidth*(1.0/3.0)*(1.0/5.0);
  //buttonHeight[6] = appHeight*(1.0/3.0)*(1.0/5.0);
  //Pic1 = loadImage("ThreeByThree SpaceStation.jpg");
  //Pic2 = loadImage("SpaceRoom.jpg");
  //Pic3 = loadImage(
  printArray(buttonX);
  printArray(buttonY);
}//EndSetup
//
void draw() 
{
  rect(pointX[1], pointY[1], rectWidth, rectHeight);
  //
  if(turnOnDlime==true) fill(Dlime);
  //if(turnOnLblue==true) fill(Lblue);
  //if(turnOnOrange==true) fill(Orange);
  rect(pointX[2], pointY[2], rectWidth, rectHeight); //Buttons chage the Colour of RECT(#2)
  fill(whiteReset);
  //
  rect(pointX[3], pointY[3], rectWidth, rectHeight);
  rect(pointX[4], pointY[4], rectWidth, rectHeight);
  rect(pointX[5], pointY[5], rectWidth, rectHeight);
  rect(pointX[6], pointY[6], rectWidth, rectHeight);
  rect(pointX[7], pointY[7], rectWidth, rectHeight);
  rect(pointX[8], pointY[8], rectWidth, rectHeight);
  rect(pointX[9], pointY[9], rectWidth, rectHeight);
  rect(pointX[10], pointY[10], rectWidth, rectHeight);
  rect(pointX[11], pointY[11], rectWidth, rectHeight);
  //
  //Hover Over is Dlime
  if (mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1]) {
  fill(Dlime);
  rect(buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
  } else {
    fill(lime);
    rect(buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
  } //Button 1
  if (mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2]) {
   fill(Dlime);
  rect(buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]);
  } else {
    fill(lime);
    rect(buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]);
  } //Button 2
  if (mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3]) {
  fill(Dlime);
  rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  } else {
   fill(lime);
    rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  } //Button 3
  if (mouseX>=pointX[3] && mouseX<=pointX[3]+rectWidth && mouseY>=pointY[3] && mouseY<=pointY[3]+rectHeight) {
   fill(Dlime);
  rect(pointX[3], pointY[3], rectWidth, rectHeight);
  } else {
   fill(lime);
   rect(pointX[3], pointY[3], rectWidth, rectHeight);
  } //Button 4 (Reset), thw whole section
  fill(whiteReset);
  //
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
void mousePressed() {
if (mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1]) {
println("BTN 1 Activated");
if() {
} else
{
}
turnOnDlime=true;
}
if (mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2]) {
println("BTN 2 Activated");
turnOnLblue=true;
}
if (mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3]) {
println("BTN 3 Activated");
turnOnOrange=true;
}
//Reset Button
if (mouseX>=pointX[3] && mouseX<=pointX[3]+rectWidth && mouseY>=pointY[3] && mouseY<=pointY[3]+rectHeight) {
println("BTN 4 Activated");
turnOnDlime=false;
turnOnLblue=false;
turnOnOrange=false;
}
}//mousePressed
//
//End Main
