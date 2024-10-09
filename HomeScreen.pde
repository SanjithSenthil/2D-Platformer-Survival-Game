void HomeScreen() {
  background(#000A48);
  textAlign(CENTER);
  textSize(25);
  
  if (gameOver) {
    fill(255, 0, 0);
    text("Game Over!", width / 2, height / 2 - 20);
    fill(0, 255, 0);
    text("Your Survival Time: " + nf(survivalTime, 0, 2) + " seconds", width / 2, height / 2 + 20);
    fill(255, 255, 0);
    text("Press 'R' to Restart", width / 2, height / 2 + 60);
    text("Hit 'E' to exit.", width / 2, height / 2 + 100);
  }
  
  else {
    fill(0, 255, 0);
    text("2D Platformer Survival Game", 255, 200);
    fill(255, 255, 0);
    text("Hit 'P' to play, 'E' to exit.", 255, 270);
    text("Hit 'M' during gameplay to return to this screen.", 256, 300);
  }
}
