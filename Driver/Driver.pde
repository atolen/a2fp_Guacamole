//state booleans
boolean home;
boolean react;
boolean browse;
//reaction types
boolean combustion;
boolean fusion;
boolean fission;
boolean precipitation;
boolean redox;
boolean titration;
int printEl;
boolean printy;
//FONTS
PFont f;
PFont x;
PFont myAss;
//periodic table
String[][] elements;

//reaction type booleans

void settings() {
  size(700,700);
}

void setup() {
  home = true;
  browse = false;
    react = false;
    combustion = false;
  fusion = false;
  fission = false;
  precipitation = false;
  redox = false;
  titration = false;
  printEl = 0;
  printy = false;
  x = createFont("Ayuthaya", 35, true);
  f = createFont("Ayuthaya", 50, true);
  background(53, 227, 170);
}


void draw() {
  if (home) {
    background(53, 227, 170);
    fill(215, 53, 227);
      textAlign(CENTER);
      textFont(f,50);
      text("Let's Get Chemical!", width/2, 150);
    
      textFont(x, 35);
      fill(107, 22, 245);
      textAlign(CENTER);
      text("Browse The Elements", width/2, 350);

      textFont(x, 35);
      fill(107, 22, 245);
      textAlign(CENTER);
      text("React!", width/2, 500);  

      noFill();
      rect(150, 450, 400, 100);//React
      rect(100, 300, 500, 100);//Browse 

  }
  if (react) {
    background(0);

      textFont(x, 40);
      textAlign(CENTER);
      text("Please Select A Reaction Type", width/2, 150);

      noFill();
      stroke(255, 52, 52);
      rect(20, 190, 660, 55);
      textFont(x, 30);
      textAlign(CENTER);
      text("Bombs Away (Fission)", width/2, 225);

      noFill();
      stroke(255, 52, 52);
      rect(20, 260, 660, 55);
      textFont(x, 30);
      textAlign(CENTER);
      text("Star Formation (Fusion)", width/2, 300);

      noFill();
      stroke(255, 52, 52);
      rect(20, 340, 660, 55);
      textFont(x, 30);
      textAlign(CENTER);
      text("Burn Down For What (Combustion)", width/2, 375);

      noFill();
      stroke(255, 52, 52);
      rect(20, 410, 660, 55);
       textFont(x, 30);
      textAlign(CENTER);
      text("Basic Hoes (Titration)", width/2, 450);

      noFill();
      stroke(255, 52, 52);
      rect(20, 490, 660, 55);
      textFont(x, 30);
      textAlign(CENTER);
      text("Battery After 10th (Redox Reactions)", width/2, 525);

      noFill();
      stroke(255, 52, 52);
      rect(20, 570, 660, 55);
      textFont(x, 30);
      textAlign(CENTER);
      text("Salty af (Precipitation)", width/2, 600);
  }
  if (combustion){
    Combustion helloBonjour = new Combustion();
    helloBonjour.react();
  }
  if (titration) {
    Titration bombTheWorld = new Titration();
    bombTheWorld.react();
  }
  if (redox) {
    Redox lemonade = new Redox();
    lemonade.react();
  }
  if (fusion) {
    Fusion girlOnFire = new Fusion();
    girlOnFire.react();
  }
  if (fission) {
    Fission plutonium = new Fission();
    plutonium.react();
  }
  if(precipitation) {
    Precipitation loveInvincible = new Precipitation();
    loveInvincible.react();
  }
  if(browse) {
    background(255);
    makeData();
    //rect(10,70,165,20);
  }
  if (printy) {
    printElement(printEl);
  }

}


