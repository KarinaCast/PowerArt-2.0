//PantallaGanador
void ganador(int id){
    background(batalla);   
    
    winnerA.play();
    batallaA.mute();   
    
    fill(0,0,0,150);
    rect(0,0,1050,600);
    fill(255);
    textFont(fontB);
    textSize(30); 
    text("El artista ganador es:",340,80);
    textSize(15);
    text("Presiona 'R' para revancha.",750,580);
    text("Presiona 'M' para salir.",15,580);
    //text("Presiona 'e' para salir.",5,590);
    textFont(fontA);
    textSize(55); 
    
    if(id == 1)
      personajeG();
    else
      personajeG2();
    
   strokeWeight(2);     
   for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
    drops[i].show();
   }
   
}

void personajeG(){
  if(p1 == 1){
      //pKary(420,405);
      image(pKary,370,375);  
      fill(255);
      text("{Artista Kary}",285,290);    
    }
    else if(p1 == 2){
      image(pDali,350,365);  
      fill(255);
      text("{Salvador Dali}",265,300);
    }
    else if(p1 == 3){
      image(pGogh,390,365);  
      fill(255);
      text("{Van Gogh}",330,300);
    }
    else if(p1 == 4){
      image(pPollock,380,365);  
      fill(255);
      text("{Jackson Pollock}",285,300);
    }
    else if(p1 == 5){
      image(pWarhol,380,365);  
      fill(255);
      text("{Andy Warhol}",285,300);
    }
}

void personajeG2(){    
    if(p2 == 1){
      //pKary(420,405);
      image(pKary,370,375);  
      fill(255);
      text("{Artista Kary}",285,290);    
    }
    else if(p2 == 2){
      image(pDali,350,365);  
      fill(255);
      text("{Salvador Dali}",265,300);
    }
    else if(p2 == 3){
      image(pGogh,390,365);  
      fill(255);
      text("{Van Gogh}",330,300);
    }
    else if(p2 == 4){
      image(pPollock,380,365);  
      fill(255);
      text("{Jackson Pollock}",285,300);
    }
    else if(p2 == 5){
      image(pWarhol,380,365);  
      fill(255);
      text("{Andy Warhol}",285,300);
    }
}
