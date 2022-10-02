int a = 800;
int b = 800;
int line=0;
int col=0;
float lineSize = 0;
float colSize = 0;

color[] colors = {#ffffff, #ff0000, #ffff00, #0000ff, #000000};
//Define the fill color

void mondrian() {
  for(line = 0; line < a; line += lineSize + 4) {
    lineSize = random(4, b);
    for(col= 0; col < b; col += colSize + 4) {
      colSize = random(4, a);
 // Define the color block size  

      color rectColor = colors[int(random(colors.length))];
      fill(rectColor);
      rect(col, line, colSize, lineSize);
      //Drawing color blocks

      strokeWeight(4);
      stroke(#000000);
      float x = col+colSize;
      float y = line+lineSize;
      line(0, y, b, y);
      line(x, line, x, y);
      //Drawing Black lines
    }
  }
}

void setup() {
  size(800,800);
  background(#ffffff);
  mondrian(); 
  //First run
}

void draw() {
  if (mousePressed){
        mondrian();
         save("mondarian.tif");
  }
//Regenerate when the mouse is clicked
}
