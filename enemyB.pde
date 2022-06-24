class EnemyB extends GameObject {
  int Ecooldown, Ethreshold;

  EnemyB() {
    super(random(width), -20, 50, 0, 50, o1, 1);
    Ecooldown = 30;
    Ethreshold = Ecooldown;
  }

  void act() {
    super.act();

    //shoot
    Ecooldown++;
    if ( Ecooldown>= Ethreshold) {
      //shoot
      objects.add(new EnemyBullet(x, y, 0, 10));
      Ecooldown = 0;
    }


    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i); 
       if (obj instanceof Bullet ||obj instanceof Bullet2||obj instanceof Bullet3|| obj instanceof Bullet4  ||obj instanceof Bullet5|| obj instanceof Bullet6 ||obj instanceof Bullet7) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives=0;
        }
      }
      i++;
    }
    if (lives==0) {
      objects.add(new Particles(x, y, 10, 10));
      objects.add(new Particles(x, y, 5, 10));
      score=score+1;
    }
    if (offScreen()) lives = 0;
    if (offScreen()) lives = 0;
  }

  void show() {
    imageMode(CENTER);
    image(enemyD, x, y, 100, 100);
  }
}
