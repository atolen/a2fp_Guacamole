//make a matrix with ionic compounds and their KspS
boolean but = false;
Ion[] salty;  



static String[][] floatsExpt(String[][] a) { //modify ksp values in table to actual nums
  String s;
  Float f;
  Float ex;
  for ( int i = 0; i < a.length; i++ ) {
    s = a[i][2];
    for ( int p = 0; p < s.length()-1; p++ ) {
      if ( s.substring(p, p+1).equals('E')) {
        f = Float.parseFloat(s.substring(0, p));
        ex = Float.parseFloat(s.substring(p+1, s.length()-1));
        a[i][3] = ((Float)(f * pow(10, ex))).toString();
        break;
      }
    } //close p loop
  } //close i loop
  return a;
}

//String[][] solubilities = new String [25][2];

class Precipitation {
  int consA;
  int consB;
  int volume;
  int ksp;
 // boolean but;


  Precipitation() {
    setup();
    onceA();
  }

  void setup() {
    size(700, 700);
    background(255);
    fill(0);
    stroke(0);
    textFont(x, 20);
    text("Back to Home", 600, 50);
    noFill();
    rect(500, 20, 195, 50);
    if (mousePressed) {
      if (mouseX >= 500 && mouseX <= 680 && mouseY >= 20 && mouseY <=80) {
        precipitation = false;
        home = true;
        browse = false;
        printy = false;
      }
    }

    stroke(0);
    fill(0);
       
      text("Precipitate", 470, 580);
      noFill();
      rect(400, 550, 200, 50);

     
      if (salty == null) {
        salty = new Ion[50];
        for (int i = 0; i < salty.length; i++) {
          color x = color(255, 23, 111);
          salty[i] = new Ion((int)random(161, 441), (int)random(370, 530), 2, true, false, x, false, false, 1, 1, false );
        }
      }

      //=========
      consA = 15;
      consB = 10;
      ksp = 100;
      volume = 1;
    }
  

  void onceA() {
    fill(153, 213, 252);
    noStroke();
    rect(150, 400, 300, 90);
    ellipse(300, 500, 150, 60);
    arc(300, 400, 150, 60, PI, 2*PI);
    stroke(0);
    arc(300, 500, 150, 60, 0, PI);

    ellipseMode(RADIUS);
    stroke(100, 95, 95);
    noFill();//(255);
    ellipse(300, 300, 150, 60);

    noFill();
    stroke(0);
    line(150, 300, 150, 500);
    line(450, 300, 450, 500);

    stroke(0);
    fill(0);
 
    text("put it in", 470, 580);
    noFill();
    rect(400, 550, 200, 50);
      
      
    precClicked();
    if (but) {   
      if ( fall() ) {
        for (int i = 0; i < salty.length; i++) {
          salty[i].staterev = Ion.falling;
          salty[i].xxUs = random(200,400);
          salty[i].yyUs = random(535,545);
          salty[i].duexx =0;
          salty[i].dueyy = 0;
        }
      } 
      else {
        for (int i = 0; i < salty.length; i++) {
          salty[i].kill(); //-----------------here it is
        }
      }
    }
    
    
      for (int i = 0; i < salty.length; i++) {
        salty[i].onceB();
        salty[i].process();
      }
   }

  boolean fall() {
    //rect(100, 100, 100, 100); --- works
    // text(consA*consB/volume, 100, 100);//100
    //text("\n", 100, 100);    
    //text(ksp, 150, 150);//100
    return (((consA * consB) / volume) > ksp);
  }

  //
  //based on Ksp table, square the Ksp to find the max concentration of each ion type in solution
  //if the concentration is less than, the particles disappear
  //if the concentrations are too high, particles get bigger and fall to the bottom

  String[][] getKSP() {
    String[][] tbl = new String[70][3]; //init KSP array
    Table ksp = loadTable("KspTable.csv");
    for (int i = 0; i < tbl.length; i++) { 
      for (int j = 0; j < tbl[0].length; j++) {
        tbl[i][j] = ksp.getString(i, j);
      }
    }

    tbl = floatsExpt(tbl);
    return tbl;
  }
  
  void precClicked() {
    if (mousePressed && mouseX >= 400 && mouseX <= 600 && mouseY >= 550 && mouseY <= 600) {
      but = true; 
    }
  }
}
  
  
  