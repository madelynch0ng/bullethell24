class Bullet8 extends GameObject {
  Bullet8() {
    super(player1.x, player1.y, -10, 10, 10, p3, 1);
  }

  void act() {
    super.act();
    if (offScreen()) lives = 0;
  
  }
}
