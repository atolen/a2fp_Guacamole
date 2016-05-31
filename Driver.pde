Element[] elements;
PFont f;
PFont x;
boolean react;
boolean browse;


void settings() {
  size(700,700);
}


void setup() {
  background(53,227,170);
  f = createFont("Ayuthaya",50,true);
  textFont(f, 50);
  fill(215,53,227);
  textAlign(CENTER);
  text("Let's Get Chemical!",width/2,150);
  x = createFont("Ayuthaya", 35, true);
  browse = false;
  react = false;
  data = int(split(stuff[0],','));
}


void makeData() {
  // Load text file as a string
  String[] data = loadStrings("data.txt");
  // Convert string into an array of integers using ',' as a delimiter
}

void draw() {
  textFont(x, 35);
  fill(107,22,245);
  textAlign(CENTER);
  text("Browse The Elements", width/2, 350);
  
  textFont(x, 35);
  fill(107,22,245);
  textAlign(CENTER);
  text("React!", width/2, 500);  
  
  noFill();
  rect(150,450,400,100);//React
  rect(100,300,500,100);//Browse  
 
  
  
  if (browse) {
  }
 
  if (react) {
   
  }
  
}


  void mouseClicked() {
    if (mouseX >= 150 && mouseX <= 550 && mouseY >= 450 && mouseY <= 550 ) {
       react = true; 
    }
    else if ( mouseX >= 100 && mouseX <= 600 && mouseY >= 300 && mouseY <= 400) {
       browse = true; 
    }
}
