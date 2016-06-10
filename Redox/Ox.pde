int numE;
float oxPot;
color col;
int vx;
int vy;
int xcor;
int ycor;
final static int ATANODE = 1;
final static int ENROUTE = 2;
final static int ATCATHODE = 3;
int state;





class Ox {
  
  
  Ox(int x, int y) {
    oxPot = .5;
    numE = 2;    
    col = color(180,178,178);
    state = ATANODE;   
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