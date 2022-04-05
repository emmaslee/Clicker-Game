void intro() {
  
  theme.play();
  
  background(86, 130, 198);
  //Clicker Game Title
  strokeWeight(1);
  fill(0);
  textSize(72);
  text("CLICKER GAME", 400, 400);
 
  

  
  //Start Button
  //tactile - Start button
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 600) {
    fill(200);
  } else {
    fill(146, 240, 140);
  }
  rect(300, 500, 200, 100);
  fill(0);
  textSize(30);
  text("START", 400, 550);
  
  //Options Button 
  //tactile - Options button
  if (mouseX > 300 && mouseX < 500 && mouseY > 650 && mouseY < 750) {
    fill(200);
  } else {
    fill(146, 240, 140);
  }
  rect(300, 650, 200, 100);
  fill(0);
  textSize(30);
  text("OPTIONS", 400, 700);
}



void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 650 && mouseY < 750) {
    mode = OPTIONS;
  }

}
