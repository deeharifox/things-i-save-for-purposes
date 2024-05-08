size (800,800);

stroke(0);
int centerX = width / 2;
int centerY = height / 2;
int sep = 80;
int sep45 = 56;

line(0, 400, 800, 400);
line(400, 0, 400, 800);
line(0, 0, 800, 800);
line(0, 800, 800, 0);

for(int i = 1; i <= 5; i++){
  int x = centerX + sep * i;
  int y = centerY + sep * i;
  
  int xInter = centerX + sep45 * i;
  int yInter = centerY + sep45 * i;
      
  line(x, centerY, xInter, yInter); //down right
  line(xInter, yInter, centerX, y);
  
  line(centerX - sep45 * i, centerY + sep45 * i, centerX - sep * i, centerY); //down left
  line(centerY, centerX + sep * i, centerY - sep45 * i, centerX + sep45 * i); 
  
  line(centerY, centerX - sep * i, centerY + sep45 * i, centerX - sep45 * i); //top right
  line(centerX + sep45 * i, centerY - sep45 * i, centerX + sep * i, centerY); 
  
  // Top left quadrant
  line(centerX - sep45 * i, centerY - sep45 * i, centerX - sep * i, centerY); // up left
  line(centerY, centerX - sep * i, centerY - sep45 * i, centerX - sep45 * i); 
}
