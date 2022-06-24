class Bullet2 extends GameObject {

  Bullet2() {
    super(player1.x+15, player1.y, 0, -10, 7, p4, 1);
  }

  void act() {
    super.act();
    if (offScreen()) lives = 0;
  
  }
}
