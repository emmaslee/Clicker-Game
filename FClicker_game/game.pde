void game() {
  theme.play();
  background(140,219,240);
  
  fill(0);
  textSize(40);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
  
  //pause button
  stroke(0);
  fill(255);
  rect(25, 25, 150, 80);
  fill(0);
  textSize(50);
  text( "||" , 100, 60);
  
  //display target
  fill(255);
  stroke(255);
  strokeWeight(5);
  ellipse(x, y, d, d);
  imageMode(CENTER);
  image(selectedImage, x,y , thickness, thickness);
  imageMode(CORNER);
  
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
  } else if (mouseX > 25 && mouseX < 175 && mouseY > 25 && mouseY < 105) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    bump.rewind();
    bump.play();
    if (lives == 0) mode = GAMEOVER;
  } 
}
