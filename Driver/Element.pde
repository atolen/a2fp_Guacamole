class Element{
  float z;
  float mass;
  String name;
  color c;
  
 /* Element(){
name ="bayle";
  }*/
  void setup(){
    background(53,227,170);
 
  //x = createFont("Ayuthaya", 35, true);
  }
  void draw() {
     PFont f = createFont("Ayuthaya",50,true);
  textFont(f, 25);
  fill(215,53,227);
  textAlign(CENTER);
  text("Periodic table of elements",width/2,150);
  textFont(f, 20);
  text("click for more info",width/2,175);
  }
    
    
  
  
}