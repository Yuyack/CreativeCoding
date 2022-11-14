LSystem ls;

void setup() {
  size(700, 700);
  ls = new LSystem("FX", 40, 300);
  ls.addRule(new Rule('F', "F[+F][-F]F[-FFF][+FFF]F"));

}

void draw() {
  background(#0C0E50);
  ls.drawLine(width/2, height);
    saveFrame("screen-####");
}

void mousePressed() {
  if (mouseButton == LEFT) {
    ls.nextLevel();
  }

}
