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
      bombs.add(i+random(2));
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
        ellipse(bombs.get(i)+random(10), 350, 25, 28);
        ellipse(bombs.get(i)+random(10), 340, 25, 28);
        ellipse(bombs.get(i)+random(10), 330, 25, 28);
        ellipse(bombs.get(i)+random(10), 320, 25, 28);
        ellipse(bombs.get(i)+random(10), 310, 25, 28);        
        ellipse(bombs.get(i)+random(10), 300, 25, 28);
        ellipse(bombs.get(i)+random(10), 290, 25, 28);        
        ellipse(bombs.get(i)+random(10), 280, 25, 28);
        ellipse(bombs.get(i)+random(10), 270, 25, 28);
        ellipse(bombs.get(i)+random(10), 260, 25, 28);
      }
    }
  }

  void bernClicked() {
    if (mousePressed && mouseX >= 300 && mouseX <= 400 && mouseY >= 450 && mouseY <= 500) {
      burned = true;
    }
  }
}