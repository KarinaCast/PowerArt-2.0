class Drop {
  float x = random(width);
  float y = random(-200, -100);
  float yspeed = random(4, 50);

  void fall() {
    y = y + yspeed;

    if (y > height) {
      y = random(-200, -100);
    }
  }
  
  void show() {
    color aColor = color( random(255), random(255), random(255) ); 
    stroke (aColor);
    line(x, y, x, y+20);
  }
}

void inicio() {
  intro.play();
  background(0);
  fill(255);
  textFont(fontA);
  text("{Power Art}", 230, 320);

  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
    drops[i].show();
  }
  
  textSize(20);
  text("Presiona ENTER",370,580);
  textSize(12);
  text("Presiona  'H'  para   leer   la   historia",330,540);
  if(key == ENTER){
    onlyOnce = false;
  }
    
  if(key == 'h')
    historia();
  
  
}

void historia(){
  noStroke();
  fill(0, 0, 0, 200);      
  rect(0, 0, 900, 600);
  
  textFont(fontB);
  textSize(30);
  fill(255);
  text("Un dia comun, Kary una artista digital, visitaba el museo de arte en la Ciudad",30,85);
  text("de Mexico, cuando de repente, cobraron vida los artistas: Van Gogh, Andy",30,125);
  text("Warhol, Jackson Pollock, Salvador Dali, que despues de apreciar las obras,",30,165);
  text("defienden que su tecnica es la mejor de todas... ",30,205);
  textFont(fontD);
  text("Una batalla definira quien es el mejor.",95,400);
  
  textFont(fontA);
  textSize(20);
  text("Presiona ENTER",370,580);
}
