Drop[] myDrops;
int numdrops;
Ripple[] myRipples;
int numripples;
int bH, bS, bB;
Cloud[] myClouds;
int numclouds;
void setup() {
  size(1000, 1000, P2D);
  rectMode(CENTER);
  colorMode(HSB);
  noStroke();
  noFill();
  bH=0;
  bS=255;
  bB=255;

  numdrops = 175;
  myDrops = new Drop[numdrops];
  int i = 0;
  while (i<numdrops) {
    myDrops[i] = new Drop();
    i++;
  }

  numripples = 100;
  myRipples = new Ripple[numripples];
  int i2 = 0;
  while (i2<numripples) {
    myRipples[i2] = new Ripple();
    i2++;
  }

  numclouds = 100;
  myClouds = new Cloud[numclouds];
  int i3 = 0;
  while (i3<numclouds) {
    myClouds[i3] = new Cloud();
    i3++;
  }
}

void draw() {
  if (bH<=255) {
    bH = bH + int(random(2));
  } else {
    bH = int(random(50, 150));
  }

  background(bH, bS, bB);

  noStroke();
  fill(0, 120);
  rect(width/2, height/2, width, height);
  int i=0;
  while (i<numdrops) {
    myDrops[i].show();
    myDrops[i].act();
    i++;
  }

  int i2=0;
  while (i2<numripples) {
    myRipples[i2].show();
    myRipples[i2].act();
    i2++;
  }
  int i3=0;
  while (i3<numclouds) {
    myClouds[i3].show();
    myClouds[i3].act();
    i3++;
  }
}

void mouseClicked() {
  bH = bH + int(random(25, 150));
}
