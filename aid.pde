class Aid extends GameObject {
  Aid(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 40, 0, 1);
  }

  void act() {
    super.act();
    if (offScreen()) {
      lives = 0;
    }

    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i); 
      if (obj instanceof Starfighter) {
        if (collidingWith(obj)) {
          obj.lives =0;
          player1.lives = player1.lives+5;
        }
      }
      i++;
    }
    if (lives==0) {
      objects.add(new Particles(x, y, 10, 10));
    }
  }
  void show() {
    image(aid, x, y, 60, 60);
  }
}
