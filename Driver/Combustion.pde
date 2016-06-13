import java.util.ArrayList;

int molesHydroCarbon;
int molesOxy;
int moleswaterReleased;
int molesCO2Released;
boolean burned = false;
Flame bernShit;
int xxcor;
int yycor;
boolean init = false;
ArrayList<Float> bombs;

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
    bombs = new ArrayList<Float>();
    for ( int i = xxcor+110; i > xxcor-130; i-=15 ) {
      bombs.add((float)i);
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
    noFill();
    rect(300, 450, 100, 50);
    bernClicked();
    if (burned) {
      bernShit.process();
      bernShit.once();
    }
    fill(0);
    stroke(0);
    textFont(x, 20);
    text("Back to Home", 600, 50);
    noFill();
    rect(500, 20, 195, 50);
    if (mousePressed) {
      if (mouseX >= 500 && mouseX <= 680 && mouseY >= 20 && mouseY <=80) {
        combustion = false;
        home = true;
        browse = false;
        printy = false;
      }
    }

    int tempX = (int)bernShit.xcor;  
    int tempY = (int)bernShit.ycor;
    for ( int i = 0; i < bombs.size(); i++ ) {
      if ( tempX < bombs.get(i) ) {
        fill(0);
        stroke(0);
        ellipse(bombs.get(i), 350, 29, 39);
        ellipse(bombs.get(i), 340, 29, 39);
        ellipse(bombs.get(i), 330, 29, 39);
        ellipse(bombs.get(i), 320, 29, 39);
        ellipse(bombs.get(i), 310, 29, 39);        
        ellipse(bombs.get(i), 300, 29, 39);
        ellipse(bombs.get(i), 290, 29, 39);        
        ellipse(bombs.get(i), 280, 29, 39);
        ellipse(bombs.get(i), 270, 29, 39);
        ellipse(bombs.get(i), 260, 29, 39);
        stroke(139,139,139);
      curve(bombs.get(i) - random(5), 260+ random(5), bombs.get(i) + random(20), 220+ random(5), bombs.get(i) - random(30) , 150+ random(5), bombs.get(i)+ random(5), 100+ random(5));
      }
      
    }
  }

  void bernClicked() {
    if (mousePressed && mouseX >= 300 && mouseX <= 400 && mouseY >= 450 && mouseY <= 500) {
      burned = true;
    }
  }
}