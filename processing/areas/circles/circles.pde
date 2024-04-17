int numRings;
int ringWidth = 30;
color[] colors = {#FF0000, #00FF00};

void setup(){
  size (700, 700);
  int centerX = width /2;
  int centerY = height / 2;
  numRings = width / ringWidth;
  
  for (int i = 0; i < numRings; i++){
    int currentRingWidth = ringWidth * i;
    int currentColorIndex = i % 2;
    strokeWeight(10);
    stroke(colors[currentColorIndex]);
    noFill();
    ellipse(centerX, centerY, currentRingWidth, currentRingWidth);
  }
}
