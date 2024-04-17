int barWidth = 50;
int numBars;
color[] colors = {#FF0000, #00FF00};

void setup(){
  size (700, 700);
  numBars = width / barWidth;
  fill(#FF0000);
  for (int i = 0; i < numBars; i++) {
    
    rect(i * barWidth * 2, 0, barWidth, height);
  }
}
