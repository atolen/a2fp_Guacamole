
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
  boolean spec;
  boolean an;
  boolean cath;



  Ion(int x, int y, float m, boolean precipitation, boolean spectator, color rara, boolean anI, boolean cathI) {
    massS = m;
    xxUs = x;
    yyUs = y;
    which = precipitation;
    cccc = rara;
    cath = cathI;
    an = anI;
    spec = spectator;
    setup();
  }

  void setup() {
    radicalrev = massS;
    staterev = moving;

    duexx = random(10)*.05;
    dueyy = random(10)*.05 ;
  }

  void move() {
    if (spec) {
       if (yyUs > 200) {
         duexx = 0;
         dueyy = -1;
       }
       if (yyUs < 200) {
        duexx = 1;
        dueyy=0;
       }
       else if (yyUs > 200  && yyUs < 220) {
         duexx= 1;
         dueyy = 0;
       }
       if (xxUs > 470) {
        duexx= 0;
        dueyy = 1;
       }
       else if (xxUs > 450 && xxUs < 470) {
         duexx = 0;
         dueyy= 1;
       }
       else if (xxUs > 450 && xxUs < 470 && yyUs > 300) {
         dueyy = -1;
         duexx = 0;
       }
       if (yyUs > 350) {
        duexx = 0;
        dueyy = -1;
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
      cccc = color(0, 0, 0);
    }
  }


  void onceB() {
    if ( staterev != dead ) {     
      move();
      fill(cccc);
      stroke(cccc);
      ellipse(xxUs, yyUs, radicalrev, radicalrev);
      bounce();
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
    if (an) {
      if (xxUs < 150 || xxUs > 250) {
        duexx = -1 * duexx;
      }
      if (yyUs < 300 || yyUs > 400) {
        dueyy = -1 * dueyy; 
      }
    }
    
    else if (cath) {
      if (xxUs < 450 || xxUs > 550) {
        duexx = -1* duexx;
      }
      if (yyUs < 300 || yyUs > 400) {
        dueyy = -1 *dueyy; 
      }
    }
    
    else if (spec) {
    
 /*
      if (xxUs < 220 || xxUs > 470) {
          if (xxUs < 150 || xxUs > 550) {
           duexx *=-1; 
          }
          if (yyUs < 300 || yyUs > 400) {
           dueyy*=-1; 
          }
      }
      
      //going up
      if (xxUs < 250 && yyUs > 220) {
        if (xxUs > 240 || xxUs < 220) {
           duexx *= -1; 
        }
        if (yyUs > 400 || yyUs < 200) {
          dueyy *= -1;
        }
      }
      //left/right
     if (xxUs > 220 && xxUs < 450) {
        if (yyUs > 220 || yyUs < 200) {
           dueyy*=-1; 
        }
        if (xxUs < 220 || xxUs > 470) {
          duexx *= -1; 
        }
      }
      //other side
      if (xxUs < 470 && xxUs > 450) {
        if (yyUs < 200) {
           dueyy *= -1; 
        }
        
        if (xxUs < 450 || xxUs > 470) {
           duexx *= -1; 
        }
      }
      if (yyUs > 320) {
       dueyy*=-1; 
      }
    */  
    }
    
    else if (which) {
      if (xxUs < 150 || xxUs > 450) {
        duexx = -1 * duexx;
      }
      if (yyUs < 400 || yyUs > 550) {
        dueyy = -1 * dueyy; 
      }
    }
 
  }



  boolean isTouching( Ion other ) {
    return (sqrt( (xxUs-other.xxUs) * (xxUs-other.xxUs) + (yyUs-other.yyUs) * (yyUs-other.yyUs) ) < radicalrev + other.radicalrev);
  }
}