void intro() {
  background(lightgreen);
  textSize(75);
  textFont(gameon);
  fill(0);
  text("Pong", width/2, 50);
  strokeWeight(6);
  songsound.play();
  sheepsound.rewind();
  lefty=height/2;
  righty=height/2;

  rightscore=0;
  leftscore=0;
  
//select things
textSize(40);
text("Select Number of Players",225,200);
text("Select Mode", 575, 200);
//start button
if (mouseX>200 && mouseX<600 && mouseY>625 && mouseY<700) stroke(255);
   else stroke(lightblue);
fill(lightblue);
rect(200,625,400,70);
fill(0);
text("Start", width/2,660);

  //normal button
  if (mouseX>450 && mouseX<700 && mouseY>225 && mouseY<300)stroke(lightblue);
   else stroke(darkgreen);
  if (hard==false && invisible==false && fast==false)stroke(lightblue);
  fill(darkgreen);
  rect(450, 225, 250, 75);
  fill(0);
  textSize(40);
  if (hard==false && invisible==false && fast==false)fill(lightblue);
  text("Normal mode", 575, 262.5);


  //hard mode button
  if (mouseX>450 && mouseX<700 && mouseY>325 && mouseY<400)stroke(lightblue);
   else stroke(darkgreen);
  if (hard==true)stroke(lightblue);
  fill(darkgreen);
  rect(450, 325, 250, 75);
  fill(0);
  textSize(45);
  if (hard==true)fill(lightblue);
  text("hard mode", 575, 362.5);


  //invisible mode button
  if (mouseX>450 && mouseX<700 && mouseY>425 && mouseY<500) stroke(lightblue);
   else stroke(darkgreen);
  if (invisible==true)stroke(lightblue);
  fill(darkgreen);
  rect(450, 425, 250, 75);
  fill(0);
  textSize(40);
  if (invisible==true)fill(lightblue);
  text("Invisible Mode", 575, 462.5);

  //fast mode button
  if (mouseX>450 && mouseX<700 && mouseY>525 && mouseY<600) stroke(lightblue);
   else stroke(darkgreen);
  if (fast==true)stroke(lightblue);
  fill(darkgreen);
  rect(450, 525, 250, 75);
  fill(0);
  textSize(40);
  if (fast==true)fill(lightblue);
  text("Fast Mode", 575, 562.5);


  //one player
  if (mouseX>100 && mouseX<350 && mouseY>225 && mouseY<325) stroke(lightblue);
   else stroke(darkgreen);
  if(AI==true) stroke(lightblue);
  fill(darkgreen);
  rect(100, 225, 250, 100);
  fill(0);
  textSize(45);
  if (AI==true)fill(lightblue);
  text("One Player", 225, 275);


  //two player mode button
  if (mouseX>100 && mouseX<350 && mouseY>375 && mouseY<475) stroke(lightblue);
   else stroke(darkgreen);
  if(AI==false) stroke(lightblue);
  fill(darkgreen);
  rect(100, 375, 250, 100);
  fill(0);
  textSize(45);
  if (AI==false)fill(lightblue);
  text("Two Players", 225, 425);


}

void introclicks() {
  //one player
  if (mouseX>100 && mouseX<350 && mouseY>225 && mouseY<325) {
    AI=true;
  }
  //two player
  if (mouseX>100 && mouseX<350 && mouseY>375 && mouseY<475) {
    AI=false;
  }
  //invisible
  if (mouseX>450 && mouseX<700 && mouseY>425 && mouseY<500) {
    hard=false;
    invisible=true;
    fast=false;
  
  }
  //hard mode
  if (mouseX>450 && mouseX<700 && mouseY>325 && mouseY<400) {
    hard=true;
    invisible=false;
    fast=false;
    
  }
  //normal mode
  if (mouseX>450 && mouseX<700 && mouseY>225 && mouseY<300) {
    hard=false;
    invisible=false;
    fast=false;
  }
  //fast mode
  if (mouseX>450 && mouseX<700 && mouseY>525 && mouseY<600) {
    hard=false;
    invisible=false;
    fast=true;
  }
  //start button
  if (mouseX>200 && mouseX<600 && mouseY>625 && mouseY<700){
    mode=game;
  }
}
