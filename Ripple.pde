class Ripple {
  float x2, y2, size2, alpha;
  int h2, s2, b2;

  Ripple() {
    x2=random(width);
    y2=random(3*height/4, height);
    size2=random(200);
    h2 = int(random(255));
    s2=255;
    b2=255;
  }

  void show() {
    alpha=map(size2, 0, 200, 255, 0);
    stroke(h2, s2, b2, alpha);
    fill(0, 0, 0, 0);
    ellipse(x2, y2, size2, size2/2);
  }

  void act() {
    size2=size2+3;
    if (size2 >= 200) {
      x2 = random(width);
      y2 = random(3*height/4, height);
      size2=0;
    }
  }

}
