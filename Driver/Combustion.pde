int molesHydroCarbon;
int molesOxy;
int moleswaterReleased;
int molesCO2Released;
boolean burned = false;
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
    size(700, 700);
    background(255);

    molesHydroCarbon = 5;
    xxcor = width/2;
    yycor = 300;
    if (!init) {
      bernShit = new Flame(xxcor+100, yycor);
      init = true;
    }
  }




  void once() {
    background(255);
    fill(142, 97, 26);
    noStroke();
    ellipse(xxcor-100, 300, 60, 120);
    noStroke();
    rect(xxcor-100, yycor-60, 200, 120);
    stroke(0);
    ellipse(xxcor+100, 300, 60, 120);
    text("BERN", 350, 500);
    if (mousePressed) {
      if (mouseX >= 300 && mouseX <= 400 && mouseY >= 450 && mouseY <= 500) {
        burned = true;
      } 
      else if (mouseX >= 500 && mouseX <= 680 && mouseY >= 20 && mouseY <=80) {
        burned = false;
        combustion = false;
        home = true;
        browse = false;
        printy = false;
      }
    }

    noFill();
    rect(300, 450, 100, 50);
    if (burned) {
      bernShit.process();
      bernShit.once();
    }
    fill(0);
    textFont(x, 20);
    text("Back to Home", 600, 50);
    noFill();
    stroke(0);
    rect(500, 20, 195, 50);
  }
}