import java.util.ArrayList;
boolean reacted;
ArrayList<Particle> toBeExploded;
Neutron[] neutrons;
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
    }
    
      mASSive = 80;
      
    if (toBeExploded == null) {
       toBeExploded = new ArrayList<Particle>();
        Particle butt = new Particle(mASSive); 
        toBeExploded.add(butt);
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
    
    for (int j = 0; j < toBeExploded.size(); j++){
      toBeExploded.get(j).once();   
      toBeExploded.get(j).process();
    }
    
    for (int i = 0; i < neutrons.length; i++) {
      for (int j = 0; j < toBeExploded.size(); j++) {
       if (neutrons[i].isTouching(toBeExploded.get(j))){
    
        float xxx = toBeExploded.get(j).mass;
        
        if (xxx > 10) {
         toBeExploded.remove(j);
        float new1 = (float) random(xxx);
        float new2 = (float) (xxx - new1);
        Particle haha = new Particle(new1);
        Particle foofoo = new Particle(new2);
        toBeExploded.add(haha);
        toBeExploded.add(foofoo);
     
        }
     }
    }
  }
}


}