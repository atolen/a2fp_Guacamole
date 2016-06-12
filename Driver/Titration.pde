int molarityAcid;
int molarityBase;
int volA;
int volB;
int eqnA;
int eqnB;
int gor;
color clor;
Drop[] drops;

class Titration {

  Titration() {
    this(2, 3, 3, 2);
  }
  Titration(int mA, int mB, int vA, int vB) {
    molarityAcid = mA;
    molarityBase=mB;
    volA = vA;
    volB = vB;
    eqnA = volA*molarityAcid;
    eqnB = volB*molarityBase;
    gor = 255;
    setup();
    // draw();
    once2();
  }

  void setup() {
    size(700, 700);
    //  clor = color(255, gor, 255);
    fill(clor);
    background(0);
    arc(width/2, height/2+100, 100, 50, 0, PI);
    fill(9, 14, 49);
    line(width/2-5, height/2-50, width/2-50, height/2+100);
    line(width/2+5, height/2-50, width/2+50, height/2+100);
    line(450, 200, 450, 475);
    line(455, 200, 455, 475);
    line(355, 250, 450, 250);
    line(355, 260, 450, 260);
    line(348, 100, 348, 275);
    line(355, 100, 355, 275);
    if (drops == null) {
      drops = new Drop[10];
      for (int i = 0; i < drops.length; i++) {
        //delay(10);
        drops[i] = new Drop(i*25-10);
        drops[i].once();
      }
    }
  }

  void change() {
    for (int i = 255; i > 0; i--) {
      // delay(10);
      arc(width/2, height/2+100, 100, 50, 0, PI);
      fill(255, gor, 255);
    }
    gor-=10;
  }
  
  void progress() {
    volB++;
    recalculate();
    //delay(5);
    if (eqnB >= eqnA) {
      change();
    }
  }
  void recalculate() {
    eqnB = volB*molarityBase;
  }
  void once2() {
    clor = color(255, gor, 255);
    fill(clor);
    for (int i =0; i < drops.length; i++) {
      drops[i].once();
      drops[i].process();
    }

    for (int i = 0; i <drops.length; i++) {
      if (drops[i].state == DEAD) {
        progress();
        if (eqnA <= eqnB) {
          change();
        }
      }
    }
  }
}