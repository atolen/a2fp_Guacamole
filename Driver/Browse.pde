//Graphic periodic table

class Browse {

  
  Browse() {
   setup(); 
  }
    
  
  void settings() {
   size(700,700); 
  }
  
  void setup() {
    background(0);
  }

  void draw() {
   for (int i = 1; i < elements.length; i++){                                    
    for (int j = 0; j < elements[0].length;j++){                                
        text(elements[i][j],width/2 + (j*100),250 + (i*100)); 
  }

}
  }
}