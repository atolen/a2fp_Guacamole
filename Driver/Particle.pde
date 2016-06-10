class Particle {

  final static int moving = 0;
  final static int bump = 1;
  final static int dead = 3;

  //cors
  float radical;
  int stater;
  float mass;
  float r;
  float b;
  float g;
  float xUs;
  float yUs;
  float duex;
  float duey;
  color ccc;



  Particle(float m) {
    setup();
    mass = m;
   // once();
  }

  void setup() {
    radical = 30;
    stater = moving;
    r = random(256);
    g = random(256);
    b = random(256);
    ccc = color(r, g, b);

    xUs = random((width - r) + r/2);
    yUs = random((height - r) + r/2);

    duex = random(10) * .0005;
    duey = random(10) * .0005;
    stater = moving;
  }

  void move() {
    xUs = xUs + duex;
    yUs = yUs + duey;
    bounce();
  }


  void process() {
    if ( stater == bump )
      stater = dead;
    if (stater == moving) 
      move();
  }


  void once() {
    if ( stater != dead ) {
      move();
      ellipseMode(RADIUS);
      fill(ccc);
      stroke(ccc);
      ellipse(xUs, yUs, radical, radical);
      //bounce();
    }
  }


  void bounce() {
    if (xUs < 0 ) 
      duex = abs(duex);
    if ( xUs > width ) 
      duex = -1 * abs(duex);
    if (yUs < 0 ) 
      duey = abs(duey);
    if ( yUs > height ) 
      duey = -1 * abs(duey);
  }
}