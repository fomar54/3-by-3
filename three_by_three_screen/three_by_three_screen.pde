//Global Variables
float  rectWidth, rectHeight, ptDiameter;
//points are orgainzed by ow 
color black = 0, resetWhite= 256, red= ;
float ptX1, ptV1, ptV2, ptX2, ptV3, ptX3, ptX4, ptV4;//organied into rows 
float ptX5, ptV5, ptX6, ptV6, ptX7, ptV7, ptX8, ptV8;
float ptX9, ptV9, ptX10, ptV10, ptV11, ptX11, ptX12, ptV12;
float ptX13, ptV13, pt14, ptX14, ptV15, ptX16, ptV16;
int numberOfPoints=17;

void setup() {
  fullScreen();
  
  displayOrientation();
  
  //population
  rectWidth = appWidth*1/3;
  rectHeight = appHeight*1/3;
  ptDiameter=appWidth*1/40;
  
  
  ptV1 =   ptV2 =  ptV3 = ptV4 = appHeight*0;
  
  ptX1=ptX5 =   ptX9 =  appWidth*0;

   ptX2 = ptX6 = appWidth*1/3;

  ptX3 = appWidth*2/3; 

  ptX4 = appWidth* 3/3;
  ptV4 = appHeight*1/2;

  ptV5 = appHeight*1/3;
  
  ptV6 = appHeight*0;
  ptX7 = appWidth;
  ptV7 = appHeight*0;
  ptX8 = appWidth;
  ptV8 = appHeight*0;

  ptV9 = appHeight;
  ptX10 =  appWidth ;
  ptV10 = appHeight;
  ptV11 = appHeight;
     ptX11= appWidth;
     ptX12=appWidth;
     ptV12= appHeight;
    ptX13= appWidth; 
    ptV13 = appHeight; 
    pt14= appHeight;
     ptX14= appHeight;
    ptV15= appHeight;
    ptX16= appHeight;
    ptV16= appHeight;
}//EndSetup
//
void draw() {
  //rectangle must be 3by3
  rect(ptX[1], ptV[1], rectWidth, rectHeight);
  rect(ptX2, ptV2, rectWidth, rectHeight);
  rect(ptX3, ptV3, rectWidth, rectHeight);  
  rect(ptX4, ptV4, rectWidth, rectHeight);
  rect(ptX5, ptV5, rectWidth, rectHeight);
  rect(ptX6, ptV6, rectWidth, rectHeight);
  rect(ptX7, ptV7, rectWidth, rectHeight);
  rect(ptX8, ptV8, rectWidth, rectHeight);
  rect(ptX9, ptV9, rectWidth, rectHeight);
  //
  fill(black);

  //Strating pts rect () must be 1-9 black 
  ellipse(ptX1, ptV1, ptDiameter, ptDiameter);
  ellipse(ptX2, ptV2, ptDiameter, ptDiameter);
  ellipse(ptX3, ptV3, ptDiameter, ptDiameter);
  ellipse(ptX5, ptV5, ptDiameter, ptDiameter);
  ellipse(ptX6, ptV6, ptDiameter, ptDiameter);
  ellipse(ptX7, ptV7, ptDiameter, ptDiameter);
  ellipse(ptX9, ptV9, ptDiameter, ptDiameter);
  ellipse(ptX10, ptV10, ptDiameter, ptDiameter);
  ellipse(ptX11, ptV11, ptDiameter, ptDiameter);
  //
  fill(red);
  //Points for all other ellipese 
  ellipse(ptX4, ptV4, ptDiameter, ptDiameter);
  ellipse(ptX8, ptV8, ptDiameter, ptDiameter);
  ellipse(ptX13, ptV13, ptDiameter, ptDiameter);
  ellipse(ptX14, ptV14, ptDiameter, ptDiameter);
  ellipse(ptX15, ptV15, ptDiameter, ptDiameter);
  ellipse(ptX16, ptV16, ptDiameter, ptDiameter);


  fill(resetWhite);//Best Practice
}//EndDraw

//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//mousePressed
//
//End Main
