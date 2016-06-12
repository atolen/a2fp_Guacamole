int molarityAcid;
int molarityBase;
int volA;
int volB;
int eqnA;
int eqnB;
int gor;
color clor;
class Titration {


  Titration(int mA, int mB, int vA, int vB) {
    molarityAcid = mB;
    molarityBase=mB;
    volA = vA;
    volB = vB;
    eqnA = volA*molarityAcid;
    eqnB = volB*molarityBase;
    gor = 0;
    setup();
    draw();
  }

  void setup() {
    size(700, 700);
  }

  void draw() {
    clor = color(255, 255, gor);
    background(0);
    fill(clor);
    ellipse(200, 300, 100, 70);
    ellipse(500, 300, 100, 70);

    line(150, 300, 150, 400);
    line(450, 300, 450, 400);
    line(250, 300, 250, 400);
    line(550, 300, 550, 400);

    fill(clor);
    ellipse(200, 400, 100, 70);
    ellipse(500, 400, 100, 70);

    line(220, 300, 220, 200);
    line(240, 300, 240, 220);

    line(240, 220, 450, 220);
    line(220, 200, 470, 200);

    line(450, 220, 450, 300);
    line(470, 200, 470, 300);

    line(160, 300, 160, 100);
    line (165, 300, 165, 105);

    line(160, 100, 290, 100);
    line(165, 105, 290, 105);

    rect(290, 100, 100, 50);

    line(390, 100, 540, 100);
    line(390, 105, 535, 105);

    line(540, 100, 540, 300);
    line(535, 105, 535, 300);
  }
  void react() {
    if (eqnA <= eqnB) {
      change();
    } else {
      progress();
    }
  }
  void change() {
    for (int i = 255; i < 0; i--) {
      delay(10);
      gor--;    }
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