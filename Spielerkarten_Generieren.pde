boolean oben = true, tutorial=true, glocker=false, buttonmove=false, buttonmove2=false, karte_zeigen=false, karte_zeigen2=false, fertig=false, spamcheck=true;
PImage glocke, karte_hintergrund, bogen, spieler_1_gewonnen, spieler_2_gewonnen, background, kartenhintergrund_basis;
PImage karten[] = new PImage[17];
int spielerk1=0, spielerk2=0;
int summe1, summe2, glockensumme=0, zufall1, zufall2;
int kartenanzahl1=8, kartenanzahl2=8;
float x=400, x2=400;

PImage bg, glocke, hintergrundKarte;

//Spielfläche
int koordinaten_1[] = new int[8];
int koordinaten_2[] = new int [8];

void setup(){
  size(650,650);
  bg = loadImage("background.png");
  glocke = loadImage("glocke.png");
  kartenHintergrund = loadImage("karte_hintergrund.png");
  kartenhintergrund_basis = loadImage("kartenhintergrund_basis.png");
  
  for (int i = 1; i < 17; i++){
    karten[(i-1)] = loadImage("karte_"+i+".png");
  
}
}

void draw(){
  image(bg,0,0);
  image(glocke,290,290);
  image(kartenhintergrund_basis,280,20);
  image(kartenhintergrund_basis,280,470);
  
  for (int x = 470; x < 541; x=x+10){
    for (int j = 0; j < 8; j++){
      koordinaten_1[j] = x;
      koordinaten_2[j] = x;
      
      for (int k = koordinaten_1[j]; k < 8; k=k-2){
      
    }
    }
    
  }
}





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

void glocke(){
  if (glockeaktivoben==true && spamcheck==true){
    if (summe==5 || summe==15 || summe==45|| summe==65)
    glockeaktivoben==false;
  } else if
  kartenanzahl1= kartenanzahl1+1;
  kartenanzahl2= kartenanzahl2-1;
  if (glockeaktivunten==true && spamcheck==true){
   if (summe==5 || summe==15 || summe==45|| summe==65)
   glockeaktivunten=false;
 } else if 
 kartenanzahl1= kartenanzahl1-1;
 kartenanzahl2= kartenanzahl2-1;
}
