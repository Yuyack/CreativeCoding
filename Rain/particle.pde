class Particle{
  float posX=0,posY=0;
  float velX=0,velY=0;
  float accX=0,accY=0;
  float size=8;
  float size1=2;
  float a,b,c;
  
  Particle(float posX,float posY){
    this.posX=posX;
    this.posY=posY;
    velX=random(-1,9);
    velY=random(-1,2);
    accY=random(0,0.3);
  }
  
  void update(){
    a=random(0,255);
    b=random(0,255);
    c=random(0,255);
    velX+=accX;
    velY+=accY;
    posX+=velX;
    posY+=velY;
  }
  void display(){
    fill(a,b,c);
    rect(posX,posY,size1,size);
  }
  
}
