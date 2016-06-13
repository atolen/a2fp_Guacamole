class Results {
  String rxn;
  Results(String reaction) {
    rxn = reaction;
    go();
  }
  void go() {
    x = createFont("Ayuthaya", 35, true);
    f = createFont("Ayuthaya", 50, true);
    background(53, 227, 170);
    fill(0);
    text("Your results are: ",200,200);
  }
}