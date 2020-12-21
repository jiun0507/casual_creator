Block[] blocks; // Declare the array
int numBlocks = 1000;
int currentBlock = 0; 
void setup() {
  size(500, 500);
  blocks = new Block[numBlocks]; // Create the array
  for (int i = 0; i < blocks.length; i++) {
    blocks[i] = new Block(); // Create each object
  }
}
void draw() {
  background(0);
  for (int i = 0; i < blocks.length; i++) {
    blocks[i].display();
  }
}
// Click to create a new Ring
void mousePressed() {
  mouseX -= mouseX % 20;
  mouseY -= mouseY % 10;
  blocks[currentBlock].make(mouseX, mouseY);
  currentBlock++;
  if (currentBlock >= numBlocks) {
    currentBlock = 0;
  }
}
class Block {
  float x, y;          // X-coordinate, y-coordinate
  float diameter;      // Diameter of the ring
  boolean on = false;  // Turns the display on and off

  void make(float xpos, float ypos) {
    x = xpos;
    y = ypos; 
    on = true;
  }

  void display() {
    noFill();
    strokeWeight(4);
    stroke(204, 153);
    rectMode(CENTER);
    rect(x,y,20,10);
  }
}
