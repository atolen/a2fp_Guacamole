boolean reacted;
Neutron[] neutrons;
Particle toBeExploded;
int mASSive;

class Fission {

  Fission() {
    setup();
    once();
  }

  void setup() {
    //setup the page 
    size(700, 700);
    background(0);

    //initializations  
    reacted = false;
    //da neutron  
    if (neutrons == null) {
      neutrons = new Neutron[10];
      for (int i = 0; i < 10; i++) {
        neutrons[i] = new Neutron();
      }
      mASSive = 9;
      if (toBeExploded == null) {
        toBeExploded = new Particle(mASSive);
      }
    }
  }


  boolean finished() {
    return reacted;
  }


  void once() {
    background(0);
    //  ellipseMode(RADIUS);
    // fill(100, 255, 100);
    for (int i=0; i < neutrons.length; i++ ) {
      neutrons[i].once(); 
      neutrons[i].process();
    }
    toBeExploded.once();   
    toBeExploded.process();
  }
}