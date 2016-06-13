static boolean lala = false;
class Selection_FuseFiss {


  int el;
  int ctr;
  int aa;
  int bb;
  int total;

  Selection_FuseFiss(int e) {
    ctr = e;
    // rect(100, 100, 100, 100);
    setup();
    // makeData();
  }

  void setup() {
    size(700, 700);
    background(255);
    aa=0;
    bb=0;
    if (ctr == 2) {
      total = Integer.parseInt(elements[aa+1][3])+Integer.parseInt(elements[bb+1][3]);
    } else if (ctr == 1) {
      total = Integer.parseInt(elements[aa+1][3]);
    }
  }



  void makeData() {
    el = 0;
    textFont(x, 30);
    fill(107, 22, 245);
    textAlign(CENTER);
    text("Choose two elements! ", width/2, 30);

    myAss = createFont("Ayuthaya", 10, true);
    textFont(myAss, 10);
    //rect(width/2-175, height/2-75, 250, 450);
    fill(215, 53, 227);
    while (ctr > 0) {
      if (mousePressed) {
        ctr --;
        int g = 0;  
        for (int b = 1; b < 30; b++) {
          for (int j = 0; j < elements[0].length; j++) {
            if (mouseX >= 30 + (j*40) && mouseY>= 50+(g*20)&&mouseX <= 40+ 30 + (j*40) && mouseY<= 90+(g*20)) {
              el = b-1;
            }
          }
          g++;
        }

        g = 0;
        for (int k = 30; k < 59; k++) {
          for (int l = 0; l < elements[0].length; l++) {
            if (mouseX >= 195 + (l*40) && mouseY>= 50+(g*20)&&mouseX <= 40+ 195+ (l*40) && mouseY<= 90+(g*20)) {
              el = k-1;
            }
          }
          g++;
        }

        g = 0;
        for (int m = 59; m < 89; m++) {
          for (int n = 0; n < elements[0].length; n++) {
            if (mouseX >= 345 + (n*40) && mouseY>= 50+(g*20)&&mouseX <= 40+ 345 + (n*40) && mouseY<= 90+(g*20)) {
              el = m-1;
            }
          }
          g++;
        }

        g = 0;
        for (int o = 89; o < elements.length; o++) {
          for (int p = 0; p < elements[0].length; p++) {
            if (mouseX >= 520 + (p*40) && mouseY>= 50+(g*20)&&mouseX <= 40+ 520 + (p*40) && mouseY<= 90+(g*20)) {
              el = o-1;
            }
          }
          g++;
        }
        if (ctr == 1) {
          aa=el;
        }
        if (ctr == 2) {
          bb = el;
        }
      }
      System.out.println(aa + " " + bb);
    }


    fission = false;
    fusion = true;
    Calculation calc = new Calculation(aa, bb, false);


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
    for (int m = 59; m < 89; m++) {
      for (int n = 0; n < elements[0].length; n++) {
        text(elements[m][n], 345 + (n*40), 90+(g*20));
      }
      g++;
    }

    g = 0;
    for (int o = 89; o < elements.length; o++) {
      for (int p = 0; p < elements[0].length; p++) {
        text(elements[o][p], 520 + (p*50), 90+ (g*20));
      }
      g++;
    }   //lines to make this shit pretty
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
    line(500, 70, 500, 690);
  }
  // if (bb==-1 && aa!=0) {
  //  fission = true;
  //  Calculation calc = new Calculation(aa, bb, true);
  //} else if (bb!=0) {
}