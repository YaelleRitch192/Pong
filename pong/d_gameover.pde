void gameover(){
  sheepsound.pause();
  
  laughsound.play();
  textFont(gameon);
  
  if(rightscore>2){
    textSize(80);
    fill(darkgreen);
    text("Right Player Wins!" , 400,300);
  }
  if(leftscore>2){
    fill(lightgreen);
  textSize(80);
    text("Left Player wins!" , 400,300);  
 }
//play again
fill(255,255,255, 0);
fill(darkblue,255);
if(mouseX>300 && mouseX<500 && mouseY>500 && mouseY<600)fill(255);
   else fill(darkblue);
text("play again",400,550);
}

void gameoverclicks(){
  if(mouseX>300 && mouseX<500 && mouseY>500 && mouseY<600){
    mode=intro;
}
}
