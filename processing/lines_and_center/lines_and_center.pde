//global vars area
int widthCan = 800;
int heightCan = 700;

int increment = 10;

int framecount = 0;
int diameter = 20;
boolean growing = true;

void setup(){
  // executes one time at the start
 size(800,700);
}

void draw(){
 background(#874CCC);
 stroke(#FFFFFF);
 int posY = framecount % heightCan;
 int posX = framecount % widthCan;
 
 line(0, posY, mouseX, mouseY);
 line(posX, heightCan, mouseX, mouseY);
 line(widthCan, posY, mouseX, mouseY);
 line(posX, 0, mouseX, mouseY);
 
 stroke(#FF22FF);
 line(0, heightCan - posY, mouseX, mouseY);
 line(widthCan - posX, heightCan, mouseX, mouseY);
 line(widthCan, heightCan - posY, mouseX, mouseY);
 line(widthCan - posX, 0, mouseX, mouseY);
 
 circle(mouseX, mouseY, diameter);

 if(growing){
   diameter++;
 }
 else{
   diameter--;
 }
 
 if(diameter > 100){
   growing = false;
 }
 
 if(diameter < 20){
  growing = true; 
 }
 
 framecount += increment;
 print("Redraw wih draw() " + framecount);

 }
