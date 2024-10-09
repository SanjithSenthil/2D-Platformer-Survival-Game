void keyPressed(){
  if(keyCode == RIGHT)            speedX = SPEED;
  else if(keyCode == LEFT)        speedX = -SPEED;
  if(keyCode == ' ' && !isJumping) {isJumping = true; speedY = -5;}
}

void keyReleased(){
  if(keyCode == RIGHT || keyCode == LEFT)
    speedX = 0;
  if(scene == 0 && (key == 'P' || key == 'p')){
    scene = 1;
  }
  if(scene == 0 && (key == 'E' || key == 'e')){
    exit();
  }
  if(scene == 1 && (key == 'M' || key == 'm')){
    scene = 0;
  }
  if (key == 'R' || key == 'r') {
    resetGame();
  }
}

void resetGame(){
  x = 0;
  y = 6 * H;
  speedX = 0;
  speedY = 0;
  isJumping = false;
  gameOver = false;
  survivalTime = 0;
  scene = 1;
}
