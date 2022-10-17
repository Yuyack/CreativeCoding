int numFrames = 2;
int frame = 0;
float t;
  PImage[] images = new PImage[numFrames];

void setup() {
  size(960, 960);
  frameRate(4);
  background(255);
  images[0] = loadImage("1.png");
  images[1] = loadImage("2.png");
}

void draw() {
  image(images[0], 0, 0);
  image(images[1], t-600, 0);
  t=t+1;
  saveFrame("screen-####");
}
