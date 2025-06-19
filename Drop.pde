class Drop {
  float x, y, vx, vy, size;
  int h, s, b;

  Drop() {
    x=random(0, width);
    y=random(0, 3*height/4);
    vx=0;
    vy=random(1, 5);
    size=vy;
    h = int(random(0, 255));
    s = 255;
    b=255;
  }
  void show() {
    fill(h, s, b);
    square(x, y, size);
  }
  void act() {
    y=y+vy;
    if (y>4*height/5+size) {
      size=vy;
      y=-size;
    }
  }

}
