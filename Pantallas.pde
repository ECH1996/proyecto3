//variables universales
int pantalla=0;
boolean huevitos1=false;
boolean huevitos2=false;
int coin1;
int coin2;
int turno=1;

//variables universales del fondo pantalla 
float a;
float x;
float y;
float r;
float dx;
float dy;

void pantallas(){

switch(pantalla){
  
//pantalla titulo del juego, historia y especificaciones
  
case 0:
    frameRate(10);
    smooth();
    fill(0, 60);
    rect(0, 0, width, height);
    fill(255,255,255);
    fill(230);
    r = random(3, 8);
    x = random(r, width-r);
    y = random(r, height-r);
    dx = map(noise(3.00+a), 700, 1, 700, 3);
    dy = map(noise(4.00+a), 700, 1, 700, 3);
    ellipse(x + dx, y + dy, r, r);
    a = a + 0.09;
    textAlign(CENTER);
    text("En sombras:\n\nThoth es un pequeño gato, aprendiz de la magia oscura. Su proposito sera volverse el mago mas poderoso y \nrespetado de todos, incluso volverse su rey.\nTu decides si ayudarlo en su proposito o derrotarlo",400,200);
    text("Presiona Q para continuar",600,650);
    
    if(key=='q'){
      pantalla=1;
    }
break;
 
//selección de personajes

case 1:
   frameRate(10);
   smooth();
   fill(#301A48);
   rect(0, 0, width, height);
   fill(255,255,255);
   fill(230);
   r = random(3, 8);
   x = random(r, width-r);
   y = random(r, height-r);
   dx = map(noise(3.00+a), 700, 1, 700, 3);
   dy = map(noise(4.00+a), 700, 1, 700, 3);
   ellipse(x + dx, y + dy, r, r);
   a = a + 0.09;
   text("Toth\nPresiona A",330,284);
   text("Presiona Z",330,310);
   text("Wizard\nPresiona B",160,284);
   text("Presiona X",160,310);
   text("PrincipeGato\nPresiona C",480,284);
   text("Presiona Y",480,310);
   text("Bestia\nPresiona D",275,515);
   text("Presiona V",275,540);
   text("Ellipc\nPresiona E",100,500);
   text("Presiona U",100,530);
  
   pushMatrix();
   scale(0.5);
   translate(350,0);
   toth.creatura();
   popMatrix(); 
  
   pushMatrix();
   scale(0.5);
   translate(20,0);
   wizard.creatura();
   popMatrix(); 
  
   pushMatrix();
   scale(0.5);
   translate(650,0);
   principeGato.creatura();
   popMatrix();
  
   pushMatrix();
   scale(0.5);
   translate(250,450);
   bestia.creatura();
   popMatrix();  
  
   pushMatrix();
   scale(0.5);
   translate(00,600);
   ellipc.creatura();
   popMatrix();
   
if(keyPressed){
switch (key){
case 'a':
  p1=toth; 
  coin1= 0;
  huevitos1=true;
break;

case 'b':
  p1=wizard; 
  coin1=1;
  huevitos1=true;
break;

case 'c':
  p1=principeGato;
  coin1=2;
  huevitos1=true;
break;
  
case 'd':
  p1=bestia;
  coin1=3;
  huevitos1=true;
break;

case 'e':
  p1=ellipc;
  coin1=4;
  huevitos1=true;
break;
 
case 'z':
  p2=toth;
  coin2=0; 
  huevitos2=true;
break;

case 'x':
  p2=wizard;
  coin2=1;
  huevitos2=true;
break;

case 'y':
  p2=principeGato; 
  coin2=2;
  huevitos2=true;
break;

case 'v':
  p2=bestia;
  coin2=3;
  huevitos2=true;
break;

case 'u':
  p2=ellipc; 
  coin2=4;
  huevitos2=true;
break;
 }
}
 
 
if(huevitos1==true&&huevitos2==true){
  pantalla=2;
}
break;
 
//pantalla de pelea
 
case 2:
   frameRate(10);
   smooth();
   fill(#1A483D);
   rect(0, 0, width, height);
   fill(255,255,255);
   fill(230);
   r = random(3, 8);
   x = random(r, width-r);
   y = random(r, height-r);
   dx = map(noise(3.00+a), 700, 1, 700, 3);
   dy = map(noise(4.00+a), 700, 1, 700, 3);
   ellipse(x + dx, y + dy, r, r);
   a = a + 0.09;
   text("Jugador 1 \nPresiona R",100,500);
   text(p1.vida,100,600);
   text("Jugador 2 \nPresiona W",600,500);
   text(p2.vida,600,600);
  
  switch(coin1){
    case 0:
     pushMatrix();
     scale(0.5);
     translate(0,0);
     toth.creatura();
     popMatrix(); 
   break;
 
   case 1:
     pushMatrix();
     scale(0.5);
     translate(0,0);
     wizard.creatura();
     popMatrix(); 
   break;
   
   case 2:
     pushMatrix();
     scale(0.5);
     translate(0,0);
     principeGato.creatura();
     popMatrix(); 
   break;
   
   case 3:
     pushMatrix();
     scale(0.5);
     translate(0,0);
     bestia.creatura();
     popMatrix(); 
   break;
   
   case 4:
    pushMatrix();
    scale(0.5);
    translate(0,100);
    ellipc.creatura();
    popMatrix(); 
   break;
  }
  
  switch(coin2){
    case 0:
    pushMatrix();
    scale(0.5);
    translate(600,0);
    toth.creatura();
    popMatrix(); 
    break;
    
    case 1:
   pushMatrix();
   scale(0.5);
   translate(600,0);
   wizard.creatura();
   popMatrix();
   break;
   
   case 2: 
   pushMatrix();
   scale(0.5);
   translate(600,0);
   principeGato.creatura();
   popMatrix(); 
  break;
  
  case 3:
   pushMatrix();
   scale(0.5);
   translate(700,0);
   bestia.creatura();
   popMatrix();
  break;
  
  case 4:
    pushMatrix();
    scale(0.5);
    translate(650,100);
    ellipc.creatura();
    popMatrix();
   break;
  }
  
  if(turno==1){
  if(key=='r'){
     p2.vida-=p1.ataque;
     turno=2;
   } 
  }
  
 if(turno==2){
  if(key=='w'){
    p1.vida-=p2.ataque;
    turno=1;
  }
 }
 
 if(p1.vida<=0||p2.vida<=1){
   pantalla=3;
 }
break;

//ultima pantalla

case 3: 
   background(0);
   fill(255);
   text("Fin del juego\n presiona borrar para reiniciar",160,250);
   text("Selecciona un nuevo personaje\n presiona enter",160,350);
   text("Volver a pelear?\n presiona 1",160,450);
  
  if(keyPressed){
   if(key==BACKSPACE){
     toth.vida=600;
     wizard.vida=900;
     principeGato.vida=600;
     bestia.vida=500;
     ellipc.vida=550;
     pantalla=0;
     huevitos1=false;
     huevitos2=false;
   }
   if(key == ENTER){
     toth.vida=600;
     wizard.vida=900;
     principeGato.vida=600;
     bestia.vida=500;
     ellipc.vida=550;
     pantalla=1;
     huevitos1=false;
     huevitos2=false;
   }
   if(key == '1'){
     toth.vida=600;
     wizard.vida=900;
     principeGato.vida=600;
     bestia.vida=500;
     ellipc.vida=550;
     pantalla=2;
     huevitos1=true;
     huevitos2=true;
   }
  }

break;
 }
}