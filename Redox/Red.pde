int numEl;
float redPot;
color colo;
int vx1;
int vy1;
int x1cor;
int y1cor;
final static int ATCathode = 1;
final static int INROUTE = 2;
final static int ATAnode = 3;





class Red {
  
  
  Red(int x, int y) {
    redPot = .5;
    numEl = 2;    
    col = color(180,178,178);
    state = ATCathode;   
    xcor = x;
    ycor = y;
    vx = 0;
    vy = 10;
  }
  
  
 
  
  
  void move() {
    xcor += vx;
    ycor += vy; 
  }
}