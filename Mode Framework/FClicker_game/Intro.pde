void intro() {
  background(255);
  //Clicker Game Title
  strokeWeight(1);
  fill(0);
  textSize(72);
  text("CLICKER GAME", 400, 400);
  
  //tactile - Start button
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 600) {
    fill(200);
  } else {
    fill(255, 255, 0);
  }

  
  //Start Button
  rect(300, 500, 200, 100);
  fill(0);
  textSize(30);
  text("START", 400, 550);
}



void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
  }
  
}
