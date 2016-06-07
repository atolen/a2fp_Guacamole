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
        tobeExploded = new Particle(mASSive);
      }
    
      void draw() {
        ellipseMode(RADIUS);
        //before they have reached each other, the only things that matter are the high power neutron and the big element to be split
        while (smoosh == false) {
          if (nXcor >= bigElxcor) {
            smoosh = true;
            //bigElxcor = 0;
          }
          fill(100, 255, 100);
          ellipse(nXcor, nYcor, nSize, nSize);
          ellipse(bigElxcor, bigElycor, elsize, elsize);
          //delay(30);
          //clear();
          delay(50);
          nXcor = nXcor + neutronXspeed;
          nYcor = nYcor + neutronYspeed;
          bigElxcor = bigElxcor + bigElXspeed;
          bigElycor = bigElycor + bigElYspeed;
          //rect(10,10,10,10);
          //delay(50);
          bounce(); 
        }
          fill(100,12,155);
          ellipse(little1x, little1y, lil1size, lil1size);
          ellipse(little2x, little2y, lil2size, lil2size);
          delay(100);
          little1x = little1x + lil1x;
          text(little1x, 40,40);
          little1y = little1y + lil1y;
          little2x = little2x + lil2x;
          little2y = little2y + lil2y;
          delay(100);
          bounce();
    }
    
    
    void react() {
     /* while (pos < 400) {
        draw();
        pos++;}
    */
      }
      /*  ellipse(width/2, 400, 150, 150);
        ellipse(width/2, 400, 50, 50);
        int lala = width/2;
        int poe = width/2;
        while (lala > 0 && poe < 700) {
          ellipse(lala, 400, 150, 150);
          ellipse(poe, 400, 50, 50);
          lala --;
          poe ++;
          delay(1000);
        }
      }
      smoosh = true;
    }*/
    
    void bounce() {
      
      if (!smoosh) {
        if (nXcor < 0 ) 
          neutronXspeed = abs(neutronXspeed);
        if ( nXcor > width ) 
           neutronXspeed = -1 * abs(neutronXspeed);
        if (nYcor < 0 ) 
          neutronYspeed = abs(neutronYspeed);
        if ( nYcor > height ) 
          neutronYspeed = -1 * abs(neutronYspeed);  
      }
      else{
        if (little1x < 0) 
           lil1x = abs(lil1x); 
        if (little1x > width)
            lil1x = -1 * abs(lil1x);
        if (little1y < 0) 
            lil1y = abs(lil1y);
        if (little1y > height)
            lil1y = -1 * abs(lil1y);
        if (little2x < 0) 
           lil2x = abs(lil2x); 
        if (little2x > width)
            lil2x = -1 * abs(lil2x);
        if (little2y < 0) 
            lil2y = abs(lil2y);
        if (little2y > height)
            lil2y = -1 * abs(lil2y); 
      }
    }
    boolean collide(){
      return true;
    }
    }