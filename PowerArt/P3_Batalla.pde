//Kary
color rosa = color(255, 123, 154);
color azul = color(51, 51, 153);
color morado = color(204, 0, 255);
//Gogh
color amarillo = color(255, 255, 0);
color naranja = color(255, 102, 0);
color rojo = color(255, 0, 0);
color rojoI = color(204, 34, 0);
color cian = color(0, 255, 255);
//Pollock
color verde = color(0,255,0);
//Warhol
color rMexicano = color(245, 0, 135);

void batalla(){
  
  intro.close();
  batallaA.play();
    
  background(batalla);
  noStroke();
  fill(0, 0, 0, 90);      
  rect(0, 0, 900, 600);
  
  if(p1 == 1){ 
    fill(0);
    text("Artista: Kary",50,80);
    image(pKary,120,335);  
    vida(50,90,vidaP1*1.5,20,rosa,morado,azul);
    
    if(vidaP1 < 50)
      image(pKaryM,120,335); 
      
  }else if(p1 == 2){
    fill(0);
    text("Artista: Dali",50,80);    
    image(pDali,90,340); 
    vida(50,90,vidaP1*1.5,20,amarillo,naranja,azul);
    
    if(vidaP1 < 50)
      image(pDaliM,90,340);  
       
  }else if(p1 == 3){
    fill(0);
    text("Artista: Van Gogh",50,80);
    image(pGogh,120,340); 
    vida(50,90,vidaP1*1.5,20,rojo,naranja,amarillo);
    
    if(vidaP1 < 50)
      image(pGoghM,120,340);  
        
  }else if(p1 == 4){
    fill(0);
    text("Artista: Pollock",50,80);
    image(pPollock,120,355);
    vida(50,90,vidaP1*1.5,20,azul,amarillo,rojoI);
     
    if(vidaP1 < 50)  
      image(pPollockM,120,355); 
   
  }else if(p1 == 5){
    fill(0);
    text("Artista: Warhol",50,80);
    image(pWarhol,120,340);
    vida(50,90,vidaP1*1.5,20,cian,amarillo,rMexicano);
    
    if(vidaP1 < 50)  
      image(pWarholM,120,340); 
  }
   
  if(p2 == 1){ 
    fill(0);
    text("Artista: Kary",720,80);
    image(pKary,630,335); 
    vida(550,90,vidaP2*1.5,20,azul,morado,rosa);
    
    if(vidaP2 < 50)
      image(pKaryM,630,335);    
    
  }else if(p2 == 2){
    fill(0);
    text("Artista: Dali",725,80);
    image(pDali,600,340);
    vida(550,90,vidaP2*1.5,20,azul,naranja,amarillo);
    
    if(vidaP2 < 50)
      image(pDaliM,600,340);
      
  }else if(p2 == 3){ 
    fill(0);
    text("Artista: Van Gogh",667,80);
    image(pGogh,630,340);
    vida(550,90,vidaP2*1.5,20,amarillo,naranja,rojo);  
    
    if(vidaP2 < 50)
      image(pGoghM,630,340);
      
  }else if(p2 == 4){
    fill(0);
    text("Artista: Pollock",700,80);
    image(pPollock,630,355);
    vida(550,90,vidaP2*1.5,20,rojo,amarillo,azul);    
    
    if(vidaP2 < 50)
      image(pPollockM,630,355);
      
  }else if(p2 == 5){ 
    fill(0);
    text("Artista: Warhol",696,80);
    image(pWarhol,630,340);
    vida(550,90,vidaP2*1.5,20,rMexicano,amarillo,cian);
    
    if(vidaP2 < 50)
      image(pWarholM,630,340);
  }
  
  turno();
  barras();
  fill(0);
  text(vidaP1,50,50);
  text(vidaP2,810,50);
  
  
  if(turno == 1){   
    fill(0, 0, 0, 190);   
    ellipse(220,520,130,20);
     
    fill(255, 254, 198, 126);   
    triangle(-30, 90, 80, 530, 400, 530);
  }
  if(turno == 0){
    fill(0, 0, 0, 190);   
    ellipse(680,525,130,20);
    
    fill(255, 254, 198, 126);   
    triangle(930, 90, 500, 530, 820, 530);
  }
  
  textosP1(100,540);
  textosP2(600,540);
}

void barras(){
   //BARRA DE VIDA P1    
    noFill();
    stroke(0);
    strokeWeight(5);
    rect(50,90,300,20);
    noStroke();
    
    //BARRA DE VIDA P2    
    noFill();
    stroke(0);
    strokeWeight(5);
    rect(550,90,300,20);
    noStroke();
}

