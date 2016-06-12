int startHeight;
int changeFactor; //how much anode shrinks & cathode grows

boolean reacted;


class Redox {

  Redox() { 
    setup();
    draw();
  }

  void setup() {
    size(700, 700);
    background(255);
    reacted = false;
    startHeight = 100;
    changeFactor =  10;
  }


  void draw() {
    noFill();
    ellipse(200, 300, 100, 50);
    ellipse(500, 300, 100, 50);

    
    line(150, 300, 150, 400);
    line(450, 300, 450, 400);
    line(250, 300, 250, 400);
    line(550, 300, 550, 400);


    noFill();
    ellipse(200, 400, 100, 50);
    ellipse(500, 400, 100, 50);

    
    line(220, 300, 220, 200);
    line(240, 300, 240, 220);

    line(240, 220, 450, 220);
    line(220, 200, 470, 200);


    line(450, 220, 450, 300);
    line(470, 200, 470, 300);



    line(160, 300, 160, 100);
    line(165, 300, 165, 105);

    line(160, 100, 290, 100);
    line(165, 105, 290, 105);

    rect(290, 100, 100, 50);

    line(390, 100, 540, 100);
    line(390, 105, 535, 105);


    line(540, 100, 540, 300);
    line(535, 105, 535, 300);

    fill(200);
    rect(470, 300, 40, startHeight);

    fill(200);
    rect(180, 300, 40, startHeight);

    PFont fonty = createFont("Ayuthaya", 10, true);
    textFont(fonty, 12);
    fill(0);
    textAlign(CENTER);
    text("(-)",490,385);
    text("(+)",200,385);
    
    startHeight -= changeFactor;
    
  }


  void getVoltage() {
    //nernst
  }
}