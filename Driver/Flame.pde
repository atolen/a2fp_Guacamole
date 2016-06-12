  int size;
  int state;
  float xcor;
  float ycor;
  int xs;
  int ys;
  boolean i = false;


class Flame {
  final static int Growing = 1;
  final static int shrinking = 2;
  final static int dead = 4;
  
  
  
  Flame(float xxcor, float yycor) {
    if (!i) {
     state = Growing; 
     i = true;
    }
     xcor = xxcor;
     ycor = yycor;  
     size = 40;
     xs = 1;
     ys = 1;
    // once();
  }
  
  void move() {
    xcor -= 1;
    ycor -= .2;
    //bounce(); 
  }
  
  
  void process() {
    delay(10);
    if (state == Growing) {
      size+=1;
      move();
    }
    else if (size > 50) {
      size--;
      state = shrinking;
      move();
    }
    else if (size < 5) {
      state = dead;
    }
    if (state == shrinking) {
       size--; 
       move();
    }
  }  


  void once() {
   // tint(255,126);
  //  ellipseMode(RADIUS); 
  if (state != dead) {
    fill(232, 155, 12);
    noStroke();
    ellipse(xcor, ycor, size, .8*size);
    noStroke();
    triangle(xcor-size/2 , ycor, xcor+size/2 ,ycor, xcor, ycor-size);
 
  }
  else {
    fill(0);
   ellipse(xcor, ycor,  100,100);
  }
}
  
  
  void bounce() {
     if (xcor < 300) {
       xs = -1 * xs;
     }
     if (xcor > 500) {
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