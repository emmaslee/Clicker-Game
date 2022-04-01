void pause() {
  theme.pause();
  stroke(0);
  fill(255);
  rect(25, 25, 150, 80);
  fill(0);
  textSize(50);
  text("►", 100, 60);
}

void pauseClicks() {
  if (mouseX > 25 && mouseX < 175 && mouseY > 25 && mouseY < 105) {
    mode = GAME;
  }
}
