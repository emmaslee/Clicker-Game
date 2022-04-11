void gameover() {
  background(255, 0, 0);
  theme.pause();
  gameover.play();
  
   //Gameover Title
  strokeWeight(1);
  fill(0);
  textSize(72);
  text("GAMEOVER", 400, 400);
  
  if (score> highscore) {
    highscore = score;
  }
  text("HIGHSCORE: " + highscore, width/2, 100);
  
  //Return to Game button
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 600) {
    fill(200);
  } else {
    fill(146, 240, 140);
  }
  rect(300, 500, 200, 100);
  fill(0);
  textSize(30);
  text("RETURN", 400, 550);
 
}

void gameoverClicks() {
  mode = INTRO;
  lives = 3;
  score = 0;
  theme.rewind();
}