void turno(){
  if(turno == 1){  
      fill(0);
      text("Turno de P1",380,50);
      //¿PERDIO P1?
      if(vidaP1 <= 0){
        winner = true;
        winnerId = 2;
      }
      
      if(key == 'a'){
        vidaP2 = vidaP2 - uno.ataque1();
        turno = 0;
        key = 0;
      }
      else if(key == 's'){
        vidaP2 = vidaP2 - uno.ataque2();
        turno = 0;
        key = 0;
      }
      else if(key == 'd'){
        vidaP1 = vidaP1 + uno.cura();
        turno = 0;
        key = 0;  
        if(vidaP1 > 100){
          vidaP1 = 100;
          turno = 0;
          key = 0;
        }
      }
    }//Turno1 

   if(turno == 0){
      fill(0);
      text("Turno de P2",380,50);
      //¿PERDIO P1?
      if(vidaP2 <= 0){
         winner = true;
         winnerId = 1;
      }
      
      if(key == 'j'){
        vidaP1 = vidaP1 - dos.ataque1();
        turno = 1;
        key = 0;
      }
      else if(key == 'k'){
        vidaP1 = vidaP1 - dos.ataque2();
        turno = 1;
        key = 0;
      }
      else if(key == 'l'){
        vidaP2 = vidaP2 + dos.cura();
        turno = 1;
        key = 0;  
        if(vidaP2 > 100){
          vidaP2 = 100;
          turno = 1;
          key = 0;
        }
      }
    }//Turno2
}


void vida(int x, int y, float w, float h , color a1, color a2, color a3) {
beginShape();
  fill(a1);
    vertex(x,y);
    vertex(x,y+h);
  fill(a2);
    vertex(x+w,y+h);
    vertex(x+w,y);  
  fill(a3);
    vertex(x+w*2,y);  
    vertex(x+w*2,y+h);
    vertex(x+w,y+h);
    vertex(x+w,y);
endShape(CLOSE);
}

void textosP1(int x, int y){
  textSize(18);
  fill(255);
  if(p1 == 1){
      text("A: 'Adobe dejo de funcionar' (ATT: 20)", x, y);
      text("S: Lluvia de vectores (ATT: 10)", x, y+20);
      text("D: DESCUENTO WACOM!! (+? HP)", x, y+40);  
  }
  if(p1 == 2){
      text("A: Jirafa en llamas (ATT: 15)", x, y);
      text("S: Golpe de elefante (ATT: 15)", x, y+20);
      text("D: Persistencia de la memoria  (+? HP)", x, y+40); 
  }
  if(p1 == 3){
      text("A: Corte de oreja (ATT: 18)", x, y);
      text("S: Lineas estrelladas (ATT: 12)", x, y+20);
      text("D: Girasoles nostalgicos (+? HP)", x, y+40);
  }
  if(p1 == 4){
      text("A: Convergence (ATT: 20)", x, y);
      text("S: Lluvia de pintura (ATT: 10)", x, y+20);
      text("D: Bote de pintura nuevo (+? HP)", x, y+40);      
  }
  if(p1 == 5){
      text("A: Puntas Perforantes (ATT: 15)", x, y);
      text("S: Angry Marylin (ATT: 15)", x, y+20);
      text("D: Sopa Campbell's (+? HP)", x, y+40);    
  }

}

void textosP2(int x, int y){
  textSize(18);
  fill(255);
  if(p2 == 1){
      text("J: 'Adobe dejo de funcionar' (ATT: 20)", x, y);
      text("K: Lluvia de vectores (ATT: 10)", x, y+20);
      text("L: DESCUENTO WACOM!! (+? HP)", x, y+40);  
  }
  if(p2 == 2){
      text("J: Jirafa en llamas (ATT: 15)", x, y);
      text("K: Golpe de elefante (ATT: 15)", x, y+20);
      text("L: Persistencia de la memoria  (+? HP)", x, y+40); 
  }
  if(p2 == 3){
      text("J: Corte de oreja (ATT: 18)", x, y);
      text("K: Lineas estrelladas (ATT: 12)", x, y+20);
      text("L: Girasoles nostalgicos (+? HP)", x, y+40);
  }
  if(p2 == 4){
      text("J: Convergence (ATT: 20)", x, y);
      text("K: Lluvia de pintura (ATT: 10)", x, y+20);
      text("L: Bote de pintura nuevo (+? HP)", x, y+40);      
  }
  if(p2 == 5){
      text("J: Puntas Perforantes (ATT: 15)", x, y);
      text("K: Angry Marylin (ATT: 15)", x, y+20);
      text("L: Sopa Campbell's (+? HP)", x, y+40);    
  }

}
