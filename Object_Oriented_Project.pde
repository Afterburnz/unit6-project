Drop[] myDrops;
int numdrops;
Ripple[] myRipples;
int numripples;
void setup() {
  size(1000, 1000, P2D);
  rectMode(CENTER);
  colorMode(HSB);
  noStroke();
  noFill();

  numdrops = 125;
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
  background(0);

}

void draw() {
  fill(0, 40);
  noStroke();
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
}
