int energyReleased;
int neutronXSpeed;
int neutronYSpeed;
int elementAtomicNum;
int pos; //what is pos?
boolean smoosh;

class Fission {
  
  Fission() {
    setup();
    draw();
  }
  
  void setup() {
    size(700,700);
    pos = 100;
    background(0);
    smoosh = false;
  }
  
  void draw() {
    fill(100,255,100);
    ellipse(pos,pos,pos,pos);
    //    ellipse(width/2, pos, 100,100);
    ellipse(width/2, 400, 200, 200);
    pos += 100;
  }

  void react() {
    while(pos < 400) {
      //delay(20); 
      draw();
      pos++;
    
  
      ellipse(width/2, 400, 150, 150);
      ellipse(width/2, 400, 50, 50);
      int lala = width/2;
      int poe = width/2;
      while (lala > 0 && poe < 700) {
        ellipse(lala, 400, 150,150);
        ellipse(poe, 400, 50,50);
        lala --;
        poe ++;
        delay(1000);
      }
    }
    smoosh = true;
  }

  void mouseClicked() {
  
  }
} //close Fission
