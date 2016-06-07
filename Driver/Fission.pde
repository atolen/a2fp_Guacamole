int energyReleased;
int neutronXSpeed;
int neutronYSpeed;
int elementAtomicNum;
int pos; //what is pos?
boolean smoosh;
float xx;
float yy;
float x1;
float y1;
float dx;
float dy;
float dx1;
float dy1;

class Fission {

  Fission() {
    setup();
    draw();
  }

  void setup() {
    size(700, 700);
    pos = 100;
    background(0);
    smoosh = false;
    dx = random(1);
    dy = random(1);
    float r = random(256);
    xx = random((width - r) + r/2);
    yy = random((height - r) + r/2);
    dx1 = random(1);
    dy1 = random(1);
    float w = random(256);
    x1 = random((width - w) + w/2);
    y1 = random((height - w) + w/2);
  }

  void draw() {
    ellipseMode(RADIUS);
    fill(100, 255, 100);
    ellipse(xx, yy, 60, 60);
    ellipse(x1, y1, 30, 30);
    delay(50);
    xx = xx + dx;
    yy = yy + dy;
    x1 = x1 + dx1;
    y1 = y1 + dy1;
    delay(50);
    bounce();
}
  }

void react() {
 /* while (pos < 400) {
    draw();
    pos++;}
*/
  }
  /*  ellipse(width/2, 400, 150, 150);
    ellipse(width/2, 400, 50, 50);
    int lala = width/2;
    int poe = width/2;
    while (lala > 0 && poe < 700) {
      ellipse(lala, 400, 150, 150);
      ellipse(poe, 400, 50, 50);
      lala --;
      poe ++;
      delay(1000);
    }
  }
  smoosh = true;
}*/

void bounce() {
  if (xx < 0 ) 
    dx = abs(dx);
  if ( xx > width ) 
    dx = -1 * abs(dx);
  if (yy < 0 ) 
    dy = abs(dy);
  if ( yy > height ) 
    dy = -1 * abs(dy);
  if (x1 < 0 ) 
    dx1 = abs(dx1);
  if ( x1 > width ) 
    dx1 = -1 * abs(dx1);
  if (y1 < 0 ) 
    dy1 = abs(dy1);
  if ( y1 > height ) 
    dy1 = -1 * abs(dy1);
}
boolean collide(){
  return true;
}