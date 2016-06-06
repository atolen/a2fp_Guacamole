int energyReleased;
int neutronXSpeed;
int neutronYSpeed;
int elementAtomicNum;
int pos;

class Fission {
  
  Fission() {
     setup();
     draw();
  }

void setup() {
  size(700,700);
  pos = 100;
  background(0);
}

void draw() {
 fill(117,76,97);
 ellipse(width/2, pos, 100,100);
 ellipse(width/2, 400, 200,200);
 pos++;
 
}

void react() {
  while (pos < 400) {
    delay(20); 
    draw(); 
  }
  clear();
  
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

void mouseClicked() {
  
}
}