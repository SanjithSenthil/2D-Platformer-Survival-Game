class GroundEnemies{
  float x;
  float y = 6*H + 25;
  color c;
  float offset;
  
  void display(){
    tint(c);
    image(loadImage("groundEnemy_1.png"),x,y);
    noTint();
  }
  
  void move(){
    x = noise(offset) * width;
    offset += 0.005;
  }
  
  boolean collidesWithPlayer(float px, float py) {
    float overlapThreshold = W * 0.5;
    return (px + W - overlapThreshold > x && px < x + W - overlapThreshold && 
            py + H - overlapThreshold > y && py < y + H - overlapThreshold);
  }
}
