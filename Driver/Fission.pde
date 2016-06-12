import java.util.ArrayList;
ArrayList<Particle> toBeExploded;
Neutron[] neutrons;
int mASSive;

class Fission {
  boolean reacted;  
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
      neutrons = new Neutron[5];
      for (int i = 0; i < 5; i++) {
        neutrons[i] = new Neutron();
      }
    }

    mASSive = 80;

    if (toBeExploded == null) {
      toBeExploded = new ArrayList<Particle>();
      Particle butt = new Particle((int) random(width), (int) random(height), mASSive); 
      toBeExploded.add(butt);
    }
  }



  boolean finished() {
    return reacted;
  }


  void once() {
    background(0);
    for (int i=0; i < neutrons.length; i++ ) {
      neutrons[i].once(); 
      neutrons[i].process();
    }

    for (int j = 0; j < toBeExploded.size(); j++) {
      toBeExploded.get(j).once();   
      toBeExploded.get(j).process();
    }

    for (int i = 0; i < neutrons.length; i++) {
      for (int j = 0; j < toBeExploded.size(); j++) {
        if (neutrons[i].isTouching(toBeExploded.get(j))) {

          float xxx = toBeExploded.get(j).mass;  
          if (xxx > 10) {
            int xcor =  (int) toBeExploded.get(j).xUs ;
            int ycor = (int) toBeExploded.get(j).yUs;

            toBeExploded.remove(j);

            float new1 = (float) random(xxx);
            float new2 = (float) (xxx - new1);
            Particle haha = new Particle(xcor, ycor, new1);
            Particle foofoo = new Particle(xcor, ycor, new2);
            toBeExploded.add(haha);
            toBeExploded.add(foofoo);
          }
        }
      }
    }
    fill(255);
    stroke(255);
    textFont(x, 20);
    text("Back to Home", 600, 50);
    noFill();
    rect(500, 20, 195, 50);
    if (mousePressed) {
      if (mouseX >= 500 && mouseX <= 680 && mouseY >= 20 && mouseY <=80) {
        neutrons = null;
        toBeExploded = null;
        fission = false;
        home = true;
        browse = false;
        printy = false;
      }
    }
  }
}