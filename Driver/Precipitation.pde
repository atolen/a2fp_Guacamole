//make a matrix with ionic compounds and their KspS

Ion[] salty;

//String[][] solubilities = new String [25][2];


class Precipitation {

  Precipitation() {
     setup();
     onceA();
  }
void setup() {
    size(700,700);
    background(255);
    stroke(100,95,95);
     fill(255);
    ellipse(300, 300, 150, 90);
   
    fill(153,213,252);
    ellipse(300, 500, 150, 90);
    noStroke();
    //rect(225,380,150,30);
    //rect(225,400,150,30);
    rect(150,400,300,90);
    noFill();
    stroke(0);
    line(150,300, 150,500);
    line(450,300, 450,500);
  
    noStroke();
    fill(255);
  
  
  if (salty == null) {
     salty = new Ion[50];
     for (int i = 0; i < salty.length; i++) {
        salty[i] = new Ion((int) random(225,375), (int) random(380,505), 2);  
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