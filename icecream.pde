float t=0;
int i=0;
void setup() {
  size(800, 800);
  frameRate(3);
}

void draw() {
  fill(#FFE064,20);
  rect(0,0,800,800);
  fill(96,56,17);
  strokeWeight(1);
  ellipse(random(0,800),random(600,800),10,10);
  for (i=0; i<width; i+=2)
  {
    strokeWeight(3);
    stroke(96,56,17);
    line(i, 0, i, height*noise(t));
    t+=0.01;
  }
  saveFrame("screen-####.PNG");
}
