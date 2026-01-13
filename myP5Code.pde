//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var pupilSize;
pupilSize=45
var eyeColor;
eyeColor=255
eyeColorr = 0;
eyeColorb = 0;
eyeColorg =0;
var moleSize;
moleSize=random(1,10)
//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
  //eyeball
  fill(eyeColorr,eyeColorb,eyeColorg)
  ellipse(430,220,90,90);
  fill(0,0,0)
  ellipse(430,220,pupilSize,pupilSize);
  //falsies
  strokeWeight(5)
  noFill()
  arc(430,220,180,100,radians(40),radians(180));
  fill(0,0,0)
  //mole
  strokeWeight(moleSize);
  point(289,300);

//pupilSize+=1
eyeColor=random(0,255);



  //Show x y values when mousepressed
  if(mousePressed){
    showXYPositions();
    moleSize=random(1,10);
    eyeColorr = random(0,255)
    eyeColorb = random(0,255)
    eyeColorg = random(0,255)
    }

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
