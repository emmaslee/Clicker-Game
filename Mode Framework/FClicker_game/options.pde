void options() {
  
  theme.play();
background(255);
  
  //Options Title
  strokeWeight(1);
  fill(0);
  textSize(72);
  text("OPTIONS", 400, 100);
  
  //smileyfrog button
  //tactile - smileyfrog button
  
  if (mouseX > 50 && mouseX < 250 && mouseY > 200 && mouseY < 400) {
    fill(255, 255, 0);
  } else {
    fill(255);
  }
  rect(50, 200, 200, 200);
  image(smileyfrog, 60, 210, 180, 180);
  
  //angryfrog button
  //tactile - angryfrog button
  
  if (mouseX > 300 && mouseX < 500 && mouseY > 200 && mouseY < 400) {
    fill(255, 255, 0);
  } else {
    fill(255);
  }
  rect(300, 200, 200, 200);
  image(angryfrog, 310, 210, 180, 180);
  
   //mouthfrog button
  //tactile - mouthfrog button
  
  if (mouseX > 550 && mouseX < 750 && mouseY > 200 && mouseY < 400) {
    fill(255, 255, 0);
  } else {
    fill(255);
  }
 rect(550, 200, 200, 200);
 image(mouthfrog, 560, 210, 180, 180);
 
//OK - return to intro button
//OK tactile
 if (mouseX > 550 && mouseX < 750 && mouseY > 500 && mouseY < 650) {
    fill(140, 202, 247);
  } else {
    fill(255);
  }
rect(550, 500, 200, 150);
fill(0);
  textSize(90);
text("OK", 650, 560);
   
//indicator

rect(250, 450, 250, 250);
image(selectedImage,250, 450, 250, 250);
}

void optionsClicks() {
  
  //smileyfrog
  if (mouseX > 50 && mouseX < 250 && mouseY > 200 && mouseY < 400) {
    selectedImage = smileyfrog;
  }
  
  //angryfrog
  if (mouseX > 300 && mouseX < 500 && mouseY > 200 && mouseY < 400) {
    selectedImage = angryfrog;
  }
    
  //mouthfrog
 if (mouseX > 550 && mouseX < 750 && mouseY > 200 && mouseY < 400) {
  selectedImage = mouthfrog; 
 }
  
  //OK button
  if (mouseX > 550 && mouseX < 750 && mouseY > 500 && mouseY < 650) {
    mode = INTRO;
  }
}
