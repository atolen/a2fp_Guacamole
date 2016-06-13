Particle[] fuse ;
float mass1 = 0;
float mass2= 0;
int selectedFuse = 0;
boolean hit = false;
class Fusion {


  String inp = "";

  String y = "";
  Selection_FuseFiss fartz;

  Fusion() { 
    setup(); 
    once1();
  }

  void setup() {
    size(700, 700);
    background(0);

    //rtz = new Selection_FuseFiss(2);

    if (selectedFuse <= 2) {
      text("select two elements", 100, 100);
      makeData();   
      if (mousePressed) {
        if (mouseX >= 30 && mouseX <= 195) {
          selectedFuse++;
          int j = 0;
          for (int i = 90; i < 700; i+=20) {
            j++;
            if (mouseY >= i && mouseY <= i+20) {
              if (mass1 == 0) mass1 = j;
              else { 
                mass2= j;
              }
              System.out.println(mASSive);
            }
          }
        } else if (mouseX > 195 && mouseX <= 345) {

          selectedFuse++;
          int j = 30;
          for (int i = 90; i < 700; i+=20) {
            j++;
            if (mouseY >= i && mouseY <= i+20) {
              if (mass1 ==0) mass1 = j;
              else { 
                mass2= j;
              }
              //System.out.println(mASSive);
            }
          }
        } else if (mouseX > 345 && mouseX <= 520) {
          selectedFuse++;
          int j = 60;
          for (int i = 90; i < 700; i+=20) {
            j++;
            if (mouseY >= i && mouseY <= i+20) {
              if (mass1 == 0) mass1 = j;
              else { 
                mass2= j;
              }
              //  System.out.println(mASSive);
            }
          }
        } else if (mouseX > 520 && mouseX <= 690) {
          selectedFuse ++;
          int j = 90;
          for (int i = 90; i < 700; i+=20) {
            j++;
            if (mouseY >= i && mouseY <= i+20) {
              if (mass1 ==0) mass1 = j;
              else { 
                mass2= j;
              }
              //System.out.println(mASSive);
            }
          }
        }   
        if (selectedFuse >= 2) {
          if (fuse == null) {
            fuse = new Particle[2];
            Particle uno = new Particle((int) random(width), (int) random(height), mass1);
            Particle dos = new Particle((int) random(width), (int)  random(height), mass2);
            fuse[0] = uno;
            fuse[1] = dos;
          }
        }
        // rect(100, 100, 100, 100);
      }
    } else {
      background(0);
    }
  }



  void once1() {
    if (selectedFuse <= 2) {
      setup();
    } else {
      background(0);
      for (int i = 0; i < fuse.length; i++) {
        if (!hit) {
          fuse[i].once();
          fuse[i].process();
         
          if (fuse[0].isTouching(fuse[1])) {
          hit = true;
           }
      }
      }

      if (hit) {
        float d = fuse[0].radical + fuse[1].radical;
        if (d < 600) {
          int xcor = (int) fuse[0].xUs;
          int ycor = (int) fuse[0].yUs;
          Particle e = new Particle(xcor, ycor, d);
           fuse = new Particle[1];
          fuse[0] = e;
  
        }
      }
        
        
      
    
    fill(255);
    stroke(0);
    textFont(x, 20);
    //stroke(22, 22, 120);
    text("Back to Home", 600, 50);
    noFill();
    rect(500, 20, 195, 50);
    if (mousePressed) {
      if (mouseX >= 500 && mouseX <= 680 && mouseY >= 20 && mouseY <=80) {
        fuse = null;
        fusion = false;
        home = true;
        browse = false;
        printy = false;
      }
    }
  }
}


}