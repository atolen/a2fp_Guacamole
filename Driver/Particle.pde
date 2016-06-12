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
    mass = m;
     //once();
    setup(); 
  }

  void setup() {
    radical = mass;
    stater = moving;
    r = random(256);
    g = random(256);
    b = random(256);
    ccc = color(r, g, b);

    xUs = random((width - r) + r/2);
    yUs = random((height - r) + r/2);

    duex = random(10)*.5;
    duey = random(10)*.5 ;
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
    if (stater == dead) {
      ccc = color(0,0,0);
    }
  }


  void once() {
    if ( stater != dead ) {
      move();
      ellipseMode(RADIUS);
      fill(ccc);
      stroke(ccc);
      ellipse(xUs, yUs, radical, radical);
      bounce();
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
  
  
  
   boolean isTouching( Particle other ) {
    return (sqrt( (xUs-other.xUs) * (xUs-other.xUs) + (yUs-other.yUs) * (yUs-other.yUs) ) < radical + other.radical);
  }
}