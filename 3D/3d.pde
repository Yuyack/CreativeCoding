int colorOf = #E87AF7;
int sidesOf=20;
int topSize=30;
int middleSize=100;
int bottomSize=50;
float heightOf=200;

void setup() {
  size(1100, 900, P3D);
  surface.setLocation(50, 50);
  UI();
}

void draw() {
  background(#0C0044);
  lights();
  cam.beginHUD();
  slider.draw();
  cam.endHUD();
  translate(0,-100);
  if ((mouseX<360 && mouseY< 260) || (mouseX<150 && mouseY > height-150)) {
    cam.setActive(false);
  } else {
    cam.setActive(true);
  }

  pushMatrix();
  fill(colorOf,80);
  strokeWeight(0);
  drawCylinder(topSize, bottomSize, middleSize,heightOf, sidesOf);
  popMatrix();
    saveFrame("screen-####");
}

void drawCylinder(float topRadius, float bottomRadius,float middleRadius,float heightOf, int sidesOf) {
  float angle = 0;
  float angleIncrement = TWO_PI / sidesOf;
  beginShape(QUAD_STRIP);
  for (int i = 0; i < sidesOf + 1; i++) {
    vertex(topRadius * cos(angle), 0, topRadius * sin(angle));
    vertex(middleRadius * cos(angle), heightOf/2, middleRadius * sin(angle));
    vertex(bottomRadius * cos(angle), heightOf, bottomRadius * sin(angle));
    angle += angleIncrement;
  }

  endShape();
  
  if (topRadius != 0) {
    angle = 0;
    beginShape(TRIANGLE_FAN);
    vertex(0, 0, 0);
    for (int i = 0; i < sidesOf + 1; i++) {
      vertex(topRadius * cos(angle), 0, topRadius * sin(angle));
      angle += angleIncrement;
    }
    endShape();
  }
  
    if (middleRadius != 0) {
    angle = 0;
    beginShape(TRIANGLE_FAN);
    vertex(0, heightOf/2, 0);
    for (int i = 0; i < sidesOf + 1; i++) {
      vertex(middleRadius * cos(angle), heightOf/2, middleRadius * sin(angle));
      angle += angleIncrement;
    }
    endShape();
  }
  
  if (bottomRadius != 0) {
    angle = 0;
    beginShape(TRIANGLE_FAN);
    vertex(0, heightOf, 0);
    for (int i = 0; i < sidesOf + 1; i++) {
      vertex(bottomRadius * cos(angle), heightOf, bottomRadius * sin(angle));
      angle += angleIncrement;
    }
    endShape();
  }
}
