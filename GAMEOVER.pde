PImage gameoverbackground;

void gameover() {
  imageMode(CORNER);
  image(xing[l], 0, 0, width+50, height+50);
  if (frameCount %0.5==0) l++;
  if (l == numberOfFrames1)l=0;
  
   fill(p2);
  textSize(30); 
  fill(255);
  text("Quit", 600, 450);

  //return home
  fill(p2);
  rect(600, 520, 50, 50, 20);
  fill(p3);
  textSize(30);
  text("home", 600, 535);
  textSize(60);
  
 text("Score:" + score, 300, 350);
  
}

void gameoverClicks() {
   if (mouseX > 500 && mouseX< 750 && mouseY > 400 && mouseY < 500) {
    exit();
  }
  if (mouseX > 550 && mouseX<750 && mouseY > 520 && mouseY < 570) {
    mode=INTRO;
    setup();
  }
}
