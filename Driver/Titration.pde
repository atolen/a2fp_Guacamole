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

  Titration(int mA, int mB, int vA, int vB) {
    molarityAcid = mA;
    molarityBase=mB;
    volA = vA;
    volB = vB;
    eqnA = volA*molarityAcid;
    eqnB = volB*molarityBase;
    gor = 255;
    setup();
    draw();
  }

  void setup() {
    size(700, 700);
    clor = color(255, gor, 255);
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
    drops = new Drop[10];
  }

  void draw() {
    fill(108, 121, 232);
    react();
  }
  void react() {
    for (int i = 0; i < drops.length; i++) {
      delay(10);
      drops[i] = new Drop(i*10);
      drops[i].once();
    }
    if (eqnA <= eqnB) {
      change();
    } else {
      this.progress();
    }
  }

  void change() {
    for (int i = 255; i < 0; i--) {
      delay(10);
      gor--;
    }
  }
  void progress() {
    volB++;
    recalculate();
    delay(5);
  }
  void recalculate() {
    eqnB = volB*molarityBase;
  }
}