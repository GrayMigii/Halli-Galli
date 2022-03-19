boolean glockeaktivunten = false, rundenSieg_1 = false, rundenSieg_2 = false, bedingungPlus_1 = false,bedingungMinus_1 = false, bedingungPlus_2 = false,bedingungMinus_2 = false, oben = true, tutorial=true, glocker=false, buttonmove=false, buttonmove2=false, karte_zeigen=false, karte_zeigen2=false, fertig=false, spamcheck=true, glockeaktivoben=false, gloveaktivunten=false, spielerkartenziehen1=false, spielerkartenziehen2=false;
PImage glocke, karten_hintergrund, background, kartenhintergrund_basis;
int spielerkarten1=0, spielerkarten2=0;
int position1 = 280, position2 = 280, k = 0, j = 0, r = 0, s = 0, colorA_1 =0, colorB_1 =0, colorA_2 =0, colorB_2 =0, summe1, summe2, summe=0, zufall1, zufall2, endKoordinate_1, endKoordinate_2 ,anzeigeKarte1, anzeigeKarte2, koordinatenLimit_1 = 541, koordinatenLimit_2 = 541, position1, position2, anzahlAufgedeckt1, anzahlAufgedeckt2, koordinateX_1, koordinateX_2;
int kartenanzahl1=8, kartenanzahl2=8;
float x=400, x2=400;
String anzeige1, anzeige2;
boolean spielerwechsel=false;

PImage karten[] = new PImage[16];

int anzeigeKarten1 = new int [16];
int anzeigeKarten2 = new int [16];
int anfangsKoordinate_1 = new int [16];
int anfangsKoordinate_2 = new int [16];


//Spielfläche

void setup(){
  frameRate(144);
  size(650,650);
  background = loadImage("background.png");
  glocke = loadImage("glocke.png");
  karten_hintergrund = loadImage("karte_hintergrund.png");
  kartenhintergrund_basis = loadImage("kartenhintergrund_basis.png");
  
  for (int i = 1; i < 17; i++){
    karten[(i-1)] = loadImage("karte_"+i+".png");
  }
}


void draw(){

  grafikGrundlage();
  glocke1();
  glocke2();
  anzeige();
  mengeKartenUngedeckt();
  spielerkarten_1();
  spielerkarten_2();
  anzeigeKarten();
  kartenAnzeige1();
  kartenAnzeige2();
  
}

//Die Grundlage für alles grafische

void grafikGrundlage(){

  image(background,0,0);
  image(glocke,290,290);
  image(kartenhintergrund_basis,280,20);
  image(kartenhintergrund_basis,280,470);
  
}

//Anzeige für die kartenanzahl der jeweiligen Spieler

void anzeige(){
  
  if(spielerwechsel==false){
    colorA_1 = 0;
    colorB_1 = 0;
  }else{
    colorA_1 = 255;
    colorB_1 = 255;
  }

  if(spielerwechsel==true){
    colorA_2 = 0;
    colorB_2 = 0;
  }else{
    colorA_2 = 255;
    colorB_2 = 255;
  }

  textSize(50);

  if(kartenanzahl1 < 10){
    anzeige1 = "0" + Integer.toString(kartenanzahl1);
  }else{
    anzeige1 = Integer.toString(kartenanzahl1);
  }

  if(kartenanzahl2 < 10){
    anzeige2 = "0" + Integer.toString(kartenanzahl2);
  }else{
    anzeige2 = Integer.toString(kartenanzahl2);
  }

  fill(255,colorA_1,colorB_1);
  text(anzeige1,230,20);

  fill(255,colorA_2,colorB_2);
  text(anzeige2,230,470);
  
}

//Bestimmung der angezeigten aufgedeckten Karten

void anzeigeKarten(){
    
  if(spielerkartenziehen1 == true){
    if(spielerkarten1 < 5){
      anzeigeKarte1 = spielerkarten1;
    }else if(spielerkarten1 > 10 && spielerkarten1 < 15){
      anzeigeKarte1 = spielerkarten1 - 6;
    }else if(spielerkarten1 > 20 && spielerkarten1 < 25){
      anzeigeKarte1 = spielerkarten1 - 12;
    }else if(spielerkarten1 > 30 && spielerkarten1 < 35){
      anzeigeKarte1 = spielerkarten1 - 18;
    }
    anzeigeKarten1[r] = anzeigeKarte1;
    r++;
  }

  if(spielerkartenziehen2 == true){
    if(spielerkarten2 < 5){
      anzeigeKarte2 = spielerkarten2;
    }else if(spielerkarten2 > 10 && spielerkarten2 < 15){
      anzeigeKarte2 = spielerkarten2 - 6;
    }else if(spielerkarten2 > 20 && spielerkarten2 < 25){
      anzeigeKarte2 = spielerkarten2 - 12;
    }else if(spielerkarten2 > 30 && spielerkarten2 < 35){
      anzeigeKarte2 = spielerkarten2 - 18;
    }
    anzeigeKarten2[s] = anzeigeKarte2;
    s++;
  }

}

//Bestimmung der Anzahl der angezeigten ungedeckten Karten

