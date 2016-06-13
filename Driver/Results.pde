class Results {
  String rxn;
  int tot;
  Results(String reaction, int part1,int part2) {
    rxn = reaction;
    tot = part1+part2;
    go();
    check();
  }
  void go() {
    x = createFont("Ayuthaya", 35, true);
    f = createFont("Ayuthaya", 50, true);
    background(53, 227, 170);
    fill(0);
    text("Your results are: ",200,200);
  }
  void check(){
    if (rxn.equals("fusion")){
      background(0);
    }
  }
}