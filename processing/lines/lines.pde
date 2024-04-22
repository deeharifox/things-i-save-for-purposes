//global vars area
int centerX;
int centerY;

int widthCan = 800;
int heightCan = 700;

int increment = 10;

int framecount = 0;

void setup(){
  // executes one time at the start
 size(800,700);
 centerX = widthCan / 2;
 centerY = heightCan / 2;
 
 print("Center in: " + centerX + ", " + centerY);
}

void draw(){
 background(#874CCC);
 stroke(#FFFFFF);
 int posY = framecount % heightCan;
 int posX = framecount % widthCan;
 line(0, posY, centerX, centerY);
 line(posX, heightCan, centerX, centerY);
 line(widthCan, posY, centerX, centerY);
 line(posX, 0, centerX, centerY);
 
 circle(centerX, centerY, 20);
 framecount += increment;
 print("Redraw wih draw() " + framecount);
 
 
}
  
