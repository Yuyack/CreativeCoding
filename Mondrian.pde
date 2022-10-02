void setup() {
  size(800, 800);
  background(255);
  mondrian1();
  save("mondrian1.png");
}

void mondrian1() {
  fill(255, 255, 255);
  strokeWeight(20);
  rect(0, 0, 600, 500);
  fill(255, 255, 255);
  strokeWeight(20);
  rect(600, 0, 200, 400);
  fill(255, 0, 0);
  strokeWeight(20);
  rect(0, 500, 400, 300);
  fill(255, 255, 255);
  strokeWeight(20);
  rect(400, 500, 200, 200);
  fill(0, 0, 255);
  strokeWeight(20);
  rect(400, 700, 200, 100);
  fill(255, 255, 255);
  strokeWeight(20);
  rect(600, 400, 100, 300);
  fill(255, 255, 255);
  strokeWeight(20);
  rect(600, 700, 100, 100);
  fill(255, 255, 0);
  strokeWeight(20);
  rect(700, 400, 100, 400);
}

void mondrian2() {
  fill(255, 255, 0);
  strokeWeight(20);
  rect(0, 0, 200, 400);
  fill(255, 255, 255);
  strokeWeight(20);
  rect(0, 400, 200, 200);
  fill(255, 255, 255);
  strokeWeight(20);
  rect(200, 0, 600, 100);
  fill(255, 255, 255);
  strokeWeight(20);
  rect(200, 100, 100, 100);
  fill(255, 255, 255);
  strokeWeight(20);
  rect(200, 200, 600, 600);
  fill(255, 255, 255);
  strokeWeight(20);
  rect(300, 100, 200, 100);
  fill(0, 0, 255);
  strokeWeight(20);
  rect(500, 100, 300, 100);
}

void mondrian3() {
  fill(255, 255, 0);
  strokeWeight(20);
  rect(0, 0, 100, 300);
  fill(255, 255, 255);
  strokeWeight(20);
  rect(0, 300, 200, 400);
  fill(255, 255, 255);
  strokeWeight(20);
  rect(100, 0, 300, 300);
  fill(0, 0, 0);
  strokeWeight(20);
  rect(200, 300, 200, 100);
  fill(255, 255, 255);
  strokeWeight(20);
  rect(400, 0, 400, 400);
  fill(255, 0, 0);
  strokeWeight(20);
  rect(200, 400, 600, 200);
  fill(255, 255, 255);
  strokeWeight(20);
  rect(200, 600, 600, 100);
  fill(0, 0, 255);
  strokeWeight(20);
  rect(0, 700, 700, 100);
  fill(255, 255, 255);
  strokeWeight(20);
  rect(700, 700, 100, 100);
}
void draw() {
  if (mousePressed&&(mouseButton==LEFT)) {
    mondrian2();
    save("mondrian2.png");
  }
  if (mousePressed&&(mouseButton==RIGHT)) {
    mondrian3();
    save("mondrian3.png");
  }
}
