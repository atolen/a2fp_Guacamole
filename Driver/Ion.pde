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
  boolean which;


  Ion(int x, int y, float m, boolean precipitation) {
    massS = m;
    xxUs = x;
    yyUs = y;
    which = precipitation;
    setup();
  }

  void setup() {
    radicalrev = massS;
    staterev = moving;
    cccc = color(52,158,162);

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
      cccc = color(0);
    }
  }


  void onceB() {
    if ( staterev != dead ) {     
      move();
      fill(cccc);
      stroke(cccc);
      ellipse(xxUs, yyUs, radicalrev, radicalrev);
      bounce();
      
      stroke(0);
    }
    if (!which){
      goUp();
    }
  }
void goUp(){
  if (xxUs<220 && xxUs >250 && yyUs>440 && yyUs<400){
    duexx = abs(duexx);
    dueyy = abs(dueyy);
  }
}

  void bounce() {
    if (which) {
      if (xxUs < 160 ) 
        duexx = abs(duexx);
      if ( xxUs > 440 ) 
        duexx = -1 * abs(duexx);
      if (yyUs < 400 ) 
        dueyy = abs(dueyy);
      if ( yyUs > 540 ) 
        dueyy = -1 * abs(dueyy);
    } else {
      if (xxUs < 150) 
        duexx = abs(duexx);
      if ( xxUs > 250 ) 
        duexx = -1 * abs(duexx);
      if (yyUs < 300 ) 
        dueyy = abs(dueyy);
      if ( yyUs > 400 ) 
        dueyy = -1 * abs(dueyy);
    }
  }


  boolean isTouching( Ion other ) {
    return (sqrt( (xxUs-other.xxUs) * (xxUs-other.xxUs) + (yyUs-other.yyUs) * (yyUs-other.yyUs) ) < radicalrev + other.radicalrev);
  }
}