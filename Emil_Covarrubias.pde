jugador toth;
jugador wizard;
jugador principeGato;
jugador bestia;
jugador ellipc;

jugador p1;
jugador p2;
  
void setup(){
  size(700,700);
  //declararción de "new" creatura
  toth = new jugador(100,600,0);  
  wizard = new  jugador(200,900,1);
  principeGato = new jugador(100,600,2);
  bestia = new jugador(100,500,3);
  ellipc = new  jugador(150,550,4);
}

void draw(){
  pantallas();
}