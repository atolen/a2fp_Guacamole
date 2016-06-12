class Drop {

  final static int MOVING = 0;
  final static int DEAD = 3;

  float xX;
  float yY;
  float rAd;
  color cC;
  float dY;
  int state;

  Drop(float start) {
    yY = start;
    setup();
    //  once();
  }

  void setup() {
    //    cC = color(255);
    rAd = 5;
    xX = width/2;
    dY = 1;
    state = MOVING;
  }

  void move() {
    yY = yY + dY;
  }


  void process() {
    if (state == MOVING){ 
      move();
    }
    if (isTouching()){
      state = DEAD;
    }     
  }
  void once() {
    if ( state != DEAD ) {
      fill(cC);
      ellipse(xX, yY, rAd, rAd);
    }
  }
 boolean isTouching() {
   return (yY >=height/2+100);
   }
}