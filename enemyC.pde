class EnemyC extends GameObject {
  int Ecooldown, Ethreshold;

  EnemyC() {
    super(random(width), -20, 0, 5, 50, p3, 1);
    Ecooldown = 30;
    Ethreshold = Ecooldown;
  }

  void act() {
    super.act();

    // managing guns
    Ecooldown++;
    if ( Ecooldown>= Ethreshold) {
      //shoot
      fill(p3);
      objects.add(new EnemyBullet(x, -y, 0, 10));
      Ecooldown = 0;
    }

    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i); 
      if (obj instanceof Bullet) {
        if (obj instanceof Bullet||obj instanceof Bullet2||obj instanceof Bullet3|| obj instanceof Bullet4  ||obj instanceof Bullet5|| obj instanceof Bullet6 ||obj instanceof Bullet7) {
          if (collidingWith(obj)) {
            lives--;
            obj.lives=0;
          }
        }
      }
      i++;
    }
    if (lives==0) {
      objects.add(new Particles(x, y, 10, 10));
      objects.add(new Particles(x, y, 5, 10));
      objects.add(new Particles(x, y, 3, 10));
      score = score+1;
    }
    if (offScreen()) lives = 0;
    if (offScreen()) lives = 0;
  }

  void show() {
    imageMode(CENTER);
    image(enemyC, x, y, 100, 100);
  }
}
