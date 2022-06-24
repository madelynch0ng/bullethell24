class Bullet7 extends GameObject {
  Bullet7() {
    super(player1.x+15, player1.y-15, -10, 10, 10, p3, 1);
  }

  void act() {
    super.act();
    if (offScreen()) lives = 0;
  }
}
