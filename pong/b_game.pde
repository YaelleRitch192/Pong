void game() {
  background(lightblue);
  songsound.pause();
  sheepsound.play();
  textFont(numbers);
  //center line
  strokeWeight(10);
  stroke(255, 255, 255, 40);
  line(width/2, 0, width/2, height);
  strokeWeight(0);
  stroke(255);
  //draw paddles
  fill(lightgreen);
  circle(leftx, lefty, leftd);
  fill(darkgreen);
  circle(rightx, righty, rightd);

  fill(darkblue);
  //game modes
  if (invisible==true) {
    balld=100;
    leftd=200;
    rightd=200;
    fill(darkblue, 0);
    stroke(255, 255, 255, 110);
    balld=100;
  } else if (fast==true|| hard==true) {
    //collision
    if (dist(leftx, lefty, ballx, bally)<= leftd/2+ balld/2) {
      vx=(ballx-leftx)/8;
      vy=(bally-lefty)/8;
      pigsound.rewind();
      pigsound.play();
    }
    if (dist(rightx, righty, ballx, bally)<=rightd/2 + balld/2) {
      vx=(ballx-rightx)/8;
      vy=(bally-righty)/8;
      pigsound.rewind();
      pigsound.play();
    }
    if (hard==true) {
      balld=40;
      leftd=100;
      rightd=100;
    }
  } else {
    balld=100;
    leftd=200;
    rightd=200;
  }


  circle(ballx, bally, balld);

  //move paddles
  if (wkey==true)lefty=lefty-10;
  if (skey==true)lefty=lefty+10;
  if (righty<rightd/2)righty=rightd/2;
  if (lefty<leftd/2)lefty=leftd/2;
  if (righty>height-rightd/2)righty=height-rightd/2;
  if (lefty>height-leftd/2)lefty=height-leftd/2;


  if (AI==false) {
    if (upkey==true) righty=righty-10;
    if (downkey==true) righty=righty+10;
  } else if (fast==true) {
    if (ballx>width/2 && ballx<width && bally>0 && bally<700) {
      if (bally>righty)righty=righty+8;
      if (bally<righty)righty=righty-8;
    }
  } else if (hard==true) {
    if (ballx>width/2 && ballx<width && bally>0 && bally<700) {
      if (bally>righty)righty=righty+7;
      if (bally<righty)righty=righty-7;
    }
  } else {
    if (ballx>width/2 && ballx<width && bally>0 && bally<700) {
      if (bally>righty)righty=righty+5;
      if (bally<righty)righty=righty-5;
    }
  }


  //move ball
  if (timer<0) {
    ballx=ballx+vx;
    bally=bally+vy;
  }

  //bounce
  //collision
  if (dist(leftx, lefty, ballx, bally)<= leftd/2+ balld/2) {
    vx=(ballx-leftx)/17;
    vy=(bally-lefty)/17;
    pigsound.rewind();
    pigsound.play();
  }
  if (dist(rightx, righty, ballx, bally)<=rightd/2 + balld/2) {
    vx=(ballx-rightx)/17;
    vy=(bally-righty)/17;
    pigsound.rewind();
    pigsound.play();
  }
  //bottom and top 
  if (bally<balld/2||bally>height-balld/2) {
    vy=vy*-1;
    bubblesound.rewind();
    bubblesound.play();
  }

  if (bally>height-balld/2)bally=height-balld/2;
  if (bally<balld/2)bally=balld/2;


  //scoring
  if (ballx<0) {
    rightscore++;
    ballx=width/2;
    bally=height/2;
    timer=75;
    partysound.rewind();
    partysound.play();
    vx=vx-5;
    vy=0;
  }
  if (ballx>width) {
    leftscore++;
    ballx=width/2;
    bally=height/2;
    timer=75;
    partysound.rewind();
    partysound.play();
    vx=vx+5;
    vy=0;
  }

  //scoreboard
  textSize(50);
  fill(lightgreen);
  text(leftscore, width/4, 100);
  fill(darkgreen);
  text(rightscore, 3*width/4, 100);
  fill(255);

  //text(timer,width/2,600);
  timer=timer-1;

  if (rightscore==3) {
    laughsound.play();
    laughsound.rewind();
    mode=gameover;
  }


  if (leftscore>2) {
    laughsound.play();
    laughsound.rewind();
    mode=gameover;
  }
  //pause button
  fill(255, 255, 255, 50);
  strokeWeight(4);
  if (dist(400, 100, mouseX, mouseY)<35.5) {
    stroke(darkblue, 100);
  } else {
    stroke(255, 255, 255, 50);
  }
  circle(400, 100, 75);
  strokeWeight(0);
  fill(255);
  rect(380, 80, 12, 40);
  rect(407, 80, 12, 40);
}
void gameclicks() {
  if (dist(400, 100, mouseX, mouseY)<37.5) {
    mode=pause;
  }
}
