void seleccionP() {
  background(seleccion); 
  noStroke();
  fill(0, 0, 0, 126);      
  rect(0, 0, 900, 600);

  textFont(fontB);
  fill(255);
  textSize(18);
  text("H: Ayuda", 30, 595);
  
  if (key != BACKSPACE) {
    noStroke();
    fill(255, 254, 198, 126);   
    boton();  

    if (p1 == 1) 
      triangle(90, 90, -100, 550, 120, 550);
    else if (p1 == 2) 
      triangle(250, 90, 120, 600, 350, 600);
    else if (p1 == 3) 
      triangle(420, 90, 350, 600, 570, 600);
    else if (p1 == 4) 
      triangle(610, 90, 540, 520, 730, 520);
    else if (p1 == 5) 
      triangle(780, 90, 710, 600, 920, 600);
    
  }

  if (key != BACKSPACE) {
    noStroke();
    fill(255, 204, 229, 126);  
    boton2();

    if (p2 == 1) 
      triangle(110, 90, -100, 550, 120, 550);
    else if (p2 == 2) 
      triangle(270, 90, 120, 600, 350, 600);
    else if (p2 == 3) 
      triangle(440, 90, 350, 600, 570, 600);
    else if (p2 == 4) 
      triangle(630, 90, 540, 520, 730, 520);
    else if (p2 == 5) 
      triangle(810, 90, 710, 600, 920, 600);
    
  }

  println("Peronaje Uno: " + uno);
  println("Peronaje Dos: " + dos);
  
    if(key == 'h' || key == 'H'){
      fill(255);
      textSize(18);
      text("Teclas de Seleccion de Personajes", 20, 20);
      text("Jugador 1:  1  -  2  -  3  -  4  -  5", 30, 40);
      text("Jugador 2:  6  -  7  -  8  -  9  -  0", 30, 60);
    }

  if (p2 != 0 && p1 != 0) {    
    fill(255, 255, 255);
    pressStart = "LISTOS PARA LA BATALLA \n   Presiona BACKSPACE";

    if (p1 == p2) {
      textSize(18);
      text("No se puede seleccionar el mismo personaje", 610, 595);
      pressStart = " ";
    }

    textFont(fontB);
    text(pressStart, 330, 50);
  }

  if (key == BACKSPACE && p1 != p2)
    twice = false;
}

Personaje boton() {
  if (keyPressed) {
    switch(key) {
    case '1':
      //println("Has seleccionado a Andy");
      uno = new Kary();  
      p1 = 1;
      break;

    case '2':
      //println("Has seleccionado a Dali");
      uno = new Dali();
      p1 = 2;
      break;

    case '3':
      //println("Has seleccionado a Van Gogh");
      uno = new Gogh();
      p1 = 3;
      break;

    case '4':
      //println("Has seleccionado a Pollock");
      uno = new Pollock();
      p1 = 4;
      break;

    case '5':
      //println("Has seleccionado a Warhol");
      uno = new Warhol();
      p1 = 5;
      break;
    }
  }
  return uno;
}

Personaje boton2() {
  if (keyPressed) {
    switch(key) {
    case '6':
      //println("Has seleccionado a Andy");
      dos = new Kary();
      p2 = 1;
      break;

    case '7':
      //println("Has seleccionado a Dali");
      dos = new Dali();
      p2 = 2;
      break;

    case '8':
      //println("Has seleccionado a Van Gogh");
      strokeWeight(6);
      dos = new Gogh();
      p2 = 3;
      break;

    case '9':
      //println("Has seleccionado a Pollock");
      dos = new Pollock();
      p2 = 4;
      break;

    case '0':
      //println("Has seleccionado a Warhol");
      dos = new Warhol();
      p2 = 5;
      break;
    }
  }
  return dos;
}
