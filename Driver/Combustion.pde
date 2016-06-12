int molesHydroCarbon;
int molesOxy;
int moleswaterReleased;
int molesCO2Released;
boolean burned;
Flame bernShit;
int xxcor;
int yycor;
boolean init = false;


class Combustion {

  
  Combustion() {
     setup();
     once();
  }

  void setup() {
    size(700,700);
    background(255);
      
    burned = false;
    molesHydroCarbon = 5;
    xxcor = width/2;
    yycor = 300;
    if (!init) {
     bernShit = new Flame(xxcor+100,yycor+50);
     init = true;
    }    
  }
  
  void once() {
    background(255);
    fill(142,97,26);
    noStroke();
    ellipse(xxcor-100,300,60,120);
    noStroke();
    rect(xxcor-100,yycor-60,200,120);
    stroke(0);
    ellipse(xxcor+100, 300, 60, 120);
    bernShit.process();
    bernShit.once();
  }



}