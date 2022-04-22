void GUI_draw() {
background(black);
 rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1); //DIV: "Try Me"
 rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2); //DIV: "Me too"
 if(rectON==true && ellipseON==false) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight );
 //rect(ellipseX, ellipseY, ellipseDiameterX, ellipseDiameterY); //DIV: Display Circle
 if (rectON==false && ellipseON==true) ellipse(X, Y, ellipseDiameterX, ellipseDiameterY);
//
 textDraw();
 //
}//End GUI_draw
