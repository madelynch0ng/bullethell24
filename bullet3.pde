class Bullet3 extends GameObject {

  Bullet3() {
    super(player1.x-15, player1.y, 0, -10, 10, p3, 1);
  }

  void act() {
    super.act();
    if (offScreen()) lives = 0;
  
  }
}
