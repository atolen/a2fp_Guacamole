//make a matrix with ionic compounds and their KspS
String[][] tbl;
Ion[] salty;
Table ksp;

//String[][] solubilities = new String [25][2];


class Precipitation {

  Precipitation() {
    setup();
    onceA();
  }
  void setup() {
    size(700, 700);
    background(255);
    tbl = new String[70][2];
    Table ksp = loadTable("el_csv.csv");
    for (int i = 0; i < tbl.length; i++) {
      for (int j =0; j < tbl[0].length; j++) {
        tbl[i][j] = ksp.getString(i, j);
      }
    }
    stroke(100, 95, 95);
    fill(255);
    ellipse(300, 300, 150, 90);

    fill(153, 213, 252);
    ellipse(300, 500, 150, 90);
    noStroke();
    rect(150, 400, 300, 90);
    noFill();
    stroke(0);
    line(150, 300, 150, 500);
    line(450, 300, 450, 500);

    noStroke();
    fill(255);


    if (salty == null) {
      salty = new Ion[50];
      for (int i = 0; i < salty.length; i++) {
        salty[i] = new Ion((int) random(161, 441), (int) random(400, 540), 2);
      }
    }
  }

  void onceA() {
    for (int i = 0; i < salty.length; i++) {
      salty[i].onceB();
      salty[i].process();
    }
  }




  void once() {
  }
}