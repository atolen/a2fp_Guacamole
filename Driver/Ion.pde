class Ion {

  final static int moving = 0;
  final static int bump = 1;
  final static int dead = 3;

  //cors
  float radicalrev;
  int staterev;
  float massS;
  float rr;
  float bb;
  float gg;
  float xxUs;
  float yyUs;
  float duexx;
  float dueyy;
  color cccc;



  Ion(int x, int y, float m) {
    massS = m;
    xxUs = x;
    yyUs = y;
    setup(); 
  }

  void setup() {
    radicalrev = massS;
    staterev = moving;
    rr = random(256);
    gg = random(256);
    bb = random(256);
    cccc = color(rr, gg, bb);

    duexx = random(10)*.05;
    dueyy = random(10)*.05 ;
  }

  void move() {
    xxUs = xxUs + duexx;
    yyUs = yyUs + dueyy;
    bounce();
  }


  void process() {
    if ( staterev == bump )
      staterev = dead;
    if (staterev == moving) 
      move();
    if (staterev == dead) {
      cccc = color(0,0,0);
    }
  }


  void onceB() {
    if ( staterev != dead ) {
      move();
      ellipseMode(RADIUS);
      fill(cccc);
      stroke(cccc);
      ellipse(xxUs, yyUs, radicalrev, radicalrev);
      bounce();
    }
  }


  void bounce() {
    if (xxUs < 160 ) 
      duexx = abs(duexx);
    if ( xxUs > 440 ) 
      duexx = -1 * abs(duexx);
    if (yyUs < 400 ) 
      dueyy = abs(dueyy);
    if ( yyUs > 540 ) 
      dueyy = -1 * abs(dueyy);
  }
  
  
  
   boolean isTouching( Ion other ) {
    return (sqrt( (xxUs-other.xxUs) * (xxUs-other.xxUs) + (yyUs-other.yyUs) * (yyUs-other.yyUs) ) < radicalrev + other.radicalrev);
  }
}