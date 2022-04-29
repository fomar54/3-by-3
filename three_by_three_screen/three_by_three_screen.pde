//Global Variables
color black=0, resetWhite=255, red=color(255, 0, 0); //Not night mode (lots of Blue)
float rectWidth, rectHeight, ptDiameter;
//Points are organized by row and actaully ... hint-hint ... value
int numberOfPoints = 17;
float[] ptX = new float[numberOfPoints];
float[] ptY = new float[numberOfPoints];
int numberofButtons = 4;
float  []buttonX= new float[numberofButtons];
float  []buttonY= new float[numberofButtons];
float  []buttonWidth= new float[numberofButtons];
float  []buttonHeight = new float[numberofButtons];
int  i,j ;
//

void setup()
{
 fullScreen(); //displayWidth, displayHeight
  displayOrientation();
  //
  //Population
  rectWidth = appWidth*1/3;
  rectHeight = appHeight*1/3;
  ptDiameter = appWidth*1/50;
  
  //
  //Next Four FOR Loops can be grouped because CODE is similar
  for(int j=0; j<4;j++){
  for (int i=1; i<ptX.length; i+=4) {
    ptX[i+j] = appWidth*j/3;
  }
  }
   

    for(int j=0; j<4;j++){
  for (int i=1; i<ptX.length; i++) {
    ptY[i+j] = appWidth*j/3;
  }
    }
    
    
  //
  //Verifying Array Read-in
  print("\nX-values are: ");
  printArray(ptX);
  println("\nY-values are: ");
  printArray(ptY);
  //
  buttonX[1] = appWidth *(1.0/3.0)*(1.0/3.0);//section 1; subsection 2
  buttonY[1] = appHeight*(1.0/3.0)*(1.0/3.0) ;//section1; subsection 2 
  buttonHeight[1] =appHeight*(1.0/3.0)*(1.0/3.0);
  buttonWidth[1] = appWidth*(1.0/3.0)*(1.0/3.0);
  //
    buttonX[2] = appWidth *3.0/6.0;//section 2 subsection 2 , numerator 
  buttonY[2] = appHeight*2.0/6.0;//section 2 subsection 2
  buttonHeight[2] = appHeight*1/3*1/2;
  buttonWidth[2] = appWidth*1/3*1/2 ;//denominator of 6
  // 
  buttonX[3] = appWidth*(11.0/15.0) ;//subsection 3, subsection 2
  buttonY[3] = appHeight*(13.0/15.0) ;//section3,subsection 4
  buttonHeight[3] = appHeight*(1.0/3.0)*(1/5.0) ;//denominatoris 15 
  buttonWidth[3] = appWidth*(1.0/3.0)*(1.0/5.) ;
  //
  printArray(buttonHeight);
  printArray(buttonWidth);
 printArray(buttonX);
  printArray (buttonY);
}//End setup
//
void draw() {
  //Rectangles must be 3 by 3
  //
  //Next 3 FOR Loops can be GROUPED because CODE all the same
  for (int j=4; i<2; j+=4) {
    for (int i=1; i<4;i++){
    rect(ptX[i], ptY[i], rectWidth, rectHeight);
    fill(black);
    ellipse(ptX[i], ptY[i], ptDiameter, ptDiameter);
    fill(resetWhite);
  }
  
  }
  for (int i=9; i<12; i++) {
    rect(ptX[i], ptY[i], rectWidth, rectHeight);
    fill(black);
    ellipse(ptX[i], ptY[i], ptDiameter, ptDiameter);
    fill(resetWhite);
  }
  //
  fill(red);
  //Points for all other ellipses must be red
  //Next two FOR Loops can be GROUPED because CODE same
  for (int j=4; i <2 ; j+=4);
  for (int i=4; i<13; i+=4) {
    ellipse(ptX[i+j], ptY[i+j], ptDiameter, ptDiameter);
  }
  for (int i=13; i<ptX.length; i++) {
    ellipse(ptX[i], ptY[i], ptDiameter, ptDiameter);
  }
 

  fill(black);
  rect(buttonHeight[1],buttonWidth[1],buttonX[1],buttonY[1]);
 rect(buttonHeight[2],buttonWidth[2],buttonX[2],buttonY[2]);
 rect(buttonHeight[3],buttonWidth[3],buttonX[3],buttonY[3]);
  fill(resetWhite); //Best Practice
 //
 fill(black);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program
