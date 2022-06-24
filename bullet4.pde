class Bullet4 extends GameObject {

  Bullet4() {
     super(player1.x+15, player1.y+15, 10, 10, 11, p3, 1);
  }

  void act() {
    super.act();
    if (offScreen()) lives = 0;
  
  }
}


   
 
