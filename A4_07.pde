 import com.jogamp.opengl.GL;
import com.jogamp.opengl.GL2ES2;


//prizes prize;


//float eyeX = mouseX, eyeY = 400, eyeZ =400, centerX =250, centerY = 250, centerZ = 0, upX = 0, , upZ = 0;
float eyeY     =     450;

float centerY  =     400;
float upX      =     0;
float upZ      =     0;
float upY      =     1;
float eyeZ     =    constrain (500, -200, 500);
float eyeX     =    constrain(0, 0, 0);
float centerX  =    constrain(250, 0, 500);
float centerZ  =    constrain(0, -200, -200);

 
PJOGL pgl;
GL2ES2 gl;




void setup() 
{
  size(800, 600, P3D);
  //ortho(-2, 2, 2, -2, 2, 8);
 // translate (-500,500,-100);
  hint(DISABLE_OPTIMIZED_STROKE);
  stroke(255);
  lights();
  frustum(500, -500, 500, -500, 500,1000);
 resetMatrix();
}







void draw() 
{
camera(eyeX, eyeY, eyeZ, mouseX, mouseY, centerZ, upX, upY,upZ);
//pointLight(e, eyeY, eyeZ, mouseX, mouseY, -200);
clear();
background(#79C1FF);
background(0);

translate(250,50,0);

drawGalleryWalls();
drawFloor();
drawTile();
drawWallArt();
DrawArtifact(1,-300,0,0,0);
DrawArtifact(2,0,-300,0,0);
DrawArtifact(3,300,-300,0,0);
DrawArtifact(3,-200,-500,0,0);
//noLoop();
}


void drawTile() 
{
  int divide;
  PImage floor2 = loadImage("assets/2.jpg");
 
  for (int i =-300; i<400; i+=100)
  {
    for (int j =-500; j<=300; j+=100)
  {
    divide = (i+j/500);
    if(divide %2 == 0)
    {
 
pushMatrix();
beginShape();
translate(i,499,j);
box(-50,1,50);
texture(floor2);
endShape();
popMatrix();
    }
  }
  }
}
  
  
  


void drawFloor()
{
 PImage floor1 = loadImage("assets/1.jpg");
 pushMatrix();
 beginShape();
  fill(#BCB3B9);
  translate(0,500,0);
  box(850,1,900);
  texture(floor1);
  endShape();
  popMatrix();
}




void DrawArtifact( int type, int x, int z, float xWise, float yWise)
{
  PImage usFlag = loadImage("assets/aflag.png"); 
  PImage caFlag = loadImage("assets/canada.jpg"); 
 
 // Pimage libFlag
 if (type ==1)
 {
 pushMatrix();
 beginShape();
translate(x, 450, z);
sphere(50);
texture(usFlag);
endShape();
popMatrix();
 }
 
else if (type ==2)
{
  pushMatrix();
   beginShape();
   translate(x,450,z);
   box(-100,50,50);
   texture(usFlag);
   endShape();
  popMatrix();
}

else if (type ==3)
{
  pushMatrix();
   beginShape();
   translate(x,450,z);
   box(-100,50,50);
   texture(caFlag);
   endShape();
  popMatrix();
}
}
 void picture (int x, int z, PImage painting, float yWise, float zWise)
 {
pushMatrix();
beginShape();
translate(x,400,z);
rotateY(yWise);
rotateZ(zWise);
box(150,150,10);
texture(painting);
endShape();
popMatrix();
  
      /*
    pushMatrix();
 beginShape();
  translate(5,400,60);
  rotateY(PI/2);
  //rotateZ(PI/2);
  box(150,150,10);
  texture(art1);
  endShape();
  popMatrix();
  */
 }

void drawWallArt()
{
PImage art1 = loadImage("assets/trump.jpg"); 
PImage art2 = loadImage("assets/putin.jpg");
PImage art3 = loadImage("assets/hilary.jpg");
PImage art4 = loadImage("assets/sanders.jpg"); 
PImage art5 = loadImage("assets/obama.jpg");
PImage art6 = loadImage("assets/trudeau.jpg");
PImage art7 = loadImage("assets/michelle.jpg");

picture (-80,-445,art6,2*PI/45, 0);
picture (-205,60,art7,PI/2, 0);
picture (-195,60,art5,PI/2, 0);
picture (-5,60,art3,PI/2, 0);
picture (5,60,art1,PI/2, 0);
picture (195,60,art2,PI/2, 0);
picture (205,60,art4,PI/2, 0);
//picture (0,600,art6,PI/2, PI/3);
}


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


 void drawGalleryWalls()
 {
 PImage now = loadImage("assets/art.jpg"); ;
  pushMatrix();
  beginShape();
  translate(0,350,60);
  rotateY(PI/2);
  rotateZ(PI/2);
  box(300,400,10);
  texture(now);
  endShape();
  popMatrix();
  
 pushMatrix();
 beginShape();
  translate(-400,350,-250);
  rotateY(PI/2);
  rotateZ(PI/2);
  box(300,400,10);
  texture(now);
  endShape();
  popMatrix();
  
 pushMatrix();
 beginShape();
  translate(-200,350,60);
  rotateY(PI/2);
  rotateZ(PI/2);
  box(300,400,10);
  texture(now);
  endShape();
  popMatrix();
  
 pushMatrix();
 beginShape();
  translate(200,350,60);
  rotateY(PI/2);
  rotateZ(PI/2);
  box(300,400,10);
  texture(now);
  endShape();
  popMatrix();
  
 pushMatrix();
 beginShape();
  translate(400,350,150);
  rotateY(PI/2);
  rotateZ(PI/2);
  box(300,400,10);
  texture(now);
  endShape();
  popMatrix();
  
 pushMatrix();
 beginShape();
  translate(400,350,-250);
  rotateY(PI/2);
  rotateZ(PI/2);
  box(300,400,10);
  texture(now);
  endShape();
  popMatrix();
  
 pushMatrix();
 beginShape();
  translate(200,350,-350);
  rotateY(PI/2);
  rotateZ(PI/2);
  box(300,200,10);
  texture(now);
  endShape();
  popMatrix();

 pushMatrix();
 beginShape();
  translate(200,350,-450);
  rotateZ(PI/2);
  box(300,400,10);
  texture(now);
  endShape();
  popMatrix();
  
  
 pushMatrix();
 beginShape();
  translate(-200,350,-450);
  rotateZ(PI/2);
  box(300,400,10);
  texture(now);
  endShape();
  popMatrix();
  
  
  
  
  pushMatrix();
  fill(#3431A2);
  translate(50,450,0);
  box(-20,30,8);
  popMatrix();
  
  
  pushMatrix();
  fill(#C13E47);
  translate(60,450,40);
  box(-20,30,8);
  popMatrix();
}




































void keyPressed() {
  switch (key) {
    case '1':
    eyeX = mouseX;
    eyeY = mouseY;
    eyeZ =(height/2.0) / tan(PI*30.0 / 180.0);
    centerX =width/2.0;
    centerY = height/2.0;
    centerZ = 0; 
    upX = 0;
    upY = 1;
    upZ = 0;
    break;
    
    case 'w'://fowards
    eyeZ -=100;
    centerZ -=100; 
    break;
    
    case 'z': //backwards
    eyeZ +=100;
    centerZ +=100; 
    break;
  
   
    case 'd': //right
    eyeX +=100;
    centerX +=100; 
    break;
     
    case 'a'://left
    eyeX -=100;
    centerX -=100; 
    break;
  
  
   case 'u'://Upwards view
    camera(0, -400, 250, width/2.0, height/2.0, -250, 0, 1, 0);//View2 Above
    eyeX = 0;
    eyeY = -400;
    eyeZ =250;
    centerX =width/2.0;
    centerY = height/2.0;
    centerZ = -250;
    upX = 0;
    upY = 1;
    upZ = 0;
    break;
  
    case't': //View3 Below
    centerX =width/2.0;
    centerY = height/2.0;
    centerZ = -250;
    upX = 0;
    upY = 1;
    upZ = 0;
    break;

  case 'q':
  
    break;
  case 'p':
    
    break;
  case 'e':


    break;
  case 's':
    
   
    break;
  case 'r':
    
    break;

    
     case 'x':
  
    break;
    case 'c':
    
    break;
  case ' ':
  //  perspective = !perspective;
    break;
  }
}




public void display()
{
 
}
