ParticleSystem ps;

void setup() {
  size(600, 600);

  ps=new ParticleSystem(50, 30,100);
}

void draw() {
  background(0);
  ps.display();
}
