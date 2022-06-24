class EnemyA extends GameObject {
  int Ecooldown, Ethreshold;

  EnemyA() {
    super(random(width), -20, 0, 5, 50, green1, 1);
    Ecooldown = 30;
    Ethreshold = Ecooldown;
  }
  void act() {
    super.act();

    // managing guns
    Ecooldown++;
    if ( Ecooldown>= Ethreshold) {
      ////shoot
      fill (green1);
      objects.add(new EnemyBullet(x, y, 0, 5));
      objects.add(new EnemyBullet(x, y, 5, 0));
      objects.add(new EnemyBullet(x, y, 0, -5));
      objects.add(new EnemyBullet(x, y, -5, 0));
      Ecooldown = 0;
    }
    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i); 
      if (obj instanceof Bullet ||obj instanceof Bullet2||obj instanceof Bullet3|| obj instanceof Bullet4||obj instanceof Bullet5|| obj instanceof Bullet6 ||obj instanceof Bullet7) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives=0;
        }
      }
      i++;
    }
    //collisions
    while (i < objects.size()) {
      GameObject obj = objects.get(i); 
      if (obj instanceof Bullet||obj instanceof Bullet2||obj instanceof Bullet3|| obj instanceof Bullet4  ||obj instanceof Bullet5|| obj instanceof Bullet6 ||obj instanceof Bullet7 || obj instanceof Bullet6) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives =0;
        }
      }
      i++;
    }

    if (lives==0) {
      // float x, float y, float vx, float vy
      objects.add(new Particles(x, y, 10, 10));
      objects.add(new Aid(x, y, 0, 10));
    }

    if (offScreen()) lives = 0;
  }
  void show() {
    imageMode(CENTER);
    image(enemy1, x, y, 100, 100);
  }
}
