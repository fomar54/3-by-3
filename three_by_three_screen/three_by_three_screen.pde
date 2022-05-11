//Global Variables
color black=0, resetWhite=255, pink=#FF00E6, buttonColour,brown=#BC6F2F,grey=#C1B9B9,drakergrey=#907F7F, darkgrey=#9B9393; //Not night mode (lots of Blue)
color red=color(255, 0, 0), yellow=color(255, 255, 0); //Night Mode example colours, no BLUE
Boolean turnOnYellow=false, turnOnPink=false, turnOnBrown=false,turnongrey=false ,turnondarkgrey=false,turnONphoto=false;
String buttonText1= "Quit";
float rectWidth, rectHeight, ptDiameter;
PImage pic;
PFont buttonFont ;
//Points are organized by row and actaully ... hint-hint ... value
int numberOfPoints = 18;
float[] ptX = new float[numberOfPoints];
float[] ptY = new float[numberOfPoints];
; //Quit, Reset, 1 per square for minimum
int numberofButtons = 6;
float[] buttonX = new float[numberofButtons];
float[] buttonY = new float[numberofButtons];
float[] buttonWidth = new float[numberofButtons];
float[] buttonHeight = new float[numberofButtons];
//
void setup()
{
  size(900, 650); //fillScreen(); //displayWidth, displayHeight
  displayOrientation();
  pic = loadImage ("517359_shutterstock_109444037601_734637.jpeg");
  //
    int picWidth = 600; 
int picHeight = 748;
  //Population
  rectWidth = appWidth*1/3;
  rectHeight = appHeight*1/3;
  ptDiameter = appWidth*1/50;
  //
  ptX[1] = ptX[5] = ptX[9] = ptX[13] = appWidth*0/3;
  ptX[2] = ptX[6] = ptX[10] = ptX[14] = appWidth*1/3;
  ptX[3] = ptX[7] = ptX[11] = ptX[15] = appWidth*2/3;
  ptX[4] = ptX[8] = ptX[12] = ptX[16] = appWidth*3/3;
  //
  ptY[1] = ptY[2] = ptY[3] = ptY[4] = appHeight*0/3;
  ptY[5] = ptY[6] = ptY[7] = ptY[8] = appHeight*1/3;
  ptY[9] = ptY[10] = ptY[11] = ptY[12] = appHeight*2/3;
  ptY[13] = ptY[14] = ptY[15] = ptY[16] = appHeight*3/3;
  //
  buttonX[1] = appWidth*(0.0/3.0)*(1.0/3.0); //Section 1; subsection 2, numerator is 1
  buttonY[1] = appHeight*(1.0/3.0)*(1.0/3.0); //Section 1; subsection 2, numerator is 1
  buttonWidth[1] = appWidth*(1.0/3.0)*(1.0/5.0); //Width Denominator count = 9 ... 1/9
  buttonHeight[1] = appHeight*(1.0/3.0)*(1.0/5.0); //Height Denominator count = 9 ... 1/9
  //
  buttonX[2] = appWidth*(0.0/6.0); //Section 2, subsection 2, numerator is 3
  buttonY[2] = appHeight*(5.0/6.0); //Section 2, subsection 1, numerator is 2
  buttonWidth[2] = appWidth*(1.0/3.0)*(1.0/5.0); //Denominator of 6
  buttonHeight[2] = appHeight*(1.0/3.0)*(1.0/5.0); //Denominator of 6
  //
  buttonX[3] = appWidth*(11.0/15.0); //Section 3, subsection 2, Numerator is 11
  buttonY[3] = appHeight*(13.0/15.0); //Section 3, subsection 4, Numerator is 14
  buttonWidth[3] = appWidth*(1.0/3.0)*(1.0/5.0); //Denominator is 15
  buttonHeight[3] = appHeight*(1.0/3.0)*(1.0/5.0); //Denominator is 15
  //
   buttonX[4] = appWidth*(13.0/15.0); //Section 3, 
  buttonY[4] = appHeight*(13.0/15.0); //Section 3,
  buttonWidth[4] = appWidth*(1.0/3.0)*(1.0/5.0); 
  buttonHeight[4] = appHeight*(1.0/3.0)*(1.0/5.0); 
//
  printArray(buttonX);
  printArray(buttonY);
  printArray(buttonWidth);
  printArray(buttonHeight);
  buttonFont = createFont ("Serif", 67);

}//End setup
//
void draw() {
  //Rectangles must be 3 by 3sasaa  
  rect(ptX[1], ptY[1], rectWidth, rectHeight);
  //
  if ( turnOnYellow==true ) fill(darkgrey);
  if ( turnOnPink==true ) fill (darkgrey); //Overwrites the yellow
  if ( turnongrey==true ) fill(darkgrey);
  if ( turnOnBrown==true ) fill(darkgrey); //Overwrites the yellow & pink
  if(turnondarkgrey==true) fill(darkgrey);
  if(turnONphoto == true)
  rect(ptX[2], ptY[2], rectWidth, rectHeight); //Buttons change the Colour of RECT(#2
    textFont(buttonFont,15);
 text(buttonText1,buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
 
  fill(resetWhite);
  //
  rect(ptX[3], ptY[3], rectWidth, rectHeight);
  rect(ptX[5], ptY[5], rectWidth, rectHeight);
  rect(ptX[6], ptY[6], rectWidth, rectHeight);
  rect(ptX[7], ptY[7], rectWidth, rectHeight);
  rect(ptX[9], ptY[9], rectWidth, rectHeight);
  rect(ptX[10], ptY[10], rectWidth, rectHeight);
  rect(ptX[11], ptY[11], rectWidth, rectHeight);
  //
  
 
  //Four different rect() for buttons
  //HoverOver is Yellow
  if ( mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1] ) {
    fill(darkgrey);
    rect(buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]); //same rect() as above
  } else {
    fill(grey);
    rect(buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]); //same rect() as above
  } //Button 1
  if ( mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2] ) {
    fill(darkgrey );
    rect(buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]); //same rect() as above
  } else {
    fill(grey);
    rect(buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]); //same rect() as above
  } //Button 2
  if ( mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3] ){
    fill(darkgrey);
    rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  } else {
    fill(grey);
    rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  } //Button 3
