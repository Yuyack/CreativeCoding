XiaoQiu[]xqs=new XiaoQiu[2000];
float toumingdu;
void setup()
{
  size(800, 800);
  for (int i=0; i<xqs.length; i++) {
    xqs[i]=new XiaoQiu(new PVector(random(0, width), random(0, height)), random(5, 10));
  }
}
void draw()
{
  toumingdu=map(mouseX,0,width,255,0);
  noStroke();
  fill(0,toumingdu);
  rect(0, 0, width, height);

  for (int i=0; i<xqs.length; i++)
  {
    xqs[i].update();
    xqs[i].display();
    xqs[i].check();
  }
}
class XiaoQiu
{
  PVector loc;
  float vx=0, vy=0;
  float r;
  float baocunr;
  float angle=0;
  float R=0,G=0,B=0;
  boolean bianxiao=true;
  XiaoQiu(PVector location, float r)
  {
    loc=location;
    this.r=r;
    baocunr=r;
    R=map(loc.x,0,width,0,255);
    G=map(loc.x,0,width,255,0);
    B=map(loc.y,0,width,0,255);
  }
  void update() {
    angle+=0.02*noise(0.001*loc.x,0.001*loc.y);
    vx=2*sin(angle);
    vy=2*cos(angle);
    loc.x+=vx;
    loc.y+=vy;
    if(bianxiao)r-=0.3;
    if(r<=0)bianxiao=false;
    if(!bianxiao)r+=0.3;
    if(r>=baocunr)bianxiao=true;
  }
  void display() {
    noStroke();
    fill(R,G,B);
    ellipse(loc.x, loc.y, r, 2*r);
  }
  void check() {
    if (loc.x<0)loc.x=width;
    if (loc.x>width)loc.x=0;
    if (loc.y<0)loc.y=height;
    if (loc.y>height)loc.y=0;
  }
}
