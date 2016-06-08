boolean reacted;
Neutron[] neutrons;
Particle[] toBeExploded;
int particlesLeft;
int mASSive;



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
    mASSive = 10;
    particlesLeft = 9;
    toBeExploded = new Particle[mASSive];
    toBeExploded[0] = new Particle(mASSive);
  }

  void draw() {
     background(0);
    if (particlesLeft <= 1) {
        background(255);
        text("YOU EXPLODED EVERYTHING MOTHERFUCKERRRR", 200,200);
    }
  //  ellipseMode(RADIUS);
   // fill(100, 255, 100);
   else {
    for (int i=0; i < neutrons.length; i++ ) {
        neutrons[i].draw(); 
        neutrons[i].process();  
      }
    for (int i = 0; i < mASSive - particlesLeft - 1; i++) {  
      toBeExploded[i].draw();   
      toBeExploded[i].process();
    }
    
    for (int i = 0; i < neutrons.length; i++) {
      for (int j = 0; j < mASSive - particlesLeft; j++) { 
       if(neutrons[i].isTouching(toBeExploded[j])) {
           react(toBeExploded[j]);
        }
        }
    }
  }
  }
  
  void react(Particle fcuk) {
    float massy = fcuk.mass;
    if (massy != 1){
      int new1 = (int) random(massy);
      int new2 = (int) massy - new1;
      Particle daughter1 = new Particle(new1);
      Particle daughter2 = new Particle(new2);
      toBeExploded[mASSive - particlesLeft - 1] = daughter1;
      toBeExploded[mASSive - particlesLeft ] = daughter2;
      particlesLeft--;
    }
}