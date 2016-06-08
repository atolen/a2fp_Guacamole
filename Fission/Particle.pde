class Particle{

  final static int moving = 0;
  final static int bump = 1;
  final static int dead = 3;

//cors
  float xUs;
  float yUs;

  float radical;
  color ccc;
  float duex;
  float duey;
  int stater;
  float mass;
  
  Particle(float m) {
    mass = m;
    float r = random(256);
    float g = random(256);
    float b = random(256);
    ccc = color(r, g, b);

    radical = mass;

    xUs = random((width - r) + r/2);
    yUs = random((height - r) + r/2);

    duex = random(10);
    duey = random(10);

    stater = moving;
  }


  void move() {
    //delay(10);
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


  void draw() {
    if ( stater != dead ) {
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