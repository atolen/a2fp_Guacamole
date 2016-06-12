int size;
int state;
float xcor;
float ycor;
float xs;
float ys;
boolean i = false;
final static int Growing = 1;
final static int shrinking = 2;
final static int dead = 4;

class Flame {




  Flame(float xxcor, float yycor) {
    if (!i) {
      state = Growing; 
      i = true;
    }
    xcor = xxcor;
    ycor = yycor;  
    size = 40;
    xs = 1;
    ys = .2;
    // once();
  }

  void move() {
    xcor -= xs;
    ycor -= ys;
    bounce();
  }


  void process() {
    delay(15);
    if (state == Growing) {
      size+=1;
      move();
    }
    if (size > 150) {
      size--;
      state = shrinking;
      move();
    }
    if (size < 3) {
      state = dead;
    }
    if (state == shrinking) {
      size--; 
      move();
    }
  }  


  void once() {
    tint(255, 126);
    //  ellipseMode(RADIUS); 
    if (state != dead) {
      fill(232, 155, 12);
      noStroke();
      ellipse(xcor, ycor, size, .8*size);
      noStroke();
      triangle(xcor-size/2, ycor, xcor+size/2, ycor, xcor, ycor-size);
      fill(242, 37, 37);
      noStroke();
      ellipse(xcor, ycor-25, size-25, .8*size-25);
      noStroke();
     // triangle(xcor-size/2, ycor-25, xcor+size/2-25, ycor-25, xcor+50, ycor-90);
    }
  }


  void bounce() {
    if (xcor < 200) {
      xs = -1 * xs;
    }
    if (xcor > 450) {
      xs = -1* xs;
    }
    if (ycor > 500) {
      ys = -1* ys;
    }
    if (ycor < 300) {
      ys = -1 * ys;
    }
  }

  void mouseClicked() {
  }
}