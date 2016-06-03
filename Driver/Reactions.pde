//Should just be a window where you click to pick which reaction you wanna do - word - OG
boolean fission;
boolean fusion;
boolean combustion;
boolean titration;
boolean redox;
boolean sol;



class Reactions {


  Reactions() {
    setup(); 
    draw();
  }

  void setup() {
    size(700, 700);
  }

  void draw() {
    background(0);
    //size(500,500);

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


    if (fission) {
     // Fission og = new Fission();
    }

    if (fusion) {
      //Fusion bss = new Fusion();
    }

    if (combustion) {
    //  Combustion at = new Combustion();
    }

    if (titration) {
      // Titrastion
    }

    if (redox) {
    }

    if (sol) {
    }
  }




  void mouseClicked() {
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
      sol = true;
    }
  }
}