void game() {
  background(0,255,0);
  
  fill(0);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
  
  //display target
  fill(255);
  strokeWeight(5);
  ellipse(x, y, 100, 100);
  
  //moving
  x = x + vx;
  y = y + vy;
  
  //bouncing
  if (x < d/2 || x > width-d/2) {
    vx = vx * -1; 
  }
  if (y < d/2 || y > height-d/2) {
   vy = vy * -1; 
  }
}

void gameClicks() {
  //mode = GAMEOVER;
  if ( dist(mouseX, mouseY, x, y) < 50) {
    score = score + 1;
    coin.rewind();
    coin.play();
  } else {
    lives = lives - 1;
    bump.rewind();
    bump.play();
    if (lives == 0) mode = GAMEOVER;
  } 
}
