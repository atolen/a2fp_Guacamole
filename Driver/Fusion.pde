Particle[] fuse ;
float mass1 = 0;
float mass2= 0;
int selectedFuse = 0;
boolean hit = false;
boolean selectedA = false;
boolean ugh = false;

class Fusion {

  Fusion() {
    setup();
    once();
  }

  void setup() {
    first = true;
    //setup the page 
    size(700, 700);
    background(0);  
    if (!selectedA) {
      text("Please Select An Element To Fuse With Itself", width/2, 50);
      makeData();
      if (mousePressed) {
        if (mouseX >= 30 && mouseX <= 195) {
          selectedA = true;
          int j = 0;
          for (int i = 90; i < 700; i+=20) {
            j++;
            if (mouseY >= i && mouseY <= i+20) {
              mass1 = j;
              mass2 = j;
            }
          }
        } else if (mouseX > 195 && mouseX <= 345) {

          selectedA = true;
          int j = 30;
          for (int i = 90; i < 700; i+=20) {
            j++;
            if (mouseY >= i && mouseY <= i+20) {
              mass1 = j;
              mass2 = j;
            }
          }
        } else if (mouseX > 345 && mouseX <= 520) {
          selectedA = true;
          int j = 60;
          for (int i = 90; i < 700; i+=20) {
            j++;
            if (mouseY >= i && mouseY <= i+20) {
              mass1 = j;
              mass2 = j;
            }
          }
        } else if (mouseX > 520 && mouseX <= 690) {
          selectedA = true;
          int j = 90;
          for (int i = 90; i < 700; i+=20) {
            j++;
            if (mouseY >= i && mouseY <= i+20) {
              mass1=j;
              mass2 = j;
            }
          }
        }

        //mASSive = 80;

        if (fuse == null) {
          fuse = new Particle[2];
          Particle butter = new Particle((int) random(width), (int) random(height), mass1); 
          Particle flour = new Particle((int) random(width), (int) random(height), mass2); 
          fuse[0] = butter;
          fuse[1] = flour;
        }
      }
    } else {
      //initializations  
      reacted = false;
    }//end of setup
  }//



  void once() {
    if (!selectedA) {
      //text("Please Select An Element", width/2, 50);
      makeData();
      if (mousePressed) {
        if (mouseX >= 30 && mouseX <= 195) {
          selectedA = true;
          int j = 0;
          for (int i = 90; i < 700; i+=20) {
            j++;
            if (mouseY >= i && mouseY <= i+20) {
              mass1 = j;
              mass2 = j;
            }
          }
        } else if (mouseX > 195 && mouseX <= 345) {

          selectedA = true;
          int j = 0;
          for (int i = 90; i < 700; i+=20) {
            j++;
            if (mouseY >= i && mouseY <= i+20) {
              mass1 = j;
              mass2 = j;
            }
          }
        } else if (mouseX > 345 && mouseX <= 520) {
          selectedA = true;
          int j = 0;
          for (int i = 90; i < 700; i+=20) {
            j++;
            if (mouseY >= i && mouseY <= i+20) {
              mass1 = j;
              mass2 = j;
            }
          }
        } else if (mouseX > 520 && mouseX <= 690) {
          selectedA = true;
          int j = 0;
          for (int i = 90; i < 700; i+=20) {
            j++;
            if (mouseY >= i && mouseY <= i+20) {
              mass1= j;
              mass2 = j;
            }
          }
        }     
        //mASSive = 80;
        //System.out.println(mASSive + 90);
        if (fuse == null) {
          fuse = new Particle[2];
          Particle butter = new Particle((int) random(width), (int) random(height), mass1); 
          Particle flour = new Particle((int) random(width), (int) random(height), mass2); 
          fuse[0] = butter;
          fuse[1] = flour;
        }
      }
    } else {
      background(0);
      if (first) {
        first = false;
      }
      if (!hit) {
        for (int j = 0; j < fuse.length; j++) {
          fuse[j].once();   
          fuse[j].process();
        }

        if (fuse[0].isTouching(fuse[1])) {
          hit = true;
        }
      }

      if (hit && !ugh) {
        float d = fuse[0].radical + fuse[1].radical;
        if (d < 300) {
          int xcor = (int) fuse[0].xUs;
          int ycor = (int) fuse[0].yUs;
          if(xcor < 35) xcor += 250;
          else{ xcor -= 250;}
          Particle e = new Particle(xcor, ycor, d);
          ugh = true;
          fuse[0] = e;
          fuse[1] = null;
          fuse[0].once();
          fuse[0].process();
        }
      }
       else if (hit && ugh){
         fuse[0].once();
         fuse[0].process(); 
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