class FlyingEnemies{
  float x; 
  float y;
  color c;
  float offsetX;
  float offsetY;
  
  void display(){
    tint(c);
    image(loadImage("flyingEnemy_1.png"),x,y);
    noTint();
  }
  
  void move(){
    x = noise(offsetX) * width;
    offsetX += 0.005;
    y = 160 + noise(offsetY) * 100;
    offsetY += 0.005;
  }
  
  boolean collidesWithPlayer(float px, float py) {
    float overlapThreshold = W * 0.5;
    return (px + W - overlapThreshold > x && px < x + W - overlapThreshold && 
            py + H - overlapThreshold > y && py < y + H - overlapThreshold);
  }
}
