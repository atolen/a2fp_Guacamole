class Neutron {

  final static int MOVING = 0;
  final static int BUMP = 1;
  final static int DEAD = 3;

  float xxx;
  float yyy;
  float rad;
  color cc;
  float dxx;
  float dyy;
  int state;

  Neutron() {
    float r = random(256);
    float g = random(256);
    float b = random(256);
    cc = color(r, g, b);

    rad = 10;

    xxx = random((width - r) + r/2);
    yyy = random((height - r) + r/2);

    dxx = .00000001;///why is it still fast?!?!?!?!?!?!?!
    dyy = .00000001;

    state = MOVING;
  }


  void move() {
    xxx = xxx + dxx;
    yyy = yyy + dyy;
    bounce();
  }


  void process() {
    if ( state == BUMP )
      state = DEAD;
  }


  void draw() {
    if ( state != DEAD ) {
      ellipseMode(RADIUS);
      fill(cc);
      stroke(cc);
      ellipse(xxx, yyy, rad, rad);
    }
  }


  void bounce() {
    if (xxx < 0 ) 
      dxx = abs(dxx);
    if ( xxx > width ) 
      dxx = -1 * abs(dxx);
    if (yyy < 0 ) 
      dyy = abs(dyy);
    if ( yyy > height ) 
      dyy = -1 * abs(dyy);
  }


  /*boolean isTouching( Particle other ) {
    return sqrt( (xxx - other.xUs) * (xxx - other.xUs) + (y - other.yUs) * (yyy - other.yUs) ) < rad + other.radical;
  }*/
}