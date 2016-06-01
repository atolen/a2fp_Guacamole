String[][] elements;
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
 // data = int(split(stuff[0],','));
}


void makeData() {
  Table table = loadTable("data.csv");
  for (int i = 0; i < elements.length; i++){
    for (int j =0; j < elements[0].length;j++){
      elements[i][j] = table.getString(i,j);
    }
  }
  // Load text file as a string
/*  String[] data = loadStrings("el_csv.txt");
  String[] dataM = split(data[0],'\n');
  String[][] finalMat = new String[118][4];
  for (int i = 0; i < dataM.length; i++){
    finalMat[i] = split(dataM[i],'\t');
  }
  elements = finalMat;
  */
    f = createFont("Ayuthaya",10,true);
  textFont(f, 10);
  fill(215,53,227);
  for (int i = 0; i < elements.length; i++){
    for (int j =0; j < elements[0].length;j++){
      text(elements[i][j],width/2 - 90,150);
    }
  }
      
}
  //String[] list = split(spaceswords, " ");
//for (int i = 0; i < list.length; i++) {
 // println(list[i] + " " + i);
//}

  // Convert string into an array of integers using ',' as a delimiter


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
 makeData();
  
  
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