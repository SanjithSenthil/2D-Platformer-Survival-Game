void PlayScreen(){
  if (!gameOver) {
    survivalTime += 1.0 / frameRate;
  }
  
  drawBackground();

  drawPlayer();  
  
  drawPlatform();
  
  movePlayer();

  jumpPlayer();
  
  groundEnemy_1.display();
  groundEnemy_2.display();
  groundEnemy_3.display();
  groundEnemy_1.move();
  groundEnemy_2.move();
  groundEnemy_3.move();
  
  flyingEnemy_1.display();
  flyingEnemy_2.display();
  flyingEnemy_3.display();
  flyingEnemy_4.display();
  flyingEnemy_5.display();
  flyingEnemy_1.move();
  flyingEnemy_2.move();
  flyingEnemy_3.move();
  flyingEnemy_4.move();
  flyingEnemy_5.move();
  
  checkCollisions();
  
  fill(0,0,0);
  textSize(20);
  textAlign(LEFT);
  text("Survival Time: " + nf(survivalTime, 0, 2) + "s", 10, 20);
}

void drawBackground(){
  background(loadImage("background_0.png"));
}

void drawPlayer(){
  image(loadImage("gameTile_15.png"),x,y);  
}

void drawPlatform(){
  PImage tile13 = loadImage("gameTile_13.png"); 
  for(int col=0;col<6;col++)
    image(tile13,col*W,7*H);  
  image(loadImage("gameTile_14.png"),6*W,7*H);
}

void movePlayer(){
  x = max(0, x+speedX);
  y += speedY;
}

void jumpPlayer(){
  if(isJumping){
    y= y + speedY;
    speedY = speedY + gravity;
    if(y >= 6*H){
      speedY = 0;
      isJumping = false;
      y = 6*H;
    }
  }
}

void checkCollisions(){
  if (groundEnemy_1.collidesWithPlayer(x, y) ||
      groundEnemy_2.collidesWithPlayer(x, y) ||
      groundEnemy_3.collidesWithPlayer(x, y) ||
      flyingEnemy_1.collidesWithPlayer(x, y) ||
      flyingEnemy_2.collidesWithPlayer(x, y) ||
      flyingEnemy_3.collidesWithPlayer(x, y) ||
      flyingEnemy_4.collidesWithPlayer(x, y) ||
      flyingEnemy_5.collidesWithPlayer(x, y) ||
      x >= 6.75 * W) {
    gameOver = true;
    scene = 0;
  }
}