void mengeKartenUngedeckt(){

  if(rundenSieg_1 == true){
    bedingungPlus_1 = true;
    bedingungMinus_2 = true;
    delete();
    }

  if(rundenSieg_2 == true){
    bedingungMinus_1 = true;
    bedingungPlus_2 = true;
    delete();
  }

  if(bedingungPlus_1 == true){
    koordinatenLimit_1 = koordinatenLimit_1 + (10*kartenanzahl1-((koordinatenLimit_1-471)/10));
  }else if(bedingungMinus_1 == true){
    koordinatenLimit_1 = koordinatenLimit_1 - (10*kartenanzahl1-((koordinatenLimit_1-471)/10));
  }

  if(bedingungPlus_2 == true){
    koordinatenLimit_2 = koordinatenLimit_2 + (10*kartenanzahl2-((koordinatenLimit_2-471)/10));
  }else if(bedingungMinus_2 == true){
    koordinatenLimit_2 = koordinatenLimit_2 - (10*kartenanzahl2-((koordinatenLimit_2-471)/10));
  }

}

void kartenAnzeige1(){

  for (int x1 = 470; x1 < koordinatenLimit_1; x1=x1+10){ 
    image(karten_hintergrund,x1,20);
    anfangsKoordinate_2[j] = x2;
    j++;
  }

  endKoordinate_1 = anfangsKoordinate_1[j]-260;

  if(spielerkartenziehen1 == true && anfangsKoordinate_1[j] > (endKoordinate_1 - 2)){
    anfangsKoordinate_1[j] = anfangsKoordinate_1[j]-2;
    koordinateX_1 = anfangsKoordinate_1j];
    image(karten_hintergrund,koordinateX_1,20);  
  }
  
  for(int p = 0; p < anzeigeKarten1.length; p++){
    if(anzeigeKarten[p] == 0){
      p=p-1;
      anzahlAufgedeckt1 = p;
      break;
    }
  }

  for(int l = 0; l < anzahlAufgedeckt1; l++){   
    image(karten[anzeigeKarten1[l]],position1,20);
    spielerwechsel=false;
  }

}

void kartenAnzeige2(){

  for (int x2 = 470; x2 < koordinatenLimit_2; x2=x2+10){ 
    image(karten_hintergrund,x2,470);
    anfangsKoordinate_2[k] = x2;
    k++;
  }

  endKoordinate_2 = anfangsKoordinate_2[k]-260;

  if(spielerkartenziehen2 == true && anfangsKoordinate_2[k] > (endKoordinate_2 - 2)){
    anfangsKoordinate_2[k] = anfangsKoordinate_2[k]-2;
    koordinateX_2 = anfangsKoordinate_2[k];
    image(karten_hintergrund,koordinateX_2,470);  
  }
  
  for(int q = 0; q < anzeigeKarten2.length; q++){
    if(anzeigeKarten2[q] == 0){
      q=q-1;
      anzahlAufgedeckt2 = q;
      break;
    }
  }

  for(int m = 0; m < anzahlAufgedeckt2; m++){   
    image(karten[anzeigeKarten2[m]],position2,470);
    spielerwechsel=false;
  }
}

void delete(){
  for(int n = 0; n < 16; n++){
    anzeigeKarten1[n] = 0;
    anzeigeKarten2[n] = 0; 
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
  if (kartenanzahl1<1){
    println("Spieler 2 hat gewonnen");
  }
  //Spieler 2 hat gewonnen
  if (kartenanzahl2<1){
    println("Spieler 1 hat gewonnen");
  }
}

void glocke1(){
  if (glockeaktivoben==true && glocker==true){
    if (summe==5 || summe==15 || summe==45|| summe==65){
    glockeaktivoben=false;
  kartenanzahl1 = kartenanzahl1 +1;
  kartenanzahl2 = kartenanzahl2 -1;
  rundenSieg_1 = true;
  glocker=false;
 } else if (glockeaktivoben==true && glocker==true){
  kartenanzahl1 = kartenanzahl1 -1;
  kartenanzahl2 = kartenanzahl2 +1;
  rundenSieg_2 = true;
   }
  }
 }

void glocke2(){
  if (glockeaktivunten==true && glocker==true){
   if (summe==5 || summe==15 || summe==45|| summe==65){
   glockeaktivunten=false;
  kartenanzahl1= kartenanzahl1 -1;
  kartenanzahl2= kartenanzahl2 +1;
  rundenSieg_2 = true;
  glocker= false;
 } else if (glockeaktivunten==true && glocker==true){
  kartenanzahl1 = kartenanzahl1 +1;
  kartenanzahl2 = kartenanzahl2 -1;
  rundenSieg_1 = true;
  }
 }
}




void keyPressed(){
  if (key=='j'|| key=='J'){
   glockeaktivoben=true;
  }
   
 if (key=='f'|| key=='F'){
   glockeaktivunten=true;
  }
  if (key=='a'||key=='A'){
    if( spielerwechsel==false){
   spielerkartenziehen1=true;
   spielerkarten_1();
    }
  }
  if (key=='ä'||key=='Ä'){
    if( spielerwechsel==true){
   spielerkartenziehen2=true;
   spielerkarten_2();
    }
  }
 
}
