Particle[] fuse ;
float mass1;
float mass2;
String inp = "";


class Fusion {
  
  
 Fusion() { 
    setup(); 
    once1();  
 }
 
void setup() {
  size(700,700);
  background(0);
 // text("Please Enter two atomic numbers for the nuclei you want to fuse", width/2, 300);
  
   //text(inp, 100,100);
  mass1 = 30;
  mass2 = 40;
  if (fuse == null) {
    fuse = new Particle[2];
    Particle uno = new Particle(mass1);
    Particle dos = new Particle(mass2);
    fuse[0] = uno;
    fuse[1] = dos;
  }
  

}


void once1() {
  background(0);
  for (int i = 0; i < fuse.length; i++) {
     fuse[i].once();
     fuse[i].process();
     
     if (i ==0) {
      if (fuse[i].isTouching(fuse[i+1])) {
          float d = fuse[i].mass + fuse[i+1].mass;
          if (d < 350) {
          Particle f = new Particle(d);
          Particle e = new Particle(d);
          fuse[0] = e;
          fuse[1] = f;
          }
      }
     }

     else if (i == 1 ) {
      if (fuse[i].isTouching(fuse[i-1])) {
          float d = fuse[i].mass + fuse[i-1].mass;
          if (d < 350) {
           Particle f = new Particle(d);
           Particle e = new Particle(d);
          fuse[0] = f;
          fuse[1] = e;
          }
      }
     }

       
     }
    }

  


void keyPressed() {
  inp += key;
}
}