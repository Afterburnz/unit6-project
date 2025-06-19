Drop[] myDrops;
int numdrops;
Ripple[] myRipples;
int numripples;
int bRed, bGreen, bBlue;
Cloud[] myClouds;
int numclouds;
void setup() {
  size(1000, 1000, P2D);
  rectMode(CENTER);
  colorMode(HSB);
  noStroke();
  noFill();
  bRed=0;
  bGreen=0;
  bBlue=0;

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
  if (bRed<=255) {
    bRed = bRed + int(random(2));
  } else {
    bRed = int(random(50,150));
  }

  if (bGreen<=255) {
    bGreen = bGreen + int(random(2));
  } else {
    bGreen =int(random(50,150));
  }

  if (bBlue<=255) {
    bBlue = bBlue + int(random(2));
  } else {
    bBlue =int(random(50,150));
  }
  background(bRed,bGreen,bBlue);
  
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
