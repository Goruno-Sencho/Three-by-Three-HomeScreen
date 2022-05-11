//Global Variables
color black=0, whiteReset=255, red=#FF0004;
color lime=#98FF00, Dlime=#518900, Lblue=#03B9FF, Orange=#FF8103;
Boolean turnOnPic1=false, turnOnPic2=false, turnOnPic3=false, turnOntext1=false;
Boolean turnOnElipse=false, turnOnGreen=false;
float rectWidth, rectHeight, pointdiameter;
//Points are organized by row and actually... hint-hint ... VALUE!!!
int numberOfPoints= 17;
float[] pointX = new float[numberOfPoints];
float[] pointY = new float[numberOfPoints];
int numberofButtons = 10;//Quit, Reset, 1per square for minimum
float[] buttonX= new float[numberofButtons];
float[] buttonY= new float[numberofButtons];
float[] buttonWidth= new float[numberofButtons];
float[] buttonHeight= new float[numberofButtons];
PImage img;
PImage Pic1, Pic2, Pic3;
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
float rectXPic3, rectYPic3, rectWidthPic3, rectHeightPic3;
float text1X, text1Y, text1Width, text1Height;
float text2X, text2Y, text2Width, text2Height;
int pic1Width = 400;
int pic1Height = 400;
int pic2Width = 400;
int pic2Height =400;
int pic3Width = 800;
int pic3Height = 326;
String text1 = "Press the button to Quit";
PFont titleFont;
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
  buttonX[2] = appWidth*(2.0/4.0);
  buttonY[2] = appHeight*(2.0/6.0);
  buttonWidth[2] = appWidth*(1.0/12.0);
  buttonHeight[2] = appHeight*(1.0/16.0);
  //
  buttonX[3] = appWidth*(11.0/15.0);
  buttonY[3] = appHeight*(11.0/15.0);
  buttonWidth[3] = appWidth*(1.0/3.0)*(1.0/5.0);
  buttonHeight[3] = appHeight*(1.0/3.0)*(1.0/5.0);
  //
  buttonX[4] = appWidth*(4.0/7.0);
  buttonY[4] = appHeight*(1.0/1000.0);
  buttonWidth[4] = appWidth*(1.0/2.0)*(1.0/6.0);
  buttonHeight[4] = appHeight*(1.0/3.0)*(1.0/5.0);
  //
  buttonX[5] = appWidth*(11.0/15.0);
  buttonY[5] = appHeight*(4.0/10.0);
  buttonWidth[5] = appWidth*(1.0/3.0)*(1.0/5.0);
  buttonHeight[5] = appHeight*(1.0/3.0)*(1.0/5.0);
  //
  buttonX[6] = appWidth*(1.0/8.0);
  buttonY[6] = appHeight*(7.0/10.0);
  buttonWidth[6] = appWidth*(2.0/3.0)*(2.0/10.0);
  buttonHeight[6] = appHeight*(1.0/3.0)*(1.0/5.0);
  //
  buttonX[7] = appWidth*(1.0/1000.0);
  buttonY[7] = appHeight*(1.0/3.0);
  buttonWidth[7] = appWidth*(2.0/3.0)*(2.0/10.0);
  buttonHeight[7] = appHeight*(1.0/3.0)*(1.0/5.0);
  //
  buttonX[8] = appWidth*(2.0/6.0);
  buttonY[8] = appHeight*(9.0/10.0);
  buttonWidth[8] = appWidth*(2.0/3.0)*(2.0/10.0);
  buttonHeight[8] = appHeight*(1.0/3.0)*(1.0/5.0);
  //
  rectXPic1=pointX[5];
  rectYPic1=pointY[5];
  rectWidthPic1=rectWidth;
  rectHeightPic1=rectHeight;
  //
  rectXPic2=pointX[2];
  rectYPic2=pointY[2];
  rectWidthPic2=rectWidth;
  rectHeightPic2=rectHeight;
  //
  rectXPic3=pointX[6];
  rectYPic3=pointY[6];
  rectWidthPic3=rectWidth;
  rectHeightPic3=rectHeight;
  //
  text1X = pointX[7];
  text1Y = pointY[7];
  text1Width = rectWidth;
  text1Height = rectHeight;
  //
  text2X = pointX[8];
  text2Y = pointY[8];
  text2Width = rectWidth;
  text2Height = rectHeight;
  Pic1 = loadImage("ThreeByThree SpaceStation.jpg");
  Pic2 = loadImage("SpaceRoom.jpg");
  Pic3 = loadImage("space-220-restaurant-epcot-concept-art-800x326.jpg");
  //Pic4 = loadImage();
  //Pic5 = loadImage();
  //Pic6 = loadImage();
  //Pic7 = loadImage();
  //Pic8 = loadImage();
  printArray(buttonX);
  printArray(buttonY);
  //
  titleFont = createFont("Arial Black", 55);
  titleFont = createFont("Consolas Italic", 55);
}//EndSetup
//
void draw() 
{
  //image(Pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
  //image(Pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
  rect(pointX[1], pointY[1], rectWidth, rectHeight);
  
  rect(pointX[2], pointY[2], rectWidth, rectHeight); //Buttons chage the Colour of RECT(#2)
  fill(whiteReset);
  //
  rect(pointX[3], pointY[3], rectWidth, rectHeight);
  rect(pointX[4], pointY[4], rectWidth, rectHeight);
  rect(pointX[5], pointY[5], rectWidth, rectHeight);
  if(turnOnGreen==true) fill(lime);
  //
  rect(pointX[6], pointY[6], rectWidth, rectHeight);
  rect(pointX[7], pointY[7], rectWidth, rectHeight);
  fill(black);
  if(turnOntext1==true) text(text1, text1X, text1Y, text1Width, text1Height);
  fill(whiteReset);
  rect(pointX[8], pointY[8], rectWidth, rectHeight);
  fill(black);
  //if(turnOnElipse==true);
  fill(whiteReset);
  //
  rect(pointX[9], pointY[9], rectWidth, rectHeight);
  rect(pointX[10], pointY[10], rectWidth, rectHeight);
  rect(pointX[11], pointY[11], rectWidth, rectHeight);
  if(turnOnPic1==true) image(Pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1);
  if(turnOnPic2==true) image(Pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
  if(turnOnPic3==true) image(Pic3, rectXPic3, rectYPic3, rectWidthPic3, rectHeightPic3);
 
  
  //
  fill(whiteReset);
  fill(black);
  textAlign(CENTER, CENTER);
  //
  textFont(titleFont, 30);
  //text(text2, text2X, text2Y, text2Width, text2Height);
  //text(text1, text1X, text1Y, text1Width, text1Height);
  fill(whiteReset);
  //
  //Hover Over Effect is Dlime
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
  } //Button 4 (Reset), the whole section
  if (mouseX>=buttonX[4] && mouseX<=buttonX[4]+buttonWidth[4] && mouseY>=buttonY[4] && mouseY<=buttonY[4]+buttonHeight[4]) {
  fill(Dlime);
  rect(buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);
  } else {
    fill(lime);
    rect(buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);
  }//Button 4, NOT reset
  if (mouseX>=buttonX[5] && mouseX<=buttonX[5]+buttonWidth[5] && mouseY>=buttonY[5] && mouseY<=buttonY[5]+buttonHeight[5]) {
  fill(red);
  rect(buttonX[5], buttonY[5], buttonWidth[5], buttonHeight[5]);
  } else {
    fill(lime);
    rect(buttonX[5], buttonY[5], buttonWidth[5], buttonHeight[5]);
    
  }//
  if (mouseX>=buttonX[6] && mouseX<=buttonX[6]+buttonWidth[6] && mouseY>=buttonY[6] && mouseY<=buttonY[6]+buttonHeight[6]) {
  fill(Dlime);
  rect(buttonX[6], buttonY[6], buttonWidth[6], buttonHeight[6]);
  } else {
    fill(lime);
    rect(buttonX[6], buttonY[6], buttonWidth[6], buttonHeight[6]);
  }//
  if (mouseX>=buttonX[7] && mouseX<=buttonX[7]+buttonWidth[7] && mouseY>=buttonY[7] && mouseY<=buttonY[7]+buttonHeight[7]) {
  fill(Dlime);
  rect(buttonX[7], buttonY[7], buttonWidth[7], buttonHeight[7]);
  } else {
    fill(lime);
    rect(buttonX[7], buttonY[7], buttonWidth[7], buttonHeight[7]);
  }
  if (mouseX>=buttonX[8] && mouseX<=buttonX[8]+buttonWidth[8] && mouseY>=buttonY[8] && mouseY<=buttonY[8]+buttonHeight[8]) {
  fill(Dlime);
  rect(buttonX[8], buttonY[8], buttonWidth[8], buttonHeight[8]);
  } else {
    fill(lime);
    rect(buttonX[8], buttonY[8], buttonWidth[8], buttonHeight[8]);
  }
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
  //
}//EndDraw
//
void keyPressed() {
if ( key=='Q' || key=='q' ) exit();
}//End keyPressed
//
void mousePressed() {
if (mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1]){
  println("BTN 1 Activated");
if(turnOnPic1==true) {
  turnOnPic1=false;
} else {
  turnOnPic1=true;
}
}
if (mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2]) {
println("BTN 2 Activated");
if(turnOnPic2==true) {
  turnOnPic2=false;
} else {
  turnOnPic2=true;
}
}
if (mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3]) {
println("BTN 3 Activated");
if(turnOnPic3==true){
  turnOnPic3=false;
} else {
  turnOnPic3=true;
}
}
if (mouseX>=buttonX[4] && mouseX<=buttonX[4]+buttonWidth[4] && mouseY>=buttonY[4] && mouseY<=buttonY[4]+buttonHeight[4]){
println("BTN 4.2 Activated");
}
if (mouseX>=buttonX[5] && mouseX<=buttonX[5]+buttonWidth[5] && mouseY>=buttonY[5] && mouseY<=buttonY[5]+buttonHeight[5])exit();{
println("BTN 5 Activated");
if(turnOntext1==false) {
  turnOntext1=true;
} else {
  turnOntext1=true;
}
}
//
if (mouseX>=buttonX[7] && mouseX<=buttonX[7]+buttonWidth[7] && mouseY>=buttonY[7] && mouseY<=buttonY[7]+buttonHeight[7]){
println("BTN 7 Activated");
  if(turnOnElipse==true) {
  turnOnElipse=false;
} else {
  turnOnElipse=true;
}
}
//
if (mouseX>=buttonX[8] && mouseX<=buttonX[8]+buttonWidth[8] && mouseY>=buttonY[8] && mouseY<=buttonY[8]+buttonHeight[8]){
println("BTN 8 Activated");
if(turnOnGreen==false) {
  turnOnGreen=true;
} else {
  turnOnGreen=false;
}
}
//Reset Button
if (mouseX>=pointX[3] && mouseX<=pointX[3]+rectWidth && mouseY>=pointY[3] && mouseY<=pointY[3]+rectHeight) {
println("BTN Reset Activated");
turnOnPic1=false;
turnOnPic2=false;
turnOnPic3=false;
turnOntext1=false;
turnOnElipse=false;
turnOnGreen=true;
}
}//mousePressed
//
//End Main
