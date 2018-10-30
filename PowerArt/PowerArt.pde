import ddf.minim.*;

Minim minim;
AudioPlayer intro, batallaA, winnerA;

Drop[] drops = new Drop[100];
PFont fontA, fontB, fontC, fontD;
Boolean onlyOnce = true, twice = true, personaje = true, 
        winner = false;
PImage seleccion, batalla, pKary, pDali, pGogh, 
       pPollock, pWarhol;
       
PImage pKaryM, pDaliM, pGoghM, pPollockM, pWarholM;

int p1, p2;
String pressStart;
int turno = 1, winnerId, contador = 0;
int vidaP1 = 100;
int vidaP2 = 100;

Personaje uno;
Personaje dos;

void setup(){
   size(900,600, P2D);
   for(int i = 0; i < drops.length; i++){
    drops[i] = new Drop();
  }
   fontD = createFont("data/fonts/Brush.ttf", 50);
   fontA = createFont("data/fonts/Beauty.ttf", 80);
   fontB = createFont("data/fonts/well.ttf", 30);
   fontC = createFont("data/fonts/Diomata.otf", 20);

   seleccion = loadImage("data/fondo/seleccion.jpg");
   batalla = loadImage("data/fondo/pelea.jpg");
   pKary = loadImage("data/personajes/PKary.png");
   pDali = loadImage("data/personajes/PDali.png");
   pGogh = loadImage("data/personajes/PGogh.png");
   pPollock = loadImage("data/personajes/PPollock.png");
   pWarhol = loadImage("data/personajes/PWarhol.png");
   
   pKaryM = loadImage("data/personajes/PKaryM.png");
   pDaliM = loadImage("data/personajes/PDaliM.png");
   pGoghM = loadImage("data/personajes/PGoghM.png");
   pPollockM = loadImage("data/personajes/PPollockM.png");
   pWarholM = loadImage("data/personajes/PWarholM.png");
   
  minim = new Minim(this);
  intro = minim.loadFile("data/canciones/Desires.mp3");
  batallaA = minim.loadFile("data/canciones/TakeABow.mp3");
  winnerA = minim.loadFile("data/canciones/Treasure.mp3");
}

void draw(){
  if(onlyOnce)
    inicio();

  if(onlyOnce == false)
    seleccionP();
  
  if(twice == false && uno != null && dos != null)
    batalla();
  
  if(winnerId != 0 && winner == true)
    if(winnerId == 1){
      ganador(1);
    }
    if(winnerId == 2){
      ganador(2);
    }
    
    
  if(key == 'r'){
    procesos();
  }
  
  if(key == 'm'){
    exit();
  }
  

}

void procesos(){
    winner = false;
    twice = true;
    uno = null;
    dos = null;
    vidaP1 = 100;
    vidaP2 = 100;
    winnerId = 0;
    p1 = 0;
    p2 = 0;
    key = 0;
    batallaA.unmute();
}
