class Cloud {
  float x3, y3, size3;
  int h3, s3, b3;

  Cloud() {
    x3=random(width);
    y3=random(height/4);
    size3=random(50, 150);
    h3 = int(random(255));
    s3=255;
    b3=255;
  }

  void show() {
    noStroke();
    fill(h3, s3, b3, 100);
    circle(x3, y3, size3);
  }

  void act() {
    size3=size3+random(-6, 6);
    if (size3 >= 200 || size3 <= 0) {
      x3 = random(width);
      y3 = random(height/4);
      size3=100;
    }

  }
  

}
