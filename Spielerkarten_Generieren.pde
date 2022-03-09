boolean oben = true, tutorial=true, glocker=false, buttonmove=false, buttonmove2=false, karte_zeigen=false, karte_zeigen2=false, fertig=false, spamcheck=true;
PImage glocke, karte_hintergrund, bogen, spieler_1_gewonnen, spieler_2_gewonnen, background, kartenhintergrund_basis;
PImage karten[] = new PImage[17];
int spielerk1=0, spielerk2=0;
int summe1, summe2, glockensumme=0, zufall1, zufall2;
int kartenanzahl1=8, kartenanzahl2=8;
float x=400, x2=400;

PImage karten[] = new PImage[16];
int koordinaten_1[] = new int[8];
int koordinaten_2[] = new int [8];





//Spielkarten

void spielerkarten_1() {
int zufallszahl1;
zufallszahl1 = (int) Math.round(Math.random()*3+1);

switch (zufallszahl1) {
  case 1:
  spielerkarten1 = (int) Math.round(Math.random()*3+1);
  break;
  case 2:
  spielerkarten1 = (int) Math.round(Math.random()*3+11);
  break;
  case 3:
  spielerkarten1 = (int) Math.round(Math.random()*3+21);
  break;
  case 4:
  spielerkarten1 = (int) Math.round(Math.random()*3+31);
  break;
 }
}

void spielerkarten_2() {
 int zufallszahl2;
 zufallszahl2 = (int) Math.round(Math.random()*3+1);
 
 switch (zufallszahl2) {
   case 1:
   spielerkarten2 = (int) Math.round(Math.random()*3+1);
   break;
   case 2: 
   spielerkarten2 = (int) Math.round(Math.random()*3+11);
   break;
   case 3:
   spielerkarten2 = (int) Math.round(Math.random()*3+21);
   break;
   case 4:
   spielerkarten2 = (int) Math.round(Math.random()*3+31);
   break;
 }
} 

void summe(){
 summe=spielerkarten1+spielerkarten2;
}

void gewonnen(){
  //Spieler 1 hat gewonnen
  if (spielerkarten1==0){
    println("Spieler 1 hat gewonnen");
  }
  //Spieler 2 hat gewonnen
  if (spielerkarten2==0){
    println("Spieler 2 hat gewonnen");
  }
}

void glocke1(){
  if (glockeaktivoben==true && glocker==true)
    if (summe==5 || summe==15 || summe==45|| summe==65)
    glockeaktivoben=false;
  kartenanzahl1 = kartenanzahl1 +1;
  kartenanzahl2 = kartenanzahl2 -1;
  glocker=false;
 } else if (glockeaktivoben==true && spamcheck==true){
  kartenanzahl1 = kartenanzahl1 -1;
  kartenanzahl2 = kartenanzahl2 +1;
 }
}

void glocke2(){
  if (glockeaktivunten==true && glocker==true)
   if (summe==5 || summe==15 || summe==45|| summe==65)
   glockeaktivunten=false;
  kartenanzahl1= kartenanzahl1 -1;
  kartenanzahl2= kartenanzahl2 +1;
  glocker= false:
 } else if (glockeaktivunten==true && spamcheck==true){
  kartenanzahl1 = kartenanzahl1 +1;
  kartenanzahl2 = kartenanzahl2 
 }
}


void keyPressed(){
  if (key=='f'){
   glockeaktivoben=true;
   
 if (key=='l'){
   glockeaktivunten=true;
  }
 }
}
