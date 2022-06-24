void options() {
  
  imageMode(CORNER);
  image(xing[l], 0, 0, width+50, height+50);
  if (frameCount %0.5==0) l++;
  if (l == numberOfFrames1)l=0;


  imageMode(CORNER);
  image(controlroom,0,0,800,800);
  
  fill(0);
  rect(400, 700, 200, 60);
  fill(255);
  text("Return to Lobby", 280, 720);

  imageMode(CENTER);
  image(spaceship1, 150, 200, 200, 200);
  image(spaceship2, 400, 200, 200, 200);
  image(spaceship3, 650, 200, 200, 200);
  imageMode(CORNER);
  
  ship();
}



void optionsClicks() {
  if ( mouseX >300 && mouseX< 700 && mouseY>650 && mouseY< 780) {
    mode=INTRO;
  }

  if ( mouseX >600 && mouseX< 700 && mouseY>700 && mouseY< 750) {
    mode=INTRO;
  }

  if (mouseX < 250 && mouseX > 50  && mouseY > 100 && mouseY < 300) {
    ship = SPACESHIP1;
  }
  if ( mouseX < 500 && mouseX > 300 && mouseY > 100 && mouseY < 300) {
        ship = SPACESHIP2;
  }
  if (mouseX < 750 && mouseX > 550 && mouseY > 100 && mouseY < 300) {
        ship = SPACESHIP3;
  }
}
