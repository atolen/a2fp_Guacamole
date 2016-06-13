class Ion {

  final static int moving = 0;
  final static int bump = 1;
  final static int dead = 3;
  final static int falling = 5;

  //cors
  float radicalrev;
  int staterev;
  float massS;
  float rr;
  float bb;
  float gg;
  float xxUs; //xcor
  float yyUs; //ycor
  float duexx;
  float dueyy;
  color cccc;
  boolean which;
  boolean spec;
  boolean an;
  boolean cath;
  boolean left = true;
  boolean isElectron;
  boolean reachedCathode = false;



  Ion(int x, int y, float m, boolean precipitation, boolean spectator, color rara, boolean anI, boolean cathI, float ysp, float xsp, boolean eminus) {
    massS = m;
    xxUs = x;
    yyUs = y;
    which = precipitation;
    cccc = rara;
    cath = cathI;
    an = anI;
    spec = spectator;
    duexx = xsp;
    dueyy = ysp;
    isElectron = eminus;
    setup();
  }

  void setup() {
    radicalrev = massS;
    staterev = moving;
    /*
    duexx = random(10)*.05;
     dueyy = random(10)*.05 ;
     */
  }

  void move() {

    if (isElectron) {
      if (xxUs < 162) {
        duexx = 0;
        dueyy = -.5;
      }  
      if (yyUs < 102) {
        duexx = .5;
        dueyy = 0;
      }
      if (xxUs > 537) {
        duexx = 0;
        dueyy = .5;
      }
      if (yyUs > 350) {
        duexx = -.5;
        dueyy = 0;
      }
      if (xxUs > 470 && xxUs < 500 && yyUs < 400 && yyUs > 300) {
        duexx= 0;
        dueyy = 0;
        color d = color(211, 177, 90);
        cccc = d;
        reachedCathode = true;
      }
    }


    if (spec) {    
      if (left) {
        if (yyUs < 210) {
          duexx = 1;
          dueyy=0;
        }
        if (xxUs > 460) {
          duexx= 0;
          dueyy = 1;
        }
        if (yyUs > 305) {
          duexx = 0;
          dueyy = -1;
          left = false;
        }
      } else if (!left) {
        if (yyUs < 210) {
          duexx = -1;
          dueyy = 0;
        }
        if (xxUs < 230) {
          duexx = 0;
          dueyy = 1;
        }
        if (yyUs > 305) {
          duexx = 0;
          dueyy = -1;
          left = true;
        }
      }
    }


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
      move();
    }
    if (staterev == falling) {
<<<<<<< HEAD
      duexx *= .01;
      dueyy *= .01;
      move(); 
=======
      duexx *= .00001;
      dueyy *= .00001;
      move();
>>>>>>> 6cdb1f733d7b682c7a0e809ae85db9c8667c323f
    }
  }


  void kill() {
    staterev = dead;
  }


  void onceB() {
    if ( staterev != dead ) {     
      move();
      fill(cccc);
      stroke(cccc);
      ellipse(xxUs, yyUs, radicalrev, radicalrev);
      bounce();
    } else {
      move();
      fill(cccc);
      stroke(cccc);
      ellipse(xxUs, yyUs, radicalrev, radicalrev);
      bounce();
    }
  }


  void bounce() {
    if (an) {
      if (xxUs < 150 || xxUs > 250) {
        duexx = -1 * duexx;
      }
      if (yyUs < 300 || yyUs > 400) {
        dueyy = -1 * dueyy;
      }
    } else if (cath) {
      if (xxUs < 450 || xxUs > 550) {
        duexx = -1* duexx;
      }
      if (yyUs < 300 || yyUs > 400) {
        dueyy = -1 *dueyy;
      }
    } else if (spec) {
      if (xxUs < 220 || xxUs > 250) {
        duexx = -1 * duexx;
      }
      if (xxUs > 300 && (xxUs < 450 || xxUs > 470)) {
        duexx = -1 * duexx;
      }
      if (yyUs < 220 && yyUs > 200)
        if (yyUs < 200 || yyUs > 400) {
          dueyy = -1 * dueyy;
        }
    } else if (which) {
      if (staterev == dead) {
        if (xxUs < 150 || xxUs > 450) {
          duexx = 0;
        }
        if (yyUs < 535 || yyUs > 550) {
          dueyy = 0;
        }
      } else if (staterev == falling) {
        if (xxUs < 150 || xxUs > 450) {
          duexx = -1 * duexx;
        }
        if (yyUs < 535 || yyUs > 545) {
          dueyy = -1 * dueyy;
        }
      } else {
        if (xxUs < 150 || xxUs > 450) {
          duexx = -1 * duexx;
        }
        if (yyUs < 400 || yyUs > 500) {
          dueyy = -1 * dueyy;
        }
      }
    }
  }



  boolean isTouching( Ion other ) {
    return (sqrt( (xxUs-other.xxUs) * (xxUs-other.xxUs) + (yyUs-other.yyUs) * (yyUs-other.yyUs) ) < radicalrev + other.radicalrev);
  }
}