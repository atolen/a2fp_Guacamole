//make a matrix with ionic compounds and their Ksps


//String[][] solubilities = new String [25][2];


class Precipitation {

  Precipitation() {
     setup();
     //once();
  }
void setup() {
  size(700,700);
  background(255);
    stroke(100,95,95);
    noFill();
  ellipse(300, 300, 150, 110);
  fill(153,213,252);
  ellipse(300, 450, 150, 110);
  noStroke();
  rect(225,380,150,30);
   rect(225,400,150,30);
    rect(225,420,150,30);
  noFill();
  stroke(0);
  line(225,300, 225,450);
  line(375,300, 375,450);
  
  noStroke();
  fill(255);
  ellipse(300, 385, 150, 50);
}


}