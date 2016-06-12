Particle[] fuse ;
float mass1;
float mass2;
String inp = "";
boolean hit;

class Fusion {


  Fusion() { 
    setup(); 
    once1();
  }

  void setup() {
    size(700, 700);
    background(0);
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
  }


  void once1() {
    background(0);

    for (int i = 0; i < fuse.length; i++) {
      if (!hit) {
        fuse[i].once();
        fuse[i].process();
      }
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
      }
    }
  }
  
  void keyPressed() {
    inp += key;
  }
}