//pong
//Yaelle Ritch 2-4
//all sounds are from https://www.zapsplat.com/
//Fonts from dafont.com


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//music
Minim minim;
AudioPlayer bubblesound;
AudioPlayer pigsound;
AudioPlayer sheepsound;
AudioPlayer laughsound; 
AudioPlayer partysound;
AudioPlayer songsound;


int mode;
final int intro =1;
final int game =2;
final int pause =3;
final int gameover =4;

//colours
color lightgreen = #ACE3B0;
color darkgreen = #134B17;
color lightblue = #8F9AF5;
color darkblue = #1B236A;

//variables
//gamevariables
float leftx, lefty, rightx, righty, leftd, rightd;
float ballx, bally, balld, vx, vy;
//keyboard
boolean wkey, skey, upkey, downkey;
//score
int leftscore, rightscore, timer;
//game mode
boolean AI;
boolean hard;
boolean invisible;
boolean fast;

//font
PFont gameon;
PFont numbers;


void setup() {
  size(800, 700); 
  textAlign(CENTER, CENTER);
  //sound stuff
   minim=new Minim(this);
  pigsound=minim.loadFile("pig.mp3");
  sheepsound=minim.loadFile("sheep.mp3");
  laughsound=minim.loadFile("laugh.mp3");
  bubblesound=minim.loadFile("bubble.mp3");
  partysound=minim.loadFile("party.mp3");
  songsound=minim.loadFile("song.mp3");
  
  //font stuff
  textAlign(CENTER,CENTER);
  gameon=createFont("gameonfont.ttf",100);
  numbers=createFont("cdnumbers.ttf",100);
  
  //mode
  mode=intro;
  //initialize
  //paddles
  leftx=0;
  lefty=height/2;
  leftd=200;
  rightx=width;
  righty=height/2;
  rightd=200;
  //ball
  ballx=width/2;
  bally= height/2;
  balld=100;
  vx=vx+5;
  vy=0;
  //keyboard
  wkey=skey=upkey=downkey=false;
  //score
  rightscore=leftscore=0;
  timer=75;
 //game mode
  AI=true;
  hard=false;
  invisible=false;
  fast=false;
   
}

void draw() {
  if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==pause) {
    pause();
  } else if (mode==gameover) {
    gameover();
  } else {
    println("mode error" + mode);
  }
}
