//Should just be a window where you click to pick which reaction you wanna do



void setup() {
  size(700,700);
  x = propro.x;
  
}


void draw() {
    background(0);
    //size(500,500);
    
    textFont(x,40);
    textAlign(CENTER);
    text("Please Select A Reaction Type", width/2, 150);
    
    textFont(x,30);
    textAlign(CENTER);
    text("Bombs Away (Fission)", width/2, 225);
    
     textFont(x,30);
    textAlign(CENTER);
    text("Star Formation (Fusion)", width/2, 300);
    
     textFont(x,30);
    textAlign(CENTER);
    text("Burn Down For What (Combustion)", width/2, 375);
    
     textFont(x,30);
    textAlign(CENTER);
    text("Basic Hoes (Titration)", width/2, 450);
    
    textFont(x,30);
    textAlign(CENTER);
    text("Battery After 10th (Redox Reactions)", width/2, 525);
    
    textFont(x,30);
    textAlign(CENTER);
    text("Salty af (Precipitation)", width/2, 600);
}