void mouseClicked() {
  //mouseClicked() will change based on which page is displayed
  if (home) {
    if (mouseX >= 150 && mouseX <= 550 && mouseY >= 450 && mouseY <= 550 ) {
        react = true;
      }
      else if ( mouseX >= 100 && mouseX <= 600 && mouseY >= 300 && mouseY <= 400) {
        browse = true;
      }
  }
  //===========================
  if (react) {
    if (mouseX >= 20 && mouseX <= 680 && mouseY >= 190 && mouseY <= 245 ) {
          fission = true;
      } 
      else if ( mouseX >= 20 && mouseX <= 680 && mouseY >= 260 && mouseY <= 315) {
          fusion = true;
      }   
      else if ( mouseX >= 20 && mouseX <= 680 && mouseY >= 340 && mouseY <= 395) {
          combustion = true;
      } 
      else if ( mouseX >= 20 && mouseX <= 680 && mouseY >= 410 && mouseY <= 465) {
          titration = true;
      } 
      else if ( mouseX >= 20 && mouseX <= 680 && mouseY >= 490 && mouseY <= 545) {
          redox = true;
      } 
      else if ( mouseX >= 20 && mouseX <= 680 && mouseY >= 570 && mouseY <= 625) {
            precipitation = true;
      }
  }
  if (browse) {
    
   //rect(10,70,165,20);
   if (mouseX>= 10 && mouseX <= 175 && mouseY >= 70 && mouseY <= 90) {
     printEl = 1;
     printy = true;
   }   
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 90 && mouseY <= 110) {
     printEl = 2;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 110 && mouseY <= 130) {
     printEl = 3;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 130 && mouseY <= 150) {
     printEl = 4;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 150 && mouseY <= 170) {
     printEl = 5;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 170 && mouseY <= 190) {
     printEl = 6;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 190 && mouseY <= 210) {
     printEl = 7;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 210 && mouseY <= 230) {
     printEl = 8;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 230 && mouseY <= 250) {
     printEl = 9;
     printy = true;
   }  
    else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 250 && mouseY <= 270) {
     printEl = 10;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 270 && mouseY <= 290) {
     printEl = 11;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 290 && mouseY <= 310) {
     printEl = 12;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 310 && mouseY <= 330) {
     printEl = 13;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 330 && mouseY <= 350) {
     printEl = 14;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 350 && mouseY <= 370) {
     printEl = 15;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 370 && mouseY <= 390) {
     printEl = 16;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 390 && mouseY <= 410) {
     printEl = 17;
     printy = true;
   } 
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 310 && mouseY <= 430) {
     printEl = 18;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 330 && mouseY <= 450) {
     printEl = 19;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 350 && mouseY <= 470) {
     printEl = 20;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 370 && mouseY <= 490) {
     printEl = 21;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 390 && mouseY <= 510) {
     printEl = 22;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 310 && mouseY <= 530) {
     printEl = 23;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 330 && mouseY <= 550) {
     printEl = 25;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 350 && mouseY <= 570) {
     printEl = 26;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 370 && mouseY <= 590) {
     printEl = 27;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 390 && mouseY <= 610) {
     printEl = 28;
     printy = true;
   }  
   else if (mouseX>= 10 && mouseX <= 175 && mouseY >= 310 && mouseY <= 630) {
     printEl = 29;
     printy = true;
   }  
   
  }
  //==========================

}


void printElement(int h) {
  background(0);
  textFont(x, 45);
  fill(107, 22, 245);
  textAlign(CENTER);
  
  for (int u = 0; u < elements[h].length; u++) {
   text(elements[h][u],100 + (140*u), 250);
 }
}


void makeData() {
  textFont(x, 30);
  fill(107, 22, 245);
  textAlign(CENTER);
  text("Click on an Element for More info:", width/2, 30);
  
  elements = new String[118][4];
  Table table = loadTable("el_csv.csv");
  for (int i = 0; i < elements.length; i++) {
    for (int j =0; j < elements[0].length; j++) {
      elements[i][j] = table.getString(i, j);
    }
  }
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
    }
  
  //lines to make this shit pretty
  stroke(17,155,245);
  line(10,70,690,70);
  line(10,70,10,690);
  line(690,690,10,690);
  line(690,690,690,70);
  
  for(int og = 70; og < 700 ; og += 20) {
      stroke(17,155,245);
      line(10,og,690,og);
  }
  
  stroke(17,155,245);
  line(175,70, 175, 690);
  line(330,70, 330, 690);
  //line(400,70, 400, 690);
  line(500,70, 500, 690);
  
  } //prnt csv -- pd table
  