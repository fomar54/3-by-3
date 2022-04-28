//Global Variables
color black=0, resetWhite=255, red=color(255, 0, 0); //Not night mode (lots of Blue)
float rectWidth, rectHeight, ptDiameter;
//Points are organized by row and actaully ... hint-hint ... value
int numberOfPoints = 17;
float[] ptX = new float[numberOfPoints];
float[] ptY = new float[numberOfPoints];
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
  for (int i=1; i<ptx.length; i+=4) {
    ptX[i+j] = appWidth*j/3;
  }
  }
   

    for(int j=0; j<4;j++){
  for (int i=1; i<ptx.length; i++) {
    ptY[i+j] = appWidth*j/3;
  }
  
    
  //
  //Verifying Array Read-in
  print("\nX-values are: ");
  printArray(ptX);
  println("\nY-values are: ");
  printArray(ptY);
}//End setup
//
void draw() {
  //Rectangles must be 3 by 3
  //
  //Next 3 FOR Loops can be GROUPED because CODE all the same
  for (int j=0; i<2; j+=4) {
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
  for (int j=0
  for (int i=4; i<13; i+=4) {
    ellipse(ptX[i+j], ptY[i+j], ptDiameter, ptDiameter);
  }
  for (int i=13; i<ptX.length; i++) {
    ellipse(ptX[i], ptY[i], ptDiameter, ptDiameter);
  }
  fill(resetWhite); //Best Practice
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program
