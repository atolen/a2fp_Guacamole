class Fusion {
  Particle[] fuse ;
  float mass1;
  float mass2;
  String inp = "";
  boolean hit = false;
  String y = "";
  Selection_FuseFiss fartz;

  Fusion() { 
    setup(); 
    once1();
  }

  void setup() {
    size(700, 700);
    text("select two elements", 100, 100);
    fartz = new Selection_FuseFiss(2);
    results = false;
    background(0);
    if (hit) {
      fill(255) ;
      text("new element", 100, 100);
    }


    hit = false;
    mass1 = 30;
    mass2 = 40;
    if (fuse == null) {
      fuse = new Particle[2];
      Particle uno = new Particle((int) random(width), (int) random(height), mass1);
      Particle dos = new Particle((int) random(width), (int)  random(height), mass2);
      fuse[0] = uno;
      fuse[1] = dos;
    }

    rect(100, 100, 100, 100);
  }

  void once1() {
    fartz = new Selection_FuseFiss(2);
    int elementNum1 = fartz.aa;
    int elementNum2 = fartz.bb;
    Calculation calc = new Calculation(fartz.aa, fartz.bb, false);
    background(0);
    if (fartz == null) {
      for (int i = 0; i < fuse.length; i++) {
        if (!hit) {
          fuse[i].once();
          fuse[i].process();
        }
      }
    } else { 
      fartz.makeData();
    }
    if (fuse[0].isTouching(fuse[1])) {
      hit = true;
    }


    if (hit) {
      float d = fuse[0].radical + fuse[1].radical;
      if (d < 100) {
        int xcor = (int) fuse[0].xUs;
        int ycor = (int) fuse[0].yUs;
        Particle e = new Particle(xcor, ycor, d);
        Particle f = e;
        fuse[0] = e;
        fuse[1] = f;

        for (int i = 1; i < elements.length; i++) {
          if (Integer.parseInt(elements[i][2]) == (int) d) {
            y+= elements[i][2];
          }
        }
      }
    }
    fill(255);
    stroke(255);
    textFont(x, 20);
    //stroke(22, 22, 120);
    text("Back to Home", 600, 50);
    noFill();
    rect(500, 20, 195, 50);
    if (mousePressed) {
      if (mouseX >= 500 && mouseX <= 680 && mouseY >= 20 && mouseY <=80) {
        fuse = null;
        fusion = false;
        home = true;
        browse = false;
        printy = false;
      }
    }
  }
}