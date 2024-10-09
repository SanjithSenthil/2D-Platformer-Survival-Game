final int W=64, H=64;
final int SPEED = 4;
int speedX = 0;
int row;
float x=0, y=6*H;
float speedY = 0, gravity = 0.2;
boolean isJumping = false;
int scene = 0;
float survivalTime = 0;
boolean gameOver = false;  
GroundEnemies groundEnemy_1, groundEnemy_2, groundEnemy_3;
FlyingEnemies flyingEnemy_1, flyingEnemy_2, flyingEnemy_3, flyingEnemy_4, flyingEnemy_5;

void setup(){
  size(512,512);
  
  groundEnemy_1 = new GroundEnemies();
  groundEnemy_1.c = color(255);
  groundEnemy_1.x = 0;
  groundEnemy_1.offset = 0.0;
  
  groundEnemy_2 = new GroundEnemies();
  groundEnemy_2.c = color(0,255,0);
  groundEnemy_2.x = 128;
  groundEnemy_2.offset = 20.0;
  
  groundEnemy_3 = new GroundEnemies();
  groundEnemy_3.c = color(0,0,255);
  groundEnemy_3.x = 192;
  groundEnemy_3.offset = 60.0;
  
  flyingEnemy_1 = new FlyingEnemies();
  flyingEnemy_1.c = color(255);
  flyingEnemy_1.x = 0;
  flyingEnemy_1.y = 128;
  flyingEnemy_1.offsetX = 40.0;
  flyingEnemy_1.offsetY = 60.0;
  
  flyingEnemy_2 = new FlyingEnemies();
  flyingEnemy_2.c = color(0,255,0);
  flyingEnemy_2.x = 128;
  flyingEnemy_2.y = 80;
  flyingEnemy_2.offsetX = 80.0;
  flyingEnemy_2.offsetY = 500.0;
  
  flyingEnemy_3 = new FlyingEnemies();
  flyingEnemy_3.c = color(0,0,255);
  flyingEnemy_3.x = 512;
  flyingEnemy_3.y = 50;
  flyingEnemy_3.offsetX = 0.0;
  flyingEnemy_3.offsetY = 400.0;
  
  flyingEnemy_4 = new FlyingEnemies();
  flyingEnemy_4.c = color(25,220,240);
  flyingEnemy_4.x = 256;
  flyingEnemy_4.y = 90;
  flyingEnemy_4.offsetX = 100.0;
  flyingEnemy_3.offsetY = 320.0;
  
  flyingEnemy_5 = new FlyingEnemies();
  flyingEnemy_5.c = color(0,100,100);
  flyingEnemy_5.x = 384;
  flyingEnemy_5.y = 250;
  flyingEnemy_5.offsetX = 20.0;
  flyingEnemy_5.offsetY = 600.0;
}

void draw(){
  switch(scene){
    case 0:
      HomeScreen();
      break;
    case 1:
      PlayScreen();
  }
}
