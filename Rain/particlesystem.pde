class ParticleSystem {
  float originX=0, originY=0;
  ArrayList<Particle>particles=new ArrayList<Particle>();
  ParticleSystem(float originX, float originY, int count) {
    this.originX=originX;
    this.originY=originY;
    for (int i=0; i<count; i++) {
      Particle p=new Particle(originX, originY);
      particles.add(p);
    }
  }

  void display() {
    for (Particle p : particles) {
      p.update();
      p.display();
    }
  }
}
