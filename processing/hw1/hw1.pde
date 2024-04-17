size (700, 700);
background (#000000);
stroke (#FFFFFF);

int separacion = 15;
int itera = 700 / separacion;

for(int i = 0; i < itera; i++){
  // x1, y1, x2, y2
  line( 0, separacion * i, separacion * (i+1), 700);
  line( 700, separacion * i, separacion * (i+1), 0);
  line( 700 - separacion * i, 0, 0, separacion * (i+1));
  line( 700, separacion * i, 700 - separacion * (i+1), 700);
};
