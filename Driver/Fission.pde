boolean reacted;
Neutron[] neutrons;
Particle toBeExploded;
int mASSive;

class Fission {

  Fission() {
    setup();
    draw();
  }

  void setup() {
    //setup the page 
    size(700, 700);
    background(0);

    //initializations  
    reacted = false;
    //da neutron  
    neutrons = new Neutron[10];
    for (int i = 0; i < 10; i++) {
      neutrons[i] = new Neutron();
    }
    mASSive = 9;
    toBeExploded = new Particle(mASSive);
  }

  void draw() {
    
  //  ellipseMode(RADIUS);
   // fill(100, 255, 100);
    for (int i=0; i < neutrons.length; i++ ) {
        neutrons[i].draw(); 
        neutrons[i].process();  
      }
    toBeExploded.draw();   
    toBeExploded.process();
  }
}




void reactshun() {
  
}