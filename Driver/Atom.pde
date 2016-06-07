class Atom {
  
  int xCor;
  int yCor;
  int xVel; //in range [-25,-1] ^ [1,25] -- moves left if negative, right if positive
  int yVel; //^^
  
  double initMass; //atomic mass
  double energyCreated; //e=mc^2 ?? ~0.1% of mass is conv. to energy
  int neutronsEmitted; //2 or 3, randomly selected
  
  boolean reacted;

  Atom daughter1;
  Atom daughter2;
  
}
