class Obstacle {

  PVector position;
  color colorfill;

  Obstacle(float x, float y) {
    position = new PVector(x, y);
    colorfill = 175;
  }

void display() {
    stroke(0);
    fill(colorfill);
    strokeWeight(2);
    rectMode(CORNER);
    ellipse(position.x, position.y, 50, 50);
  }

  boolean contains(PVector spot) {
    if (spot.x > position.x && spot.x < position.x + 25 && spot.y > position.y && spot.y < position.y + 25) {
      return true;
    } else {
      return false;
    }
  }

  void setColorFill( color fill_ ) {
    colorfill = fill_;
  }
}