if ( mouseX>=buttonX[4] && mouseX<=buttonX[4]+buttonWidth[4] && mouseY>=buttonY[4] && mouseY<=buttonY[4]+buttonHeight[4] ){
    fill(darkgrey);
    rect(buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);
  } else {
    fill(grey);
    rect(buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);
  } 
 
    //button 4 
  
  if ( mouseX>=ptX[3] && mouseX<=ptX[3]+rectWidth && mouseY>=ptY[3] && mouseY<=ptY[3]+rectHeight ) {
    fill(yellow);
    rect(ptX[3], ptY[3], rectWidth, rectHeight);
  } else {
    fill(black);
    rect(ptX[3], ptY[3], rectWidth, rectHeight);
    
}//Button 4 (Reset), the whole section
  fill(black); //Best Practice
  //
  fill(black);
  //Starting pts for rect() must be 1-9 & filled black
  ellipse(ptX[1], ptY[1], ptDiameter, ptDiameter);
  ellipse(ptX[2], ptY[2], ptDiameter, ptDiameter);
  ellipse(ptX[3], ptY[3], ptDiameter, ptDiameter);
  ellipse(ptX[5], ptY[5], ptDiameter, ptDiameter);
  ellipse(ptX[6], ptY[6], ptDiameter, ptDiameter);
  ellipse(ptX[7], ptY[7], ptDiameter, ptDiameter);
  ellipse(ptX[9], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[10], ptDiameter, ptDiameter);
  ellipse(ptX[11], ptY[11], ptDiameter, ptDiameter);
  fill(resetWhite); //Best Practice
  //
  fill(red);
  //Points for all other ellipses must be red
  ellipse(ptX[4], ptY[4], ptDiameter, ptDiameter);
  ellipse(ptX[8], ptY[8], ptDiameter, ptDiameter);
  ellipse(ptX[12], ptY[12], ptDiameter, ptDiameter);
  ellipse(ptX[13], ptY[13], ptDiameter, ptDiameter);
  ellipse(ptX[14], ptY[14], ptDiameter, ptDiameter);
  ellipse(ptX[15], ptY[15], ptDiameter, ptDiameter);
  ellipse(ptX[16], ptY[16], ptDiameter, ptDiameter);
  fill(resetWhite); //Best Practice
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  if (mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1]) {
    println("BTN 1 Activated");
    turnOnYellow=true;
  } 
  if (mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2]);
 image(pic,ptX[1], ptY[1], rectWidth, rectHeight ); {
    println("BTN 2 Activated");
     turnONphoto=true ;
  }
  if (mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3]) {
    println("BTN 3 Activated");
       turnONphoto=true ;

  }
  if (mouseX>=buttonX[4] && mouseX<=buttonX[4]+buttonWidth[4] && mouseY>=buttonY[4] && mouseY<=buttonY[4]+buttonHeight[4]) exit();

  //Reset Button
  if (mouseX>=ptX[3] && mouseX<=ptX[3]+rectWidth && mouseY>=ptY[3] && mouseY<=ptY[3]+rectHeight) {
    println("BTN 5 Activated");
    turnOnYellow=false;
    turnOnPink=false;
    turnOnBrown=false;
    turnONphoto=false;
    turnondarkgrey=false;
  }//End reset
}//End mousePressed
//
//End MAIN Program
