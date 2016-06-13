class Redox {
  int startHeight;
  int changeFactor; //how much anode shrinks & cathode grows
  boolean reacted;
  Ion[] vamonos;
  String[][] metals;
  boolean selected;

  Redox() { 
    setup();
    //onceB();
  }

  void setup() {
    size(700, 700);
    background(255);
    selected = false;
    if (!selected) {
      text("Please Select Two Metals", width/2, 50);
      metalTable();
      if (mousePressed) {
        if (mouseX >= 30 && mouseX <= 195) {
          selected = true;
          int j = 0;
          for (int i = 90; i < 700; i+=20) {
            j++;
            if (mouseY >= i && mouseY <= i+20) {
              mASSive = j;
              System.out.println(mASSive);
            }
          }
        } else if (mouseX > 195 && mouseX <= 345) {

          selected = true;
          int j = 30;
          for (int i = 90; i < 700; i+=20) {
            j++;
            if (mouseY >= i && mouseY <= i+20) {
              mASSive = j; 
              System.out.println(mASSive);
            }
          }
        } else if (mouseX > 345 && mouseX <= 520) {
          selected = true;
          int j = 60;
          for (int i = 90; i < 700; i+=20) {
            j++;
            if (mouseY >= i && mouseY <= i+20) {
              mASSive = j; 
              System.out.println(mASSive);
            }
          }
        } else if (mouseX > 520 && mouseX <= 690) {
          selected = true;
          int j = 90;
          for (int i = 90; i < 700; i+=20) {
            j++;
            if (mouseY >= i && mouseY <= i+20) {
              mASSive = j; 
              System.out.println(mASSive);
            }
          }
        }
        if (neutrons == null) {
          neutrons = new Neutron[5];
          for (int i = 0; i < 5; i++) {
            neutrons[i] = new Neutron();
          }
        } 
        //mASSive = 80;
        if (toBeExploded == null) {
          toBeExploded = new ArrayList<Particle>();
          Particle butt = new Particle((int) random(width), (int) random(height), mASSive); 
          toBeExploded.add(butt);
        }
      }
    } else {
      reacted = false;
      startHeight = 100;
      changeFactor =  10;
      ellipseMode(DIAMETER);
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


      //salt bridge
      line(220, 300, 220, 200);
      line(240, 300, 240, 220);

      line(240, 220, 450, 220);
      line(220, 200, 470, 200);

      line(450, 220, 450, 300);
      line(470, 200, 470, 300);



      //on da wire
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
      text("(-)", 490, 385);
      text("(+)", 200, 385);
      //  Ion(int x, int y, float m, boolean precipitation, boolean spectator, color rara, boolean anI, boolean cathI, float ysp, float xsp) {
      startHeight -= changeFactor;
      if (vamonos == null) {
        vamonos = new Ion[75];
        for (int i = 0; i < vamonos.length; i++) {
          if ( i < 15) {
            //spectator cations - blue
            color x = color(135, 187, 242);
            vamonos[i] = new Ion((int) random(220, 240), (int) random(300, 400), 2, false, true, x, false, false, 1, 0, false);
          } else if (i < 30) {
            //spectator anions  - red
            color x = color(255, 3, 11);
            vamonos[i] = new Ion( (int) random(220, 240), (int) random(300, 400), 2, false, true, x, false, false, 1, 0, false);
          } else if (i < 45) {
            //Oxidizing species - at da anode, silver af
            color x = color(165, 165, 165);
            vamonos[i] = new Ion( (int) random(150, 250), (int) random(300, 310), 2, false, false, x, true, false, random(2), random(2), false );
          } else if ( i < 60) {
            //Reducing Species, at the cathode, gold
            color x = color(211, 177, 90);
            vamonos[i] = new Ion((int) random(450, 550), (int) random(300, 400), 2, false, false, x, false, true, random(2), random(2), false);
          }
          //ELECTRONSSSS
          else {
            color x = color(0);
            vamonos[i] = new Ion((int) random(180, 220), (int) random(300, 349), 1, false, false, x, false, false, 0, -.1, true);
          }
        }
      }
      fill(0);
      stroke(0);
      textFont(x, 20);
      text("Back to Home", 600, 50);
      noFill();
      rect(500, 20, 195, 50);
      if (mousePressed) {
        if (mouseX >= 500 && mouseX <= 680 && mouseY >= 20 && mouseY <=80) {
          redox = false;
          home = true;
          browse = false;
          printy = false;
        }
      }
    }
  }


  void getVoltage() {
  }
  void onceB() {
    for (int i = 0; i < vamonos.length; i++) {
      vamonos[i].onceB();
      vamonos[i].process();
      if (vamonos[i].isElectron) {
        if (vamonos[i].reachedCathode) {
          vamonos[i-15].xxUs = 480;
          vamonos[i-15].yyUs = 340;
          vamonos[i-15].duexx = 0;
          vamonos[i-15].dueyy = 0;
          vamonos[i-15].reachedCathode = true;
        }
      }
    }
  }

  void metalTable() {
    metals = new String[91][4];
    Table tale = loadTable("el_csv.csv");
    for (int i = 0; i < metals.length; i++) {
      for (int j =0; j < metals[0].length; j++) {
        metals[i][j] = tale.getString(i, j);
      }
    }
    textFont(x, 30);
    fill(107, 22, 245);
    textAlign(CENTER);
    text("These be the Elements", width/2, 30);

    myAss = createFont("Ayuthaya", 10, true);
    textFont(myAss, 10);
    //rect(width/2-175, height/2-75, 250, 450);
    fill(215, 53, 227);
    int g = 0;  
    for (int b = 1; b < 30; b++) {
      for (int j = 0; j < elements[0].length; j++) {
        text(elements[b][j], 30 + (j*40), 90+(g*20));
      }
      g++;
    }

    g = 0;
    for (int k = 30; k < 59; k++) {
      for (int l = 0; l < elements[0].length; l++) {
        text(elements[k][l], 195 + (l*40), 90+(g*20));
      }
      g++;
    }

    g = 0;
    for (int m = 59; m < 91; m++) {
      for (int n = 0; n < elements[0].length; n++) {
        text(elements[m][n], 345 + (n*40), 90+(g*20));
      }
      g++;
    }


    //lines to make this shit pretty
    stroke(17, 155, 245);
    line(10, 70, 690, 70);
    line(10, 70, 10, 690);
    line(690, 690, 10, 690);
    line(690, 690, 690, 70);

    for (int og = 70; og < 700; og += 20) {
      stroke(17, 155, 245);
      line(10, og, 690, og);
    }

    stroke(17, 155, 245);
    line(175, 70, 175, 690);
    line(330, 70, 330, 690);
    //line(400,70, 400, 690);
    line(500, 70, 500, 690);


    text("Back to Home", 600, 50);
    noFill();
    rect(550, 40, 130, 13);
    if (mousePressed) {
      if (mouseX >= 500 && mouseX <= 680 && mouseY >= 20 && mouseY <=80) {
        redox = false;
        home = true;
        browse = false;
        printy = false;
      }
    }
  } //prnt csv -- pd table
}