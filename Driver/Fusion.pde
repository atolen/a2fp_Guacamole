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
    text("select two elements", 100, 100);
    //rtz = new Selection_FuseFiss(2);

    if (selectedFuse < 2) {
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
        /*
    results = false;
         background(0);
         if (hit) {
         fill(255) ;
         text("new element", 100, 100);
         }
         */

        //hit = false;
        //mass1 = 30;
        //mass2 = 40;
        if (fuse == null) {
          fuse = new Particle[2];
          Particle uno = new Particle((int) random(width), (int) random(height), mass1);
          Particle dos = new Particle((int) random(width), (int)  random(height), mass2);
          fuse[0] = uno;
          fuse[1] = dos;
        }

        // rect(100, 100, 100, 100);
      }
    }
  }
  void once1() {
    if (fartz != null) {
      //rtz = new Selection_FuseFiss(2);
      // int elementNum1 = fartz.aa;
      //int elementNum2 = fartz.bb;
      //Calculation calc = new Calculation(fartz.aa, fartz.bb, false);
      background(0);
      for (int i = 0; i < fuse.length; i++) {
        if (!hit) {
          fuse[i].once();
          fuse[i].process();
        } else { 
          fartz.makeData();
        }
        if (fuse[0].isTouching(fuse[1])) {
          hit = true;
        }


        if (hit) {
          float d = fuse[0].radical + fuse[1].radical;
          if (d < 100) {
            int xcor = (int) fuse[0].xUs;
            int ycor = (int) fuse[0].yUs;
            Particle e = new Particle(xcor, ycor, d);
            Particle f = e;
            fuse[0] = e;
            fuse[1] = f;

            for (int j = 1; j < elements.length; j++) {
              if (Integer.parseInt(elements[j][2]) == (int) d) {
                y+= elements[j][2];
              }
            }
          }
